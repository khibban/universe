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
-- Name: astronomical_event; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.astronomical_event (
    astronomical_event_id integer NOT NULL,
    name character varying(100) NOT NULL,
    event_type text NOT NULL,
    event_date date NOT NULL,
    location text NOT NULL,
    importance integer NOT NULL,
    description text NOT NULL,
    public_event boolean NOT NULL
);


ALTER TABLE public.astronomical_event OWNER TO freecodecamp;

--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.astronomical_event_event_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.astronomical_event_event_id_seq OWNER TO freecodecamp;

--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.astronomical_event_event_id_seq OWNED BY public.astronomical_event.astronomical_event_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    type text NOT NULL,
    age integer NOT NULL,
    size numeric NOT NULL,
    active boolean NOT NULL
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
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    radius numeric NOT NULL,
    planet_id integer NOT NULL,
    distance_from_planet numeric NOT NULL,
    habitable boolean NOT NULL
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
    name character varying(100) NOT NULL,
    type character varying(50) NOT NULL,
    mass numeric NOT NULL,
    star_id integer NOT NULL,
    radius numeric NOT NULL,
    distance_from_star numeric NOT NULL,
    atmosphere text NOT NULL
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
    name character varying(100) NOT NULL,
    spectral_type character varying(10) NOT NULL,
    temperature integer NOT NULL,
    mass numeric NOT NULL,
    galaxy_id integer NOT NULL,
    luminosity numeric NOT NULL,
    habitable boolean NOT NULL
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
-- Name: astronomical_event astronomical_event_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event ALTER COLUMN astronomical_event_id SET DEFAULT nextval('public.astronomical_event_event_id_seq'::regclass);


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
-- Data for Name: astronomical_event; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.astronomical_event VALUES (1, 'Halleys Comet', 'Comet', '1986-01-01', 'Solar System', 10, 'A periodic comet that is visible to the naked eye from Earth every 75-76 years.', true);
INSERT INTO public.astronomical_event VALUES (2, 'Leonid Meteor Shower', 'Meteor Shower', '2021-11-17', 'Earth (Atmosphere)', 7, 'An annual meteor shower caused by debris from the comet Tempel-Tuttle.', true);
INSERT INTO public.astronomical_event VALUES (3, 'Total Solar Eclipse', 'Solar Eclipse', '2017-08-21', 'North America', 9, 'When the Moon passes between the Earth and the Sun, fully or partially obscuring the Sun.', true);
INSERT INTO public.astronomical_event VALUES (4, 'Supernova SN 1987A', 'Supernova', '1987-02-23', 'Large Magellanic Cloud', 10, 'A supernova explosion in the Large Magellanic Cloud, the closest observed supernova to Earth since 1604.', true);
INSERT INTO public.astronomical_event VALUES (5, 'Transit of Venus', 'Astronomical Transit', '2012-06-06', 'Earth (Atmosphere)', 8, 'When Venus passes directly between the Earth and the Sun, appearing as a small black dot against the Suns disk.', true);
INSERT INTO public.astronomical_event VALUES (6, 'Geminid Meteor Shower', 'Meteor Shower', '2021-12-13', 'Earth (Atmosphere)', 8, 'An annual meteor shower caused by debris from the asteroid 3200 Phaethon.', true);
INSERT INTO public.astronomical_event VALUES (7, 'Jupiter Opposition', 'Opposition', '2022-08-19', 'Solar System', 7, 'When Jupiter is opposite the Sun in the sky, appearing brightest and closest to Earth.', true);
INSERT INTO public.astronomical_event VALUES (8, 'Comet Hale-Bopp', 'Comet', '1997-07-23', 'Solar System', 9, 'One of the most widely observed comets of the 20th century, with a very long tail visible to the naked eye for several months.', true);
INSERT INTO public.astronomical_event VALUES (9, 'Total Lunar Eclipse', 'Lunar Eclipse', '2019-01-21', 'Earth (Atmosphere)', 8, 'When the Earth passes between the Sun and the Moon, casting a shadow on the Moon and causing it to appear red.', true);
INSERT INTO public.astronomical_event VALUES (10, 'Eta Aquarid Meteor Shower', 'Meteor Shower', '2021-05-05', 'Earth (Atmosphere)', 7, 'An annual meteor shower caused by debris from Halleys Comet.', true);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Spiral', 13000, 100000, true);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'Spiral', 12000, 120000, true);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 'Spiral', 8000, 50000, false);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 'Elliptical', 12000, 600000, true);
INSERT INTO public.galaxy VALUES (5, 'Centaurus A', 'Elliptical', 11000, 200000, false);
INSERT INTO public.galaxy VALUES (6, 'Whirlpool', 'Spiral', 10000, 80000, true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 'Terrestrial', 1737.1, 1, 384400, false);
INSERT INTO public.moon VALUES (2, 'Phobos', 'Rocky', 11.1, 3, 9376, false);
INSERT INTO public.moon VALUES (3, 'Deimos', 'Rocky', 6.2, 3, 23460, false);
INSERT INTO public.moon VALUES (4, 'Ganymede', 'Ice', 2634.1, 4, 1070400, false);
INSERT INTO public.moon VALUES (5, 'Titan', 'Ice', 2575, 5, 1221870, false);
INSERT INTO public.moon VALUES (6, 'Triton', 'Ice', 1353.4, 6, 354760, false);
INSERT INTO public.moon VALUES (7, 'Europa', 'Ice', 1560.7, 4, 671034, false);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Ice', 252.1, 5, 238037, false);
INSERT INTO public.moon VALUES (9, 'IO', 'Rocky', 1821.6, 4, 421700, false);
INSERT INTO public.moon VALUES (10, 'Callisto', 'Ice', 2410.3, 4, 1882700, false);
INSERT INTO public.moon VALUES (11, 'Tethys', 'Ice', 536.3, 5, 294660, false);
INSERT INTO public.moon VALUES (12, 'Rhea', 'Ice', 763.5, 5, 527040, false);
INSERT INTO public.moon VALUES (13, 'Dione', 'Ice', 561.4, 5, 377400, false);
INSERT INTO public.moon VALUES (14, 'Iapetus', 'Ice', 735.6, 5, 3561300, false);
INSERT INTO public.moon VALUES (15, 'Charon', 'Ice', 606, 6, 19591, false);
INSERT INTO public.moon VALUES (16, 'Miranda', 'Rocky', 235.8, 6, 129390, false);
INSERT INTO public.moon VALUES (17, 'Umbriel', 'Ice', 584.7, 6, 266000, false);
INSERT INTO public.moon VALUES (18, 'Ariel', 'Ice', 578.9, 6, 191020, false);
INSERT INTO public.moon VALUES (19, 'Titania', 'Ice', 788.4, 6, 436300, false);
INSERT INTO public.moon VALUES (20, 'Oberon', 'Ice', 761.4, 6, 583500, false);
INSERT INTO public.moon VALUES (21, 'Luna', 'Terrestrial', 1737.5, 1, 384400, false);
INSERT INTO public.moon VALUES (22, 'Phoebe', 'Ice', 106.6, 4, 12952000, false);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 'Terrestrial', 5972000000000000000000000, 1, 6371, 149600000, 'Nitrogen, Oxygen');
INSERT INTO public.planet VALUES (2, 'Mars', 'Terrestrial', 639000000000000000000000, 1, 3389.5, 227900000, 'Carbon Dioxide');
INSERT INTO public.planet VALUES (3, 'Venus', 'Terrestrial', 4867000000000000000000000, 1, 6051.8, 108200000, 'Carbon Dioxide, Nitrogen');
INSERT INTO public.planet VALUES (4, 'Jupiter', 'Gas Giant', 1898000000000000000000000000, 2, 69911, 778600000, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (5, 'Saturn', 'Gas Giant', 568300000000000000000000000, 2, 58232, 1430000000, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (6, 'Neptune', 'Ice Giant', 102400000000000000000000000, 5, 24622, 4500000000, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (7, 'Pluto', 'Dwarf', 13090000000000000000000, 6, 1188.3, 5910000000, 'Nitrogen, Methane');
INSERT INTO public.planet VALUES (8, 'Kepler-452b', 'Terrestrial', 5000000000000000000000000, 6, 6371, 149600000, 'Unknown');
INSERT INTO public.planet VALUES (9, 'Gliese 581d', 'Terrestrial', 5600000000000000000000000, 6, 6371, 149600000, 'Unknown');
INSERT INTO public.planet VALUES (10, 'HD 189733b', 'Gas Giant', 11380000000000000000000000, 2, 69911, 778600000, 'Hydrogen, Helium');
INSERT INTO public.planet VALUES (11, 'Proxima Centauri b', 'Terrestrial', 13000000000000000000000000, 2, 6371, 149600000, 'Unknown');
INSERT INTO public.planet VALUES (12, 'WASP-12b', 'Gas Giant', 140000000000000000000000000000, 3, 69911, 778600000, 'Hydrogen, Helium');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 'G2V', 5778, 1989000000000000000000000000000, 1, 382800000000000000000000000, true);
INSERT INTO public.star VALUES (2, 'Sirius', 'A1V', 9940, 2063000000000000000000000000000, 2, 25.4, false);
INSERT INTO public.star VALUES (3, 'Alpha Centauri A', 'G2V', 5790, 11000000000000000000000000000000, 1, 1519000000000000000000000000, true);
INSERT INTO public.star VALUES (4, 'Alpha Centauri B', 'K0V', 5260, 9900000000000000000000000000000, 1, 526000000000000000000000000, true);
INSERT INTO public.star VALUES (5, 'Betelgeuse', 'M1-2Ia-Iab', 3500, 106000000000000000000000000000000, 4, 12000000000000000000000000000000, false);
INSERT INTO public.star VALUES (6, 'Vega', 'A0V', 9602, 24000000000000000000000000000000, 1, 4600000000000000000000000000, false);


--
-- Name: astronomical_event_event_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.astronomical_event_event_id_seq', 10, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: astronomical_event astronomical_event_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_name_key UNIQUE (name);


--
-- Name: astronomical_event astronomical_event_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.astronomical_event
    ADD CONSTRAINT astronomical_event_pkey PRIMARY KEY (astronomical_event_id);


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

