--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    total_guesses integer NOT NULL,
    user_id integer
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

INSERT INTO public.games VALUES (1, 426, 45);
INSERT INTO public.games VALUES (2, 178, 45);
INSERT INTO public.games VALUES (3, 659, 46);
INSERT INTO public.games VALUES (4, 674, 46);
INSERT INTO public.games VALUES (5, 711, 45);
INSERT INTO public.games VALUES (6, 19, 45);
INSERT INTO public.games VALUES (7, 157, 45);
INSERT INTO public.games VALUES (8, 17, 28);
INSERT INTO public.games VALUES (9, 895, 47);
INSERT INTO public.games VALUES (10, 744, 47);
INSERT INTO public.games VALUES (11, 221, 48);
INSERT INTO public.games VALUES (12, 733, 48);
INSERT INTO public.games VALUES (13, 735, 47);
INSERT INTO public.games VALUES (14, 717, 47);
INSERT INTO public.games VALUES (15, 493, 47);
INSERT INTO public.games VALUES (16, 355, 49);
INSERT INTO public.games VALUES (17, 859, 49);
INSERT INTO public.games VALUES (18, 567, 50);
INSERT INTO public.games VALUES (19, 428, 50);
INSERT INTO public.games VALUES (20, 586, 49);
INSERT INTO public.games VALUES (21, 400, 49);
INSERT INTO public.games VALUES (22, 837, 49);
INSERT INTO public.games VALUES (23, 660, 51);
INSERT INTO public.games VALUES (24, 584, 51);
INSERT INTO public.games VALUES (25, 83, 52);
INSERT INTO public.games VALUES (26, 553, 52);
INSERT INTO public.games VALUES (27, 464, 51);
INSERT INTO public.games VALUES (28, 983, 51);
INSERT INTO public.games VALUES (29, 113, 51);
INSERT INTO public.games VALUES (30, 837, 53);
INSERT INTO public.games VALUES (31, 410, 53);
INSERT INTO public.games VALUES (32, 472, 54);
INSERT INTO public.games VALUES (33, 318, 54);
INSERT INTO public.games VALUES (34, 499, 53);
INSERT INTO public.games VALUES (35, 383, 53);
INSERT INTO public.games VALUES (36, 689, 53);
INSERT INTO public.games VALUES (37, 983, 55);
INSERT INTO public.games VALUES (38, 647, 55);
INSERT INTO public.games VALUES (39, 937, 56);
INSERT INTO public.games VALUES (40, 834, 56);
INSERT INTO public.games VALUES (41, 860, 55);
INSERT INTO public.games VALUES (42, 954, 55);
INSERT INTO public.games VALUES (43, 382, 55);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (21, 'aqua');
INSERT INTO public.users VALUES (22, 'user_1668720529906');
INSERT INTO public.users VALUES (23, 'user_1668720529905');
INSERT INTO public.users VALUES (24, 'user_1668721406147');
INSERT INTO public.users VALUES (25, 'user_1668721406146');
INSERT INTO public.users VALUES (26, 'user_1668721441974');
INSERT INTO public.users VALUES (27, 'user_1668721441973');
INSERT INTO public.users VALUES (28, 'dan');
INSERT INTO public.users VALUES (29, 'user_1668721897523');
INSERT INTO public.users VALUES (30, 'user_1668721897522');
INSERT INTO public.users VALUES (31, 'user_1668722137553');
INSERT INTO public.users VALUES (32, 'user_1668722137552');
INSERT INTO public.users VALUES (33, 'user_1668722184828');
INSERT INTO public.users VALUES (34, 'user_1668722184827');
INSERT INTO public.users VALUES (35, 'user_1668722485250');
INSERT INTO public.users VALUES (36, 'user_1668722485249');
INSERT INTO public.users VALUES (37, 'user_1668723379605');
INSERT INTO public.users VALUES (38, 'user_1668723379604');
INSERT INTO public.users VALUES (39, 'user_1668723480689');
INSERT INTO public.users VALUES (40, 'user_1668723480688');
INSERT INTO public.users VALUES (41, 'user_1668723640645');
INSERT INTO public.users VALUES (42, 'user_1668723640644');
INSERT INTO public.users VALUES (43, 'user_1668723853710');
INSERT INTO public.users VALUES (44, 'user_1668723853709');
INSERT INTO public.users VALUES (45, 'user_1668723993654');
INSERT INTO public.users VALUES (46, 'user_1668723993653');
INSERT INTO public.users VALUES (47, 'user_1668724306807');
INSERT INTO public.users VALUES (48, 'user_1668724306806');
INSERT INTO public.users VALUES (49, 'user_1668724362193');
INSERT INTO public.users VALUES (50, 'user_1668724362192');
INSERT INTO public.users VALUES (51, 'user_1668724472048');
INSERT INTO public.users VALUES (52, 'user_1668724472047');
INSERT INTO public.users VALUES (53, 'user_1668724488872');
INSERT INTO public.users VALUES (54, 'user_1668724488871');
INSERT INTO public.users VALUES (55, 'user_1668724554972');
INSERT INTO public.users VALUES (56, 'user_1668724554971');
INSERT INTO public.users VALUES (57, 'user_1668724630881');
INSERT INTO public.users VALUES (58, 'user_1668724630880');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 43, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 58, true);


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
