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
    user_id integer,
    guesses integer DEFAULT 0
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

INSERT INTO public.games VALUES (1, 1, 16);
INSERT INTO public.games VALUES (2, 1, 11);
INSERT INTO public.games VALUES (3, 2, 240);
INSERT INTO public.games VALUES (4, 2, 752);
INSERT INTO public.games VALUES (5, 3, 62);
INSERT INTO public.games VALUES (6, 3, 712);
INSERT INTO public.games VALUES (7, 2, 154);
INSERT INTO public.games VALUES (8, 2, 813);
INSERT INTO public.games VALUES (9, 2, 154);
INSERT INTO public.games VALUES (10, 4, 746);
INSERT INTO public.games VALUES (11, 4, 973);
INSERT INTO public.games VALUES (12, 5, 102);
INSERT INTO public.games VALUES (13, 5, 461);
INSERT INTO public.games VALUES (14, 4, 282);
INSERT INTO public.games VALUES (15, 4, 698);
INSERT INTO public.games VALUES (16, 4, 972);
INSERT INTO public.games VALUES (17, 6, 691);
INSERT INTO public.games VALUES (18, 6, 924);
INSERT INTO public.games VALUES (19, 7, 794);
INSERT INTO public.games VALUES (20, 7, 911);
INSERT INTO public.games VALUES (21, 6, 865);
INSERT INTO public.games VALUES (22, 6, 132);
INSERT INTO public.games VALUES (23, 6, 538);
INSERT INTO public.games VALUES (24, 8, 300);
INSERT INTO public.games VALUES (25, 8, 843);
INSERT INTO public.games VALUES (26, 9, 839);
INSERT INTO public.games VALUES (27, 9, 517);
INSERT INTO public.games VALUES (28, 8, 302);
INSERT INTO public.games VALUES (29, 8, 882);
INSERT INTO public.games VALUES (30, 8, 665);
INSERT INTO public.games VALUES (31, 10, 914);
INSERT INTO public.games VALUES (32, 10, 945);
INSERT INTO public.games VALUES (33, 11, 958);
INSERT INTO public.games VALUES (34, 11, 933);
INSERT INTO public.games VALUES (35, 10, 482);
INSERT INTO public.games VALUES (36, 10, 314);
INSERT INTO public.games VALUES (37, 10, 46);
INSERT INTO public.games VALUES (38, 1, 9);
INSERT INTO public.games VALUES (39, 14, 527);
INSERT INTO public.games VALUES (40, 14, 606);
INSERT INTO public.games VALUES (41, 15, 555);
INSERT INTO public.games VALUES (42, 15, 602);
INSERT INTO public.games VALUES (43, 14, 618);
INSERT INTO public.games VALUES (44, 14, 421);
INSERT INTO public.games VALUES (45, 14, 948);
INSERT INTO public.games VALUES (46, 16, 417);
INSERT INTO public.games VALUES (47, 16, 334);
INSERT INTO public.games VALUES (48, 17, 696);
INSERT INTO public.games VALUES (49, 17, 617);
INSERT INTO public.games VALUES (50, 16, 46);
INSERT INTO public.games VALUES (51, 16, 823);
INSERT INTO public.games VALUES (52, 16, 878);
INSERT INTO public.games VALUES (53, 22, 219);
INSERT INTO public.games VALUES (54, 22, 188);
INSERT INTO public.games VALUES (55, 23, 754);
INSERT INTO public.games VALUES (56, 23, 712);
INSERT INTO public.games VALUES (57, 22, 721);
INSERT INTO public.games VALUES (58, 22, 717);
INSERT INTO public.games VALUES (59, 22, 975);
INSERT INTO public.games VALUES (60, 24, 625);
INSERT INTO public.games VALUES (61, 24, 733);
INSERT INTO public.games VALUES (62, 25, 736);
INSERT INTO public.games VALUES (63, 25, 799);
INSERT INTO public.games VALUES (64, 24, 568);
INSERT INTO public.games VALUES (65, 24, 484);
INSERT INTO public.games VALUES (66, 24, 640);
INSERT INTO public.games VALUES (67, 26, 721);
INSERT INTO public.games VALUES (68, 26, 104);
INSERT INTO public.games VALUES (69, 27, 445);
INSERT INTO public.games VALUES (70, 27, 927);
INSERT INTO public.games VALUES (71, 26, 798);
INSERT INTO public.games VALUES (72, 26, 696);
INSERT INTO public.games VALUES (73, 26, 909);
INSERT INTO public.games VALUES (74, 28, 549);
INSERT INTO public.games VALUES (75, 28, 595);
INSERT INTO public.games VALUES (76, 29, 792);
INSERT INTO public.games VALUES (77, 29, 207);
INSERT INTO public.games VALUES (78, 28, 197);
INSERT INTO public.games VALUES (79, 28, 282);
INSERT INTO public.games VALUES (80, 28, 989);
INSERT INTO public.games VALUES (81, 30, 585);
INSERT INTO public.games VALUES (82, 30, 255);
INSERT INTO public.games VALUES (83, 31, 845);
INSERT INTO public.games VALUES (84, 31, 215);
INSERT INTO public.games VALUES (85, 30, 699);
INSERT INTO public.games VALUES (86, 30, 320);
INSERT INTO public.games VALUES (87, 30, 966);
INSERT INTO public.games VALUES (88, 32, 921);
INSERT INTO public.games VALUES (89, 32, 623);
INSERT INTO public.games VALUES (90, 33, 865);
INSERT INTO public.games VALUES (91, 33, 74);
INSERT INTO public.games VALUES (92, 32, 349);
INSERT INTO public.games VALUES (93, 32, 334);
INSERT INTO public.games VALUES (94, 32, 679);
INSERT INTO public.games VALUES (95, 34, 90);
INSERT INTO public.games VALUES (96, 34, 871);
INSERT INTO public.games VALUES (97, 35, 569);
INSERT INTO public.games VALUES (98, 35, 697);
INSERT INTO public.games VALUES (99, 34, 894);
INSERT INTO public.games VALUES (100, 34, 335);
INSERT INTO public.games VALUES (101, 34, 521);
INSERT INTO public.games VALUES (102, 36, 553);
INSERT INTO public.games VALUES (103, 36, 920);
INSERT INTO public.games VALUES (104, 37, 445);
INSERT INTO public.games VALUES (105, 37, 185);
INSERT INTO public.games VALUES (106, 36, 858);
INSERT INTO public.games VALUES (107, 36, 481);
INSERT INTO public.games VALUES (108, 36, 669);
INSERT INTO public.games VALUES (109, 38, 577);
INSERT INTO public.games VALUES (110, 38, 407);
INSERT INTO public.games VALUES (111, 39, 144);
INSERT INTO public.games VALUES (112, 39, 820);
INSERT INTO public.games VALUES (113, 38, 254);
INSERT INTO public.games VALUES (114, 38, 214);
INSERT INTO public.games VALUES (115, 38, 286);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Jsn');
INSERT INTO public.users VALUES (2, 'user_1707643958040');
INSERT INTO public.users VALUES (3, 'user_1707643958039');
INSERT INTO public.users VALUES (4, 'user_1707644058687');
INSERT INTO public.users VALUES (5, 'user_1707644058686');
INSERT INTO public.users VALUES (6, 'user_1707644268762');
INSERT INTO public.users VALUES (7, 'user_1707644268761');
INSERT INTO public.users VALUES (8, 'user_1707644282195');
INSERT INTO public.users VALUES (9, 'user_1707644282194');
INSERT INTO public.users VALUES (10, 'user_1707644378536');
INSERT INTO public.users VALUES (11, 'user_1707644378535');
INSERT INTO public.users VALUES (12, '500');
INSERT INTO public.users VALUES (13, 'asd');
INSERT INTO public.users VALUES (14, 'user_1707644863577');
INSERT INTO public.users VALUES (15, 'user_1707644863576');
INSERT INTO public.users VALUES (16, 'user_1707644873817');
INSERT INTO public.users VALUES (17, 'user_1707644873816');
INSERT INTO public.users VALUES (18, 'user_1707644994005');
INSERT INTO public.users VALUES (19, 'user_1707644994004');
INSERT INTO public.users VALUES (20, 'user_1707645012607');
INSERT INTO public.users VALUES (21, 'user_1707645012606');
INSERT INTO public.users VALUES (22, 'user_1707645061304');
INSERT INTO public.users VALUES (23, 'user_1707645061303');
INSERT INTO public.users VALUES (24, 'user_1707645113269');
INSERT INTO public.users VALUES (25, 'user_1707645113268');
INSERT INTO public.users VALUES (26, 'user_1707645209996');
INSERT INTO public.users VALUES (27, 'user_1707645209995');
INSERT INTO public.users VALUES (28, 'user_1707645274346');
INSERT INTO public.users VALUES (29, 'user_1707645274345');
INSERT INTO public.users VALUES (30, 'user_1707645284138');
INSERT INTO public.users VALUES (31, 'user_1707645284137');
INSERT INTO public.users VALUES (32, 'user_1707645288419');
INSERT INTO public.users VALUES (33, 'user_1707645288418');
INSERT INTO public.users VALUES (34, 'user_1707645569148');
INSERT INTO public.users VALUES (35, 'user_1707645569147');
INSERT INTO public.users VALUES (36, 'user_1707645586640');
INSERT INTO public.users VALUES (37, 'user_1707645586639');
INSERT INTO public.users VALUES (38, 'user_1707645599936');
INSERT INTO public.users VALUES (39, 'user_1707645599935');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 115, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 39, true);


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
-- Name: games fk_games_user; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_games_user FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

