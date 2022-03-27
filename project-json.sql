--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2 (Ubuntu 14.2-1.pgdg20.04+1)
-- Dumped by pg_dump version 14.2 (Ubuntu 14.2-1.pgdg20.04+1)

-- Started on 2022-03-20 12:09:29 PDT

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

--
-- TOC entry 3317 (class 1262 OID 17018)
-- Name: node; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE node WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.UTF-8';


ALTER DATABASE node OWNER TO postgres;

\connect node

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
-- TOC entry 210 (class 1259 OID 17020)
-- Name: libraries; Type: TABLE; Schema: public; Owner: lucky
--

CREATE TABLE public.libraries (
    id integer NOT NULL,
    libname character varying
);


ALTER TABLE public.libraries OWNER TO lucky;

--
-- TOC entry 209 (class 1259 OID 17019)
-- Name: libraries_id_seq; Type: SEQUENCE; Schema: public; Owner: lucky
--

CREATE SEQUENCE public.libraries_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.libraries_id_seq OWNER TO lucky;

--
-- TOC entry 3319 (class 0 OID 0)
-- Dependencies: 209
-- Name: libraries_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: lucky
--

ALTER SEQUENCE public.libraries_id_seq OWNED BY public.libraries.id;


--
-- TOC entry 3170 (class 2604 OID 17023)
-- Name: libraries id; Type: DEFAULT; Schema: public; Owner: lucky
--

ALTER TABLE ONLY public.libraries ALTER COLUMN id SET DEFAULT nextval('public.libraries_id_seq'::regclass);


--
-- TOC entry 3311 (class 0 OID 17020)
-- Dependencies: 210
-- Data for Name: libraries; Type: TABLE DATA; Schema: public; Owner: lucky
--

INSERT INTO public.libraries VALUES (1, 'concurrently');
INSERT INTO public.libraries VALUES (2, 'cors');
INSERT INTO public.libraries VALUES (3, 'express');
INSERT INTO public.libraries VALUES (4, 'http-proxy-middleware');
INSERT INTO public.libraries VALUES (5, 'nodemon');
INSERT INTO public.libraries VALUES (6, 'pg');
INSERT INTO public.libraries VALUES (7, 'uuid');


--
-- TOC entry 3320 (class 0 OID 0)
-- Dependencies: 209
-- Name: libraries_id_seq; Type: SEQUENCE SET; Schema: public; Owner: lucky
--

SELECT pg_catalog.setval('public.libraries_id_seq', 7, true);


--
-- TOC entry 3318 (class 0 OID 0)
-- Dependencies: 3317
-- Name: DATABASE node; Type: ACL; Schema: -; Owner: postgres
--

GRANT ALL ON DATABASE node TO lucky;


-- Completed on 2022-03-20 12:09:29 PDT

--
-- PostgreSQL database dump complete
--

