import http from "http";
import fs from "fs";
import { WebSocketServer, WebSocket } from "ws";

const PORT = 3001;

// Story 1: HTTP server that serves public/index.html
const server = http.createServer((req, res) => {

  fs.readFile("./public/index.html", (err, data) => {
    if (err) {
      res.writeHead(500, { "Content-Type": "text/plain" });
      return res.end("Server error");
    }
    res.writeHead(200, { "Content-Type": "text/html" });
    res.end(data);
  });
});

// Story 2: WebSocket server attached to the HTTP server
const wss = new WebSocketServer({ server });

// Send a message to every connected client
function broadcast(message) {
  const payload = JSON.stringify(message);
  wss.clients.forEach((client) => {
    if (client.readyState === WebSocket.OPEN) {
      client.send(payload);
    }
  });
}

// Story 3: connection listener
wss.on("connection", (socket, req) => {
  // Story 4: read the username from the query string and announce the join
  const username = new URL(req.url, "http://localhost").searchParams.get(
    "username",
  );
  broadcast({ type: "system", text: `${username} joined` });

  // Story 5: relay chat messages to everyone, sender included
  socket.on("message", (data) => {
    const { username, text } = JSON.parse(data.toString());
    broadcast({ type: "chat", username, text });
  });

  // Story 6: announce the departure to the remaining clients
  socket.on("close", () => {
    broadcast({ type: "system", text: `${username} left` });
  });
});

// Story 7: start the server
server.listen(PORT, () => {
  console.log(`Chat server running at http://localhost:${PORT}`);
});