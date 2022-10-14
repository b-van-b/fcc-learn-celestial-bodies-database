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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    yelp_rating numeric(2,1)
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
    description text,
    has_life boolean,
    is_spherical boolean,
    age_in_millions_of_years integer,
    planet_id integer NOT NULL,
    yelp_rating numeric(2,1)
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
    description text,
    has_life boolean,
    age_in_millions_of_years integer,
    star_id integer NOT NULL,
    yelp_rating numeric(2,1)
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    species_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer
);


ALTER TABLE public.species OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.species_species_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.species_species_id_seq OWNER TO freecodecamp;

--
-- Name: species_species_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.species_species_id_seq OWNED BY public.species.species_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer,
    galaxy_id integer NOT NULL,
    yelp_rating numeric(2,1)
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
-- Name: species species_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species ALTER COLUMN species_id SET DEFAULT nextval('public.species_species_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Where we live!', true, 13610, 5.0);
INSERT INTO public.galaxy VALUES (2, 'Canis Major Dwarf', 'Actually quite large.', false, NULL, 3.7);
INSERT INTO public.galaxy VALUES (3, 'Sagittarius Dwarf', 'A Libra at heart.', false, NULL, 4.1);
INSERT INTO public.galaxy VALUES (4, 'Triangulum II', 'Pointy!', false, NULL, 2.5);
INSERT INTO public.galaxy VALUES (5, 'Reticulum II', 'Better than the original.', false, NULL, 3.3);
INSERT INTO public.galaxy VALUES (6, 'Segue 2', 'Speaking of galaxies...', false, NULL, 1.5);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Flag population: 6', false, NULL, 4530, 3, 4.9);
INSERT INTO public.moon VALUES (2, 'Io', 'High volcanic activity.', false, NULL, NULL, 5, 4.8);
INSERT INTO public.moon VALUES (3, 'Europa', 'Could support life.', false, NULL, NULL, 5, 1.9);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Larger than Mercury.', false, NULL, NULL, 5, 1.4);
INSERT INTO public.moon VALUES (5, 'Callisto', 'More craters than any other planet in the solar system.', false, NULL, NULL, 5, 0.7);
INSERT INTO public.moon VALUES (6, 'Adrastea', 'Discovered in July 1979.', false, NULL, NULL, 5, 0.5);
INSERT INTO public.moon VALUES (7, 'Aitne', 'Part of the Carme group.', false, NULL, NULL, 5, 3.9);
INSERT INTO public.moon VALUES (8, 'Amalthea', 'Discovered by E.E. Barnard.', false, NULL, NULL, 5, 3.4);
INSERT INTO public.moon VALUES (9, 'Ersa', 'First spotted in 2017.', false, NULL, NULL, 5, 2.8);
INSERT INTO public.moon VALUES (10, 'Himalia', 'Discovered at Lick Observatory.', false, NULL, NULL, 5, 1.3);
INSERT INTO public.moon VALUES (11, 'Metis', 'Discovered by the Voyager science team.', false, NULL, NULL, 5, 4.1);
INSERT INTO public.moon VALUES (12, 'Eupheme', NULL, false, NULL, NULL, 5, 4.5);
INSERT INTO public.moon VALUES (13, 'Euporie', NULL, false, NULL, NULL, 5, 3.5);
INSERT INTO public.moon VALUES (14, 'Eurydome', NULL, false, NULL, NULL, 5, 3.9);
INSERT INTO public.moon VALUES (15, 'Hermippe', NULL, false, NULL, NULL, 5, 3.7);
INSERT INTO public.moon VALUES (16, 'Herse', NULL, false, NULL, NULL, 5, 4.6);
INSERT INTO public.moon VALUES (17, 'Hegemone', NULL, false, NULL, NULL, 5, 2.6);
INSERT INTO public.moon VALUES (18, 'Iocaste', NULL, false, NULL, NULL, 5, 0.2);
INSERT INTO public.moon VALUES (19, 'Isonoe', NULL, false, NULL, NULL, 5, 0.8);
INSERT INTO public.moon VALUES (20, 'Kale', NULL, false, NULL, NULL, 5, 3.3);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'The closest planet to Sol.', false, 4503, 1, 2.0);
INSERT INTO public.planet VALUES (2, 'Venus', 'Full of poison gas!', false, 4503, 1, 1.0);
INSERT INTO public.planet VALUES (3, 'Earth', 'Where we live.', true, 4543, 1, 5.0);
INSERT INTO public.planet VALUES (4, 'Mars', 'The red planet.', true, 4603, 1, 4.0);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'The largest planet in our solar system.', false, 4603, 1, 3.0);
INSERT INTO public.planet VALUES (6, 'Neptune', 'Surprisingly dry.', true, 4503, 1, 3.5);
INSERT INTO public.planet VALUES (7, 'Uranus', 'The subject of many puns.', false, 4503, 1, 3.0);
INSERT INTO public.planet VALUES (8, 'Saturn', 'An underrated SEGA console.', false, 4503, 1, 2.0);
INSERT INTO public.planet VALUES (9, 'Pluto', 'A dwarf planet is still a planet!', false, 4600, 1, 1.5);
INSERT INTO public.planet VALUES (10, 'HD 209458 b', 'Nicknamed Osiris.', false, NULL, 7, 4.7);
INSERT INTO public.planet VALUES (11, '47 Ursae Majoris b', 'Formally named Taphao Thong.', false, NULL, 8, 1.1);
INSERT INTO public.planet VALUES (12, '47 Ursae Majoris c', 'Formally named Taphao Kaew.', false, NULL, 8, 1.2);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES (1, 'Human', 3);
INSERT INTO public.species VALUES (4, 'Ethereal', 3);
INSERT INTO public.species VALUES (5, 'Morlock', 3);
INSERT INTO public.species VALUES (6, 'Slug', 3);
INSERT INTO public.species VALUES (2, 'Martian', 4);
INSERT INTO public.species VALUES (3, 'Atlantean', 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sol', 'The one and only Helios!', 4603, 1, 5.0);
INSERT INTO public.star VALUES (2, 'Antares', 'The brightest star in the constellation of Scorpius.', 11, 1, 4.7);
INSERT INTO public.star VALUES (3, 'Betelgeuse', 'Don''t say its name three times!', 10, 1, 1.0);
INSERT INTO public.star VALUES (4, 'UY Scuti', 'The biggest star in the Milky Way galaxy.', 1000, 1, 4.0);
INSERT INTO public.star VALUES (5, 'RW Cephei', 'A yellow hypergiant.', 19, 1, 4.1);
INSERT INTO public.star VALUES (6, 'VY Canis Majoris', 'The second-largest star in our galaxy.', 9, 1, 3.9);
INSERT INTO public.star VALUES (7, 'HD 209458', 'Located in the Pegasus constellation.', 3500, 1, 2.4);
INSERT INTO public.star VALUES (8, '47 Ursae Majoris', '46 light-years from Earth.', 6030, 1, 2.4);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 6, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


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
-- Name: species species_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_key UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


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
-- Name: star fk_galaxy_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy_star FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet_moon; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet_moon FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star_planet FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: species species_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- PostgreSQL database dump complete
--

