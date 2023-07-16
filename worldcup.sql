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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL,
    year integer NOT NULL,
    round character varying(255) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (33, 4, 2, 2018, 'Final', 278, 279);
INSERT INTO public.games VALUES (34, 2, 0, 2018, 'Third Place', 280, 281);
INSERT INTO public.games VALUES (35, 2, 1, 2018, 'Semi-Final', 279, 281);
INSERT INTO public.games VALUES (36, 1, 0, 2018, 'Semi-Final', 278, 280);
INSERT INTO public.games VALUES (37, 3, 2, 2018, 'Quarter-Final', 279, 282);
INSERT INTO public.games VALUES (38, 2, 0, 2018, 'Quarter-Final', 281, 283);
INSERT INTO public.games VALUES (39, 2, 1, 2018, 'Quarter-Final', 280, 284);
INSERT INTO public.games VALUES (40, 2, 0, 2018, 'Quarter-Final', 278, 285);
INSERT INTO public.games VALUES (41, 2, 1, 2018, 'Eighth-Final', 281, 286);
INSERT INTO public.games VALUES (42, 1, 0, 2018, 'Eighth-Final', 283, 287);
INSERT INTO public.games VALUES (43, 3, 2, 2018, 'Eighth-Final', 280, 288);
INSERT INTO public.games VALUES (44, 2, 0, 2018, 'Eighth-Final', 284, 289);
INSERT INTO public.games VALUES (45, 2, 1, 2018, 'Eighth-Final', 279, 290);
INSERT INTO public.games VALUES (46, 2, 1, 2018, 'Eighth-Final', 282, 291);
INSERT INTO public.games VALUES (47, 2, 1, 2018, 'Eighth-Final', 285, 292);
INSERT INTO public.games VALUES (48, 4, 3, 2018, 'Eighth-Final', 278, 293);
INSERT INTO public.games VALUES (49, 1, 0, 2014, 'Final', 294, 293);
INSERT INTO public.games VALUES (50, 3, 0, 2014, 'Third Place', 295, 284);
INSERT INTO public.games VALUES (51, 1, 0, 2014, 'Semi-Final', 293, 295);
INSERT INTO public.games VALUES (52, 7, 1, 2014, 'Semi-Final', 294, 284);
INSERT INTO public.games VALUES (53, 1, 0, 2014, 'Quarter-Final', 295, 296);
INSERT INTO public.games VALUES (54, 1, 0, 2014, 'Quarter-Final', 293, 280);
INSERT INTO public.games VALUES (55, 2, 1, 2014, 'Quarter-Final', 284, 286);
INSERT INTO public.games VALUES (56, 1, 0, 2014, 'Quarter-Final', 294, 278);
INSERT INTO public.games VALUES (57, 2, 1, 2014, 'Eighth-Final', 284, 297);
INSERT INTO public.games VALUES (58, 2, 0, 2014, 'Eighth-Final', 286, 285);
INSERT INTO public.games VALUES (59, 2, 0, 2014, 'Eighth-Final', 278, 298);
INSERT INTO public.games VALUES (60, 2, 1, 2014, 'Eighth-Final', 294, 299);
INSERT INTO public.games VALUES (61, 2, 1, 2014, 'Eighth-Final', 295, 289);
INSERT INTO public.games VALUES (62, 2, 1, 2014, 'Eighth-Final', 296, 300);
INSERT INTO public.games VALUES (63, 1, 0, 2014, 'Eighth-Final', 293, 287);
INSERT INTO public.games VALUES (64, 2, 1, 2014, 'Eighth-Final', 280, 301);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (278, 'France');
INSERT INTO public.teams VALUES (279, 'Croatia');
INSERT INTO public.teams VALUES (280, 'Belgium');
INSERT INTO public.teams VALUES (281, 'England');
INSERT INTO public.teams VALUES (282, 'Russia');
INSERT INTO public.teams VALUES (283, 'Sweden');
INSERT INTO public.teams VALUES (284, 'Brazil');
INSERT INTO public.teams VALUES (285, 'Uruguay');
INSERT INTO public.teams VALUES (286, 'Colombia');
INSERT INTO public.teams VALUES (287, 'Switzerland');
INSERT INTO public.teams VALUES (288, 'Japan');
INSERT INTO public.teams VALUES (289, 'Mexico');
INSERT INTO public.teams VALUES (290, 'Denmark');
INSERT INTO public.teams VALUES (291, 'Spain');
INSERT INTO public.teams VALUES (292, 'Portugal');
INSERT INTO public.teams VALUES (293, 'Argentina');
INSERT INTO public.teams VALUES (294, 'Germany');
INSERT INTO public.teams VALUES (295, 'Netherlands');
INSERT INTO public.teams VALUES (296, 'Costa Rica');
INSERT INTO public.teams VALUES (297, 'Chile');
INSERT INTO public.teams VALUES (298, 'Nigeria');
INSERT INTO public.teams VALUES (299, 'Algeria');
INSERT INTO public.teams VALUES (300, 'Greece');
INSERT INTO public.teams VALUES (301, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 64, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 301, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--
