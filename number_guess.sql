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
    number_guesses integer NOT NULL,
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
    username character varying(20) NOT NULL
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

INSERT INTO public.games VALUES (1, 933, 2);
INSERT INTO public.games VALUES (2, 75, 2);
INSERT INTO public.games VALUES (3, 363, 3);
INSERT INTO public.games VALUES (4, 473, 3);
INSERT INTO public.games VALUES (5, 745, 2);
INSERT INTO public.games VALUES (6, 470, 2);
INSERT INTO public.games VALUES (7, 305, 2);
INSERT INTO public.games VALUES (8, 354, 4);
INSERT INTO public.games VALUES (9, 406, 4);
INSERT INTO public.games VALUES (10, 267, 5);
INSERT INTO public.games VALUES (11, 927, 5);
INSERT INTO public.games VALUES (12, 13, 4);
INSERT INTO public.games VALUES (13, 418, 4);
INSERT INTO public.games VALUES (14, 827, 4);
INSERT INTO public.games VALUES (15, 16, 6);
INSERT INTO public.games VALUES (16, 744, 7);
INSERT INTO public.games VALUES (17, 363, 7);
INSERT INTO public.games VALUES (18, 371, 8);
INSERT INTO public.games VALUES (19, 191, 8);
INSERT INTO public.games VALUES (20, 519, 7);
INSERT INTO public.games VALUES (21, 102, 7);
INSERT INTO public.games VALUES (22, 796, 7);
INSERT INTO public.games VALUES (23, 310, 9);
INSERT INTO public.games VALUES (24, 438, 9);
INSERT INTO public.games VALUES (25, 994, 10);
INSERT INTO public.games VALUES (26, 494, 10);
INSERT INTO public.games VALUES (27, 410, 9);
INSERT INTO public.games VALUES (28, 725, 9);
INSERT INTO public.games VALUES (29, 416, 9);
INSERT INTO public.games VALUES (30, 343, 11);
INSERT INTO public.games VALUES (31, 578, 11);
INSERT INTO public.games VALUES (32, 244, 12);
INSERT INTO public.games VALUES (33, 797, 12);
INSERT INTO public.games VALUES (34, 432, 11);
INSERT INTO public.games VALUES (35, 291, 11);
INSERT INTO public.games VALUES (36, 67, 11);
INSERT INTO public.games VALUES (37, 723, 13);
INSERT INTO public.games VALUES (38, 338, 13);
INSERT INTO public.games VALUES (39, 260, 14);
INSERT INTO public.games VALUES (40, 472, 14);
INSERT INTO public.games VALUES (41, 126, 13);
INSERT INTO public.games VALUES (42, 815, 13);
INSERT INTO public.games VALUES (43, 253, 13);
INSERT INTO public.games VALUES (44, 19, 1);
INSERT INTO public.games VALUES (45, 966, 15);
INSERT INTO public.games VALUES (46, 435, 15);
INSERT INTO public.games VALUES (47, 907, 16);
INSERT INTO public.games VALUES (48, 995, 16);
INSERT INTO public.games VALUES (49, 1001, 15);
INSERT INTO public.games VALUES (50, 534, 15);
INSERT INTO public.games VALUES (51, 659, 15);
INSERT INTO public.games VALUES (52, 18, 1);
INSERT INTO public.games VALUES (53, 6, 17);
INSERT INTO public.games VALUES (54, 118, 17);
INSERT INTO public.games VALUES (55, 665, 18);
INSERT INTO public.games VALUES (56, 318, 18);
INSERT INTO public.games VALUES (57, 212, 17);
INSERT INTO public.games VALUES (58, 565, 17);
INSERT INTO public.games VALUES (59, 607, 17);
INSERT INTO public.games VALUES (60, 11, 1);
INSERT INTO public.games VALUES (61, 546, 19);
INSERT INTO public.games VALUES (62, 485, 19);
INSERT INTO public.games VALUES (63, 215, 20);
INSERT INTO public.games VALUES (64, 330, 20);
INSERT INTO public.games VALUES (65, 816, 19);
INSERT INTO public.games VALUES (66, 961, 19);
INSERT INTO public.games VALUES (67, 170, 19);
INSERT INTO public.games VALUES (68, 23, 21);
INSERT INTO public.games VALUES (69, 398, 22);
INSERT INTO public.games VALUES (70, 547, 22);
INSERT INTO public.games VALUES (71, 692, 23);
INSERT INTO public.games VALUES (72, 371, 23);
INSERT INTO public.games VALUES (73, 263, 22);
INSERT INTO public.games VALUES (74, 597, 22);
INSERT INTO public.games VALUES (75, 308, 22);
INSERT INTO public.games VALUES (76, 182, 24);
INSERT INTO public.games VALUES (77, 782, 24);
INSERT INTO public.games VALUES (78, 760, 25);
INSERT INTO public.games VALUES (79, 416, 25);
INSERT INTO public.games VALUES (80, 296, 24);
INSERT INTO public.games VALUES (81, 887, 24);
INSERT INTO public.games VALUES (82, 409, 24);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'l');
INSERT INTO public.users VALUES (2, 'user_1665316067789');
INSERT INTO public.users VALUES (3, 'user_1665316067788');
INSERT INTO public.users VALUES (4, 'user_1665316227646');
INSERT INTO public.users VALUES (5, 'user_1665316227645');
INSERT INTO public.users VALUES (6, 'k');
INSERT INTO public.users VALUES (7, 'user_1665316294337');
INSERT INTO public.users VALUES (8, 'user_1665316294336');
INSERT INTO public.users VALUES (9, 'user_1665316372367');
INSERT INTO public.users VALUES (10, 'user_1665316372366');
INSERT INTO public.users VALUES (11, 'user_1665316404072');
INSERT INTO public.users VALUES (12, 'user_1665316404071');
INSERT INTO public.users VALUES (13, 'user_1665316528487');
INSERT INTO public.users VALUES (14, 'user_1665316528486');
INSERT INTO public.users VALUES (15, 'user_1665316609077');
INSERT INTO public.users VALUES (16, 'user_1665316609076');
INSERT INTO public.users VALUES (17, 'user_1665316752321');
INSERT INTO public.users VALUES (18, 'user_1665316752320');
INSERT INTO public.users VALUES (19, 'user_1665316856790');
INSERT INTO public.users VALUES (20, 'user_1665316856789');
INSERT INTO public.users VALUES (21, 'kik');
INSERT INTO public.users VALUES (22, 'user_1665317086221');
INSERT INTO public.users VALUES (23, 'user_1665317086220');
INSERT INTO public.users VALUES (24, 'user_1665317110747');
INSERT INTO public.users VALUES (25, 'user_1665317110746');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 82, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 25, true);


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

