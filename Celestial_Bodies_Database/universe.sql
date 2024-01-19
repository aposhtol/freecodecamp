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
    name character varying(16) NOT NULL,
    distance integer,
    age integer,
    galaxy_id integer NOT NULL,
    description text
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
    name character varying(16) NOT NULL,
    distance integer,
    age integer,
    moon_id integer NOT NULL,
    is_spherical boolean,
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
    name character varying(16) NOT NULL,
    age integer,
    distance integer,
    radius numeric,
    habitable boolean,
    planet_id integer NOT NULL,
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
-- Name: species; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.species (
    name character varying(16) NOT NULL,
    avg_height numeric,
    avg_weight numeric,
    species_id integer NOT NULL
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
    name character varying(16) NOT NULL,
    age integer,
    distance integer,
    description text,
    binary_star boolean,
    galaxy_id integer,
    star_id integer NOT NULL
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

INSERT INTO public.galaxy VALUES ('Andromeda', 32123312, 42213321, 1, 'cool galaxy');
INSERT INTO public.galaxy VALUES ('Antennae', 3242342, 3243223, 2, 'another cool galaxy');
INSERT INTO public.galaxy VALUES ('Backward', 123321, 32133, 3, 'yet another cool galaxy');
INSERT INTO public.galaxy VALUES ('Bear Paw', 23332, 6754343, 4, 'not so cool galaxy');
INSERT INTO public.galaxy VALUES ('Black Eye', 4323332, 126754343, 5, 'very cool galaxy');
INSERT INTO public.galaxy VALUES ('Bode''s', 4334232, 122346343, 6, 'very cool galaxy');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('vsdvwser', 3443, 22223, 1, true, 12);
INSERT INTO public.moon VALUES ('hgfdgfavsfdfg', 654343, 5436223, 2, false, 2);
INSERT INTO public.moon VALUES ('sdffsd', 4343, 56223, 3, false, 6);
INSERT INTO public.moon VALUES ('fdgsdghjfhgj', 433, 6223, 4, false, 9);
INSERT INTO public.moon VALUES ('nbvzxfcgfd', 4333, 5223, 5, true, 3);
INSERT INTO public.moon VALUES ('hfgkjhtr', 486, 55623, 6, true, 1);
INSERT INTO public.moon VALUES ('hgfhjgjrsxcg', 48546, 623, 7, true, 6);
INSERT INTO public.moon VALUES ('nbvvccgeytr', 446, 634523, 8, true, 7);
INSERT INTO public.moon VALUES ('vtyujkhy', 44216, 95523, 9, true, 4);
INSERT INTO public.moon VALUES ('fghhhdfrety', 4426, 523, 10, true, 5);
INSERT INTO public.moon VALUES ('gdfsjhgrtt', 4432536, 3456523, 11, true, 3);
INSERT INTO public.moon VALUES ('njhlgtfy', 443236, 345623, 12, true, 8);
INSERT INTO public.moon VALUES ('jkbhgjddf', 5343236, 675623, 13, true, 11);
INSERT INTO public.moon VALUES ('mbcvdsfgf', 534336, 75623, 14, true, 9);
INSERT INTO public.moon VALUES ('mbc', 734336, 275623, 15, true, 3);
INSERT INTO public.moon VALUES ('mbcfdgssdf', 73436, 75623, 16, true, 5);
INSERT INTO public.moon VALUES ('nvbdfres', 873436, 55623, 17, true, 7);
INSERT INTO public.moon VALUES ('nvbdfresrfgafds', 87346, 7455623, 18, true, 4);
INSERT INTO public.moon VALUES ('nvbdfrgfdcxxe', 8734346, 778563, 19, true, 5);
INSERT INTO public.moon VALUES ('nvbdfcxxe', 873446, 78563, 20, true, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', 478, 5423, 344.2, false, 1, 5);
INSERT INTO public.planet VALUES ('Venus', 1278, 423, 764.2, false, 2, 3);
INSERT INTO public.planet VALUES ('Earth', 4278, 0, 1064.2, true, 3, 6);
INSERT INTO public.planet VALUES ('Mars', 6278, 342, 964.2, true, 4, 2);
INSERT INTO public.planet VALUES ('Saturn', 26278, 4342, 22964.2, false, 5, 1);
INSERT INTO public.planet VALUES ('Jupiter', 56278, 10342, 345964.2, false, 6, 4);
INSERT INTO public.planet VALUES ('Uranus', 66278, 50342, 35964.2, false, 7, 6);
INSERT INTO public.planet VALUES ('Neptune', 46278, 54942, 5964.2, false, 8, 2);
INSERT INTO public.planet VALUES ('Pluton', 4278, 94942, 964.2, false, 9, 5);
INSERT INTO public.planet VALUES ('DSFsdf', 3443, 2323, 54343.54, false, 10, 6);
INSERT INTO public.planet VALUES ('hgdgdsf', 343, 223, 543443.54, true, 11, 2);
INSERT INTO public.planet VALUES ('vsdvwser', 3443, 22223, 443.54, true, 12, 3);


--
-- Data for Name: species; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.species VALUES ('Hookla', 123.1, 33.2, 1);
INSERT INTO public.species VALUES ('nvbdfcxxe', 46, 73, 2);
INSERT INTO public.species VALUES ('bxxe', 26, 43, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Proxima Centauri', 4232, 46343, 'a star', false, 1, 1);
INSERT INTO public.star VALUES ('Tolimna', 3232, 54343, 'good star', true, 3, 2);
INSERT INTO public.star VALUES ('Wolf 359', 343232, 254343, 'distant star', false, 6, 3);
INSERT INTO public.star VALUES ('Ross 154', 34562, 43743, 'very distant star', false, 4, 4);
INSERT INTO public.star VALUES ('61 Cygni', 980768, 675423, 'good looking star', true, 2, 5);
INSERT INTO public.star VALUES ('YZ Ceti', 75665478, 45345423, 'great star', false, 5, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: species_species_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.species_species_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_unique_constraint UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: galaxy name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique_constraint UNIQUE (name);


--
-- Name: planet planet_name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_unique_constraint UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: species species_name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_name_unique_constraint UNIQUE (name);


--
-- Name: species species_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.species
    ADD CONSTRAINT species_pkey PRIMARY KEY (species_id);


--
-- Name: star star_name_unique_constraint; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_unique_constraint UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--


