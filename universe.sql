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
-- Name: composition; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.composition (
    composition_id integer NOT NULL,
    object_type character varying(20) NOT NULL,
    element character varying(20),
    name character varying(30)
);


ALTER TABLE public.composition OWNER TO freecodecamp;

--
-- Name: composition_composition_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.composition_composition_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.composition_composition_id_seq OWNER TO freecodecamp;

--
-- Name: composition_composition_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.composition_composition_id_seq OWNED BY public.composition.composition_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    age_million_years integer,
    number_of_clusters integer
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
    name character varying(50) NOT NULL,
    planet_id integer,
    crater_count integer,
    orbital_period_days integer
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
    name character varying(50) NOT NULL,
    number_of_moons integer,
    has_life boolean,
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
    name character varying(50) NOT NULL,
    mass numeric,
    is_visible boolean,
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
-- Name: composition composition_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.composition ALTER COLUMN composition_id SET DEFAULT nextval('public.composition_composition_id_seq'::regclass);


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
-- Data for Name: composition; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.composition VALUES (1, 'star', 'Hydrogen', 'Sun');
INSERT INTO public.composition VALUES (2, 'star', 'Helium', 'Sun');
INSERT INTO public.composition VALUES (3, 'planet', 'Oxygen', 'Earth');
INSERT INTO public.composition VALUES (4, 'planet', 'Iron', 'Earth');
INSERT INTO public.composition VALUES (5, 'moon', 'Silicate', 'Moon');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy containing the Solar System', 13600, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Nearest large spiral galaxy to the Milky Way', 10000, 200);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Small spiral galaxy in the Local Group', 12000, 50);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 'Galaxy with a bright core and large dust ring', 13000, 100);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 'Famous interacting spiral galaxy', 11000, 120);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 'Massive elliptical galaxy in the Virgo cluster', 13000, 300);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', 'Satellite galaxy of the Milky Way', 13000, 20);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', 'Another satellite galaxy of the Milky Way', 12000, 15);
INSERT INTO public.galaxy VALUES (9, 'NGC 1300', 'Barred spiral galaxy in the Eridanus constellation', 11000, 80);
INSERT INTO public.galaxy VALUES (10, 'Pinwheel Galaxy', 'Face-on spiral galaxy in Ursa Major', 12000, 90);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 4, 200, 0);
INSERT INTO public.moon VALUES (3, 'Deimos', 4, 100, 1);
INSERT INTO public.moon VALUES (4, 'Europa', 9, 50, 4);
INSERT INTO public.moon VALUES (5, 'Ganymede', 5, 80, 7);
INSERT INTO public.moon VALUES (6, 'Callisto', 5, 90, 17);
INSERT INTO public.moon VALUES (7, 'Titan', 6, 150, 16);
INSERT INTO public.moon VALUES (8, 'Rhea', 6, 120, 5);
INSERT INTO public.moon VALUES (9, 'Enceladus', 6, 30, 1);
INSERT INTO public.moon VALUES (10, 'Triton', 8, 70, -6);
INSERT INTO public.moon VALUES (11, 'Io', 5, 400, 2);
INSERT INTO public.moon VALUES (12, 'Titania', 7, 200, 9);
INSERT INTO public.moon VALUES (13, 'Oberon', 7, 180, 14);
INSERT INTO public.moon VALUES (14, 'Miranda', 7, 50, 1);
INSERT INTO public.moon VALUES (15, 'Ariel', 7, 75, 3);
INSERT INTO public.moon VALUES (16, 'Umbriel', 7, 60, 4);
INSERT INTO public.moon VALUES (17, 'Dione', 6, 85, 3);
INSERT INTO public.moon VALUES (18, 'Tethys', 6, 90, 2);
INSERT INTO public.moon VALUES (19, 'Mimas', 6, 120, 1);
INSERT INTO public.moon VALUES (20, 'Charon', 11, 80, 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0, false, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0, false, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 2, false, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 79, false, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 82, false, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 27, false, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 14, false, 1);
INSERT INTO public.planet VALUES (9, 'Proxima b', 0, false, 3);
INSERT INTO public.planet VALUES (10, 'Vega I', 1, false, 6);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 0, false, 7);
INSERT INTO public.planet VALUES (12, 'Gliese 667 Cc', 2, false, 8);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1989000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 4018000000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 244600000000000000000000000000, true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 16400000000000000000000000000000, false, 2);
INSERT INTO public.star VALUES (5, 'Rigel', 35000000000000000000000000000000, true, 2);
INSERT INTO public.star VALUES (6, 'Vega', 4083000000000000000000000000000, true, 3);
INSERT INTO public.star VALUES (7, 'Alpha Centauri A', 2188000000000000000000000000000, true, 3);
INSERT INTO public.star VALUES (8, 'Alpha Centauri B', 1804000000000000000000000000000, true, 3);
INSERT INTO public.star VALUES (9, 'Polaris', 54000000000000000000000000000000, true, 4);
INSERT INTO public.star VALUES (10, 'Deneb', 32000000000000000000000000000000, true, 5);


--
-- Name: composition_composition_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.composition_composition_id_seq', 5, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 10, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: composition composition_composition_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_composition_id_key UNIQUE (composition_id);


--
-- Name: composition composition_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.composition
    ADD CONSTRAINT composition_pkey PRIMARY KEY (composition_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

