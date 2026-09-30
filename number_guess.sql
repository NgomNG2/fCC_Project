--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 240);
INSERT INTO public.games VALUES (2, 1, 303);
INSERT INTO public.games VALUES (3, 2, 654);
INSERT INTO public.games VALUES (4, 2, 986);
INSERT INTO public.games VALUES (5, 1, 790);
INSERT INTO public.games VALUES (6, 1, 207);
INSERT INTO public.games VALUES (7, 1, 230);
INSERT INTO public.games VALUES (8, 3, 385);
INSERT INTO public.games VALUES (9, 3, 222);
INSERT INTO public.games VALUES (10, 4, 74);
INSERT INTO public.games VALUES (11, 4, 186);
INSERT INTO public.games VALUES (12, 3, 660);
INSERT INTO public.games VALUES (13, 3, 193);
INSERT INTO public.games VALUES (14, 3, 532);
INSERT INTO public.games VALUES (15, 5, 406);
INSERT INTO public.games VALUES (16, 5, 405);
INSERT INTO public.games VALUES (17, 6, 704);
INSERT INTO public.games VALUES (18, 6, 66);
INSERT INTO public.games VALUES (19, 5, 19);
INSERT INTO public.games VALUES (20, 5, 673);
INSERT INTO public.games VALUES (21, 5, 925);
INSERT INTO public.games VALUES (22, 7, 677);
INSERT INTO public.games VALUES (23, 7, 819);
INSERT INTO public.games VALUES (24, 8, 287);
INSERT INTO public.games VALUES (25, 8, 147);
INSERT INTO public.games VALUES (26, 7, 425);
INSERT INTO public.games VALUES (27, 7, 989);
INSERT INTO public.games VALUES (28, 7, 313);
INSERT INTO public.games VALUES (29, 9, 31);
INSERT INTO public.games VALUES (30, 9, 798);
INSERT INTO public.games VALUES (31, 10, 19);
INSERT INTO public.games VALUES (32, 10, 747);
INSERT INTO public.games VALUES (33, 9, 701);
INSERT INTO public.games VALUES (34, 9, 250);
INSERT INTO public.games VALUES (35, 9, 251);
INSERT INTO public.games VALUES (36, 11, 884);
INSERT INTO public.games VALUES (37, 11, 642);
INSERT INTO public.games VALUES (38, 12, 471);
INSERT INTO public.games VALUES (39, 12, 8);
INSERT INTO public.games VALUES (40, 11, 733);
INSERT INTO public.games VALUES (41, 11, 141);
INSERT INTO public.games VALUES (42, 11, 832);
INSERT INTO public.games VALUES (43, 13, 226);
INSERT INTO public.games VALUES (44, 13, 160);
INSERT INTO public.games VALUES (45, 14, 799);
INSERT INTO public.games VALUES (46, 14, 723);
INSERT INTO public.games VALUES (47, 13, 996);
INSERT INTO public.games VALUES (48, 13, 289);
INSERT INTO public.games VALUES (49, 13, 441);
INSERT INTO public.games VALUES (50, 15, 132);
INSERT INTO public.games VALUES (51, 15, 474);
INSERT INTO public.games VALUES (52, 16, 814);
INSERT INTO public.games VALUES (53, 16, 306);
INSERT INTO public.games VALUES (54, 15, 168);
INSERT INTO public.games VALUES (55, 15, 280);
INSERT INTO public.games VALUES (56, 15, 737);
INSERT INTO public.games VALUES (57, 17, 747);
INSERT INTO public.games VALUES (58, 17, 319);
INSERT INTO public.games VALUES (59, 18, 924);
INSERT INTO public.games VALUES (60, 18, 391);
INSERT INTO public.games VALUES (61, 17, 559);
INSERT INTO public.games VALUES (62, 17, 164);
INSERT INTO public.games VALUES (63, 17, 842);
INSERT INTO public.games VALUES (64, 19, 856);
INSERT INTO public.games VALUES (65, 19, 758);
INSERT INTO public.games VALUES (66, 20, 192);
INSERT INTO public.games VALUES (67, 20, 883);
INSERT INTO public.games VALUES (68, 19, 733);
INSERT INTO public.games VALUES (69, 19, 200);
INSERT INTO public.games VALUES (70, 19, 549);
INSERT INTO public.games VALUES (71, 21, 97);
INSERT INTO public.games VALUES (72, 21, 825);
INSERT INTO public.games VALUES (73, 22, 259);
INSERT INTO public.games VALUES (74, 22, 253);
INSERT INTO public.games VALUES (75, 21, 306);
INSERT INTO public.games VALUES (76, 21, 733);
INSERT INTO public.games VALUES (77, 21, 481);
INSERT INTO public.games VALUES (78, 23, 1001);
INSERT INTO public.games VALUES (79, 23, 775);
INSERT INTO public.games VALUES (80, 24, 236);
INSERT INTO public.games VALUES (81, 24, 858);
INSERT INTO public.games VALUES (82, 23, 50);
INSERT INTO public.games VALUES (83, 23, 667);
INSERT INTO public.games VALUES (84, 23, 824);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1790778686765');
INSERT INTO public.users VALUES (2, 'user_1790778686764');
INSERT INTO public.users VALUES (3, 'user_1790778785499');
INSERT INTO public.users VALUES (4, 'user_1790778785498');
INSERT INTO public.users VALUES (5, 'user_1790778890968');
INSERT INTO public.users VALUES (6, 'user_1790778890967');
INSERT INTO public.users VALUES (7, 'user_1790779061756');
INSERT INTO public.users VALUES (8, 'user_1790779061755');
INSERT INTO public.users VALUES (9, 'user_1790779073443');
INSERT INTO public.users VALUES (10, 'user_1790779073442');
INSERT INTO public.users VALUES (11, 'user_1790779281688');
INSERT INTO public.users VALUES (12, 'user_1790779281687');
INSERT INTO public.users VALUES (13, 'user_1790779335205');
INSERT INTO public.users VALUES (14, 'user_1790779335204');
INSERT INTO public.users VALUES (15, 'user_1790779872840');
INSERT INTO public.users VALUES (16, 'user_1790779872839');
INSERT INTO public.users VALUES (17, 'user_1790780388669');
INSERT INTO public.users VALUES (18, 'user_1790780388668');
INSERT INTO public.users VALUES (19, 'user_1790780478116');
INSERT INTO public.users VALUES (20, 'user_1790780478115');
INSERT INTO public.users VALUES (21, 'user_1790780520899');
INSERT INTO public.users VALUES (22, 'user_1790780520898');
INSERT INTO public.users VALUES (23, 'user_1790780523749');
INSERT INTO public.users VALUES (24, 'user_1790780523748');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 84, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 24, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

