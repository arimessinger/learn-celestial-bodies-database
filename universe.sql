--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: extra; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.extra (
    extra_id integer NOT NULL,
    name character varying(30) NOT NULL,
    bool boolean
);


ALTER TABLE public.extra OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.extra_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extra_id_seq OWNER TO freecodecamp;

--
-- Name: extra_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.extra_id_seq OWNED BY public.extra.extra_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    size integer,
    coolness integer,
    idk numeric(2,1),
    text text,
    bool boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    extra integer,
    extra2 integer,
    extra3 integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    extra integer,
    extra2 integer,
    extra3 integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    extra integer,
    extra2 integer,
    extra3 integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: extra extra_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra ALTER COLUMN extra_id SET DEFAULT nextval('public.extra_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: extra; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.extra VALUES (2, 'b', NULL);
INSERT INTO public.extra VALUES (3, 'c', NULL);
INSERT INTO public.extra VALUES (4, 'd', NULL);
INSERT INTO public.extra VALUES (5, 'e', NULL);
INSERT INTO public.extra VALUES (6, 'f', NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'a', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'b', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'c', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'd', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'e', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'f', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'g', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'h', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'i', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'j', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'k', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'l', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'm', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (14, 'n', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (15, 'o', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (16, 'p', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (17, 'q', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (18, 'r', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (19, 's', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (20, 't', NULL, NULL, NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'f', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'g', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'h', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'i', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'j', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'k', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'l', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'm', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'n', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'o', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'p', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'q', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'r', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 's', NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 't', NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'f', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'g', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'h', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'i', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'j', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'k', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'l', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'm', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (14, 'n', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (15, 'o', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (16, 'p', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (17, 'q', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (18, 'r', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (19, 's', NULL, NULL, NULL);
INSERT INTO public.planet VALUES (20, 't', NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'a', NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'b', NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'c', NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'd', NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'e', NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'f', NULL, NULL, NULL);
INSERT INTO public.star VALUES (7, 'g', NULL, NULL, NULL);
INSERT INTO public.star VALUES (8, 'h', NULL, NULL, NULL);
INSERT INTO public.star VALUES (9, 'i', NULL, NULL, NULL);
INSERT INTO public.star VALUES (10, 'j', NULL, NULL, NULL);
INSERT INTO public.star VALUES (11, 'k', NULL, NULL, NULL);
INSERT INTO public.star VALUES (12, 'l', NULL, NULL, NULL);
INSERT INTO public.star VALUES (13, 'm', NULL, NULL, NULL);
INSERT INTO public.star VALUES (14, 'n', NULL, NULL, NULL);
INSERT INTO public.star VALUES (15, 'o', NULL, NULL, NULL);
INSERT INTO public.star VALUES (16, 'p', NULL, NULL, NULL);
INSERT INTO public.star VALUES (17, 'q', NULL, NULL, NULL);
INSERT INTO public.star VALUES (18, 'r', NULL, NULL, NULL);
INSERT INTO public.star VALUES (19, 's', NULL, NULL, NULL);
INSERT INTO public.star VALUES (20, 't', NULL, NULL, NULL);


--
-- Name: extra_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.extra_id_seq', 1, false);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, false);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 1, false);


--
-- Name: extra extra_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_id PRIMARY KEY (extra_id);


--
-- Name: extra extra_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.extra
    ADD CONSTRAINT extra_id_key UNIQUE (extra_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: star j; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT j UNIQUE (name);


--
-- Name: galaxy k; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT k UNIQUE (name);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet s; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT s UNIQUE (name);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: moon moon_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_fkey FOREIGN KEY (name) REFERENCES public.planet(name);


--
-- Name: planet planet_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_fkey FOREIGN KEY (name) REFERENCES public.star(name);


--
-- Name: star star_name_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_fkey FOREIGN KEY (name) REFERENCES public.galaxy(name);


--
-- PostgreSQL database dump complete
--

