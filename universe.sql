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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    no_of_stars integer,
    no_of_blackholes integer,
    length numeric,
    is_empty boolean,
    nickname text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    no_of_species integer,
    diameter numeric,
    has_life boolean,
    nickname text,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    no_of_moons integer,
    no_of_species integer,
    diameter numeric,
    is_rotating boolean,
    nickname text,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    no_of_planets integer,
    no_of_moons integer,
    weight numeric,
    is_empty boolean,
    nickname text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: superclusters; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.superclusters (
    superclusters_id integer NOT NULL,
    name character varying(30) NOT NULL,
    inttype1 integer,
    inttype2 integer,
    numerictype numeric,
    booltype boolean,
    texttype text
);


ALTER TABLE public.superclusters OWNER TO freecodecamp;

--
-- Name: superclusters_superclusters_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.superclusters_superclusters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.superclusters_superclusters_id_seq OWNER TO freecodecamp;

--
-- Name: superclusters_superclusters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.superclusters_superclusters_id_seq OWNED BY public.superclusters.superclusters_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Name: superclusters superclusters_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.superclusters ALTER COLUMN superclusters_id SET DEFAULT nextval('public.superclusters_superclusters_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, ' gal1', 3, 1, 5998, true, 'apple');
INSERT INTO public.galaxy VALUES (2, 'gal2', 4, 2, 6998, false, 'boy');
INSERT INTO public.galaxy VALUES (3, 'gal3', 7, 1, 5999, true, 'cat');
INSERT INTO public.galaxy VALUES (4, 'gal4', 8, 1, 6789, false, 'dog');
INSERT INTO public.galaxy VALUES (5, 'gal5', 21, 2, 9879, true, 'eleph');
INSERT INTO public.galaxy VALUES (6, 'gal6', 20, 1, 1010, false, 'fox');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'm1', 5, 477, false, 'a', 12);
INSERT INTO public.moon VALUES (2, 'm2', 6, 577, false, 'b', 11);
INSERT INTO public.moon VALUES (3, 'm3', 7, 677, false, 'c', 10);
INSERT INTO public.moon VALUES (4, 'm4', 8, 877, false, 'd', 9);
INSERT INTO public.moon VALUES (5, 'm5', 0, 977, true, 'e', 8);
INSERT INTO public.moon VALUES (6, 'm6', 1, 876, true, 'f', 7);
INSERT INTO public.moon VALUES (7, 'm7', 2, 677, true, 'g', 6);
INSERT INTO public.moon VALUES (8, 'm8', 3, 776, true, 'h', 5);
INSERT INTO public.moon VALUES (9, 'm9', 4, 778, true, 'i', 4);
INSERT INTO public.moon VALUES (10, 'm10', 11, 999, true, 'j', 3);
INSERT INTO public.moon VALUES (11, 'm11', 12, 899, true, 'k', 2);
INSERT INTO public.moon VALUES (12, 'm12', 13, 799, true, 'l', 1);
INSERT INTO public.moon VALUES (13, 'm13', 0, 899, true, 'm', 1);
INSERT INTO public.moon VALUES (14, 'm14', 14, 999, true, 'n', 2);
INSERT INTO public.moon VALUES (15, 'm15', 1, 599, true, 'o', 3);
INSERT INTO public.moon VALUES (16, 'm16', 2, 699, false, 'p', 4);
INSERT INTO public.moon VALUES (17, 'm17', 3, 499, false, 'q', 5);
INSERT INTO public.moon VALUES (18, 'm18', 5, 399, false, 'r', 6);
INSERT INTO public.moon VALUES (19, 'm19', 6, 299, false, 's', 7);
INSERT INTO public.moon VALUES (20, 'm20', 4, 199, false, 't', 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'p1', 1, 1000001, 16787.1, true, 'appy', 1);
INSERT INTO public.planet VALUES (2, 'p2', 2, 1000000, 18976.4, true, 'biy', 2);
INSERT INTO public.planet VALUES (3, 'p3', 3, 4000000, 192433.9, true, 'cot', 3);
INSERT INTO public.planet VALUES (4, 'p4', 4, 71000000, 187222.2, true, 'dig', 4);
INSERT INTO public.planet VALUES (5, 'p5', 1, 9000000, 1929.6, false, 'elof', 5);
INSERT INTO public.planet VALUES (6, 'p6', 2, 1000000, 6872.7, false, 'fix', 6);
INSERT INTO public.planet VALUES (7, 'p7', 3, 42000000, 1888.6, false, 'got', 6);
INSERT INTO public.planet VALUES (8, 'p8', 4, 7000000, 21492.7, false, 'hat', 5);
INSERT INTO public.planet VALUES (9, 'p9', 1, 88000000, 22289.6, true, 'ink', 4);
INSERT INTO public.planet VALUES (10, 'p10', 2, 79000000, 7569.4, false, 'jack', 3);
INSERT INTO public.planet VALUES (11, 'p11', 3, 96000000, 3281.7, true, 'log', 2);
INSERT INTO public.planet VALUES (12, 'p12', 4, 108000000, 9199.8, false, 'mog', 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 8, 1, 1001.2, false, 'amy', 6);
INSERT INTO public.star VALUES (2, 'star2', 9, 2, 1002.1, false, 'bot', 5);
INSERT INTO public.star VALUES (3, 'star3', 10, 7, 110.7, false, 'cit', 4);
INSERT INTO public.star VALUES (4, 'star4', 5, 1, 1101.7, false, 'deg', 3);
INSERT INTO public.star VALUES (5, 'star5', 6, 0, 1900.8, true, 'elaph', 2);
INSERT INTO public.star VALUES (6, 'star6', 7, 3, 1000.9, false, 'fax', 1);


--
-- Data for Name: superclusters; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.superclusters VALUES (1, 's1', 1000000, 4, 789432.1, false, 's2');
INSERT INTO public.superclusters VALUES (2, 's2', 2000000, 5, 987654.2, false, 's3');
INSERT INTO public.superclusters VALUES (3, 's3', 3000000, 3, 321000.9, true, 's1');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: superclusters_superclusters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.superclusters_superclusters_id_seq', 1, false);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: superclusters superclusters_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.superclusters
    ADD CONSTRAINT superclusters_name_key UNIQUE (name);


--
-- Name: superclusters superclusters_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.superclusters
    ADD CONSTRAINT superclusters_pkey PRIMARY KEY (superclusters_id);


--
-- Name: moon fk_moon_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_moon_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_planet_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_planet_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star fkgalaxy_id; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fkgalaxy_id FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

