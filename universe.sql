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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(60) NOT NULL,
    galaxy_id integer
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(60) NOT NULL,
    description text,
    is_spherical boolean,
    age_in_millions_of_years integer,
    galaxy_types character varying(20)
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
    name character varying(60) NOT NULL,
    distance_from_planet numeric,
    gravity numeric,
    radius numeric,
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
    name character varying(60) NOT NULL,
    description text,
    has_life boolean,
    distance_from_earth integer,
    planet_types character varying(20),
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
    name character varying(60) NOT NULL,
    age_in_millions_of_years integer,
    is_spherical boolean,
    galaxy_id integer
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


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

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'Ceres', 4);
INSERT INTO public.asteroid VALUES (2, 'Pallas', 2);
INSERT INTO public.asteroid VALUES (3, 'Vesta', 6);
INSERT INTO public.asteroid VALUES (4, 'Hygiea', 5);
INSERT INTO public.asteroid VALUES (5, 'Interamnia', 1);
INSERT INTO public.asteroid VALUES (6, 'Europa', 3);
INSERT INTO public.asteroid VALUES (7, 'Davida', 2);
INSERT INTO public.asteroid VALUES (8, 'Sylvia', 6);
INSERT INTO public.asteroid VALUES (9, 'Cybele', 5);
INSERT INTO public.asteroid VALUES (10, 'Iris', 4);
INSERT INTO public.asteroid VALUES (11, 'Bamberga', 1);
INSERT INTO public.asteroid VALUES (12, 'Herculina', 3);
INSERT INTO public.asteroid VALUES (13, 'Fortuna', 2);
INSERT INTO public.asteroid VALUES (14, 'Thisbe', 6);
INSERT INTO public.asteroid VALUES (15, 'Massalia', 5);
INSERT INTO public.asteroid VALUES (16, 'Pomona', 4);
INSERT INTO public.asteroid VALUES (17, 'Hesperia', 1);
INSERT INTO public.asteroid VALUES (18, 'Fides', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', true, 13000, 'Spiral');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Closest spiral galaxy to the Milky Way', true, 13000, 'Spiral');
INSERT INTO public.galaxy VALUES (3, 'Messier 87', 'Located in the Virgo Cluster', false, 13000, 'Elliptical');
INSERT INTO public.galaxy VALUES (4, 'Triangulum', 'Third-largest galaxy in the Local Group', true, 13000, 'Spiral');
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Located in the Centaurus constellation', false, 13000, 'Elliptical');
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Known for its prominent dust lanes', true, 13000, 'Spiral');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon 1', 384400, 1.622, 1737.4, 8);
INSERT INTO public.moon VALUES (2, 'Moon 2', 384400, 1.622, 1737.4, 5);
INSERT INTO public.moon VALUES (3, 'Moon 3', 384400, 1.622, 1737.4, 11);
INSERT INTO public.moon VALUES (4, 'Moon 4', 384400, 1.622, 1737.4, 9);
INSERT INTO public.moon VALUES (5, 'Moon 5', 384400, 1.622, 1737.4, 1);
INSERT INTO public.moon VALUES (6, 'Moon 6', 384400, 1.622, 1737.4, 6);
INSERT INTO public.moon VALUES (7, 'Moon 7', 384400, 1.622, 1737.4, 10);
INSERT INTO public.moon VALUES (8, 'Moon 8', 384400, 1.622, 1737.4, 2);
INSERT INTO public.moon VALUES (9, 'Moon 9', 384400, 1.622, 1737.4, 4);
INSERT INTO public.moon VALUES (10, 'Moon 10', 384400, 1.622, 1737.4, 7);
INSERT INTO public.moon VALUES (11, 'Moon 11', 384400, 1.622, 1737.4, 3);
INSERT INTO public.moon VALUES (12, 'Moon 12', 384400, 1.622, 1737.4, 12);
INSERT INTO public.moon VALUES (13, 'Moon 13', 384400, 1.622, 1737.4, 8);
INSERT INTO public.moon VALUES (14, 'Moon 14', 384400, 1.622, 1737.4, 5);
INSERT INTO public.moon VALUES (15, 'Moon 15', 384400, 1.622, 1737.4, 9);
INSERT INTO public.moon VALUES (16, 'Moon 16', 384400, 1.622, 1737.4, 1);
INSERT INTO public.moon VALUES (17, 'Moon 17', 384400, 1.622, 1737.4, 6);
INSERT INTO public.moon VALUES (18, 'Moon 18', 384400, 1.622, 1737.4, 10);
INSERT INTO public.moon VALUES (19, 'Moon 19', 384400, 1.622, 1737.4, 2);
INSERT INTO public.moon VALUES (20, 'Moon 20', 384400, 1.622, 1737.4, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 'Closest planet to the Sun', false, 58, 'Terrestrial', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 'Hottest planet in the solar system', false, 108, 'Terrestrial', 2);
INSERT INTO public.planet VALUES (3, 'Earth', 'Home planet of humans', true, 0, 'Terrestrial', 3);
INSERT INTO public.planet VALUES (4, 'Mars', 'Red planet with potential for life', false, 225, 'Terrestrial', 4);
INSERT INTO public.planet VALUES (5, 'Jupiter', 'Largest planet in the solar system', false, 778, 'Gas Giant', 5);
INSERT INTO public.planet VALUES (6, 'Saturn', 'Planet with prominent ring system', false, 1427, 'Gas Giant', 6);
INSERT INTO public.planet VALUES (7, 'Uranus', 'Ice giant with tilted axis', false, 2870, 'Ice Giant', 7);
INSERT INTO public.planet VALUES (8, 'Neptune', 'Farthest planet from the Sun', false, 4497, 'Ice Giant', 8);
INSERT INTO public.planet VALUES (9, 'Proxima b', 'Closest exoplanet to Earth', true, 4, 'Terrestrial', 9);
INSERT INTO public.planet VALUES (10, 'Kepler-452b', 'Earth-like exoplanet', true, 1400, 'Terrestrial', 10);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 'One of seven Earth-sized planets', true, 39, 'Terrestrial', 11);
INSERT INTO public.planet VALUES (12, '55 Cancri e', 'Super-Earth exoplanet', false, 40, 'Super-Earth', 12);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 5, true, 1);
INSERT INTO public.star VALUES (2, 'Sirius', 200, true, 1);
INSERT INTO public.star VALUES (3, 'Canopus', 40, true, 2);
INSERT INTO public.star VALUES (4, 'Arcturus', 7, true, 2);
INSERT INTO public.star VALUES (5, 'Vega', 1, true, 3);
INSERT INTO public.star VALUES (6, 'Capella', 0, true, 3);
INSERT INTO public.star VALUES (7, 'Rigel', 8, true, 4);
INSERT INTO public.star VALUES (8, 'Procyon', 2, true, 4);
INSERT INTO public.star VALUES (9, 'Betelgeuse', 10, true, 5);
INSERT INTO public.star VALUES (10, 'Deneb', 20, true, 5);
INSERT INTO public.star VALUES (11, 'Altair', 1, true, 6);
INSERT INTO public.star VALUES (12, 'Antares', 15, true, 6);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 18, true);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


--
-- Name: asteroid asteroid_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_name_key UNIQUE (name);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


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
-- Name: asteroid asteroid_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

