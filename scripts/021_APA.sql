--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-10-09 17:25:06 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 277 (class 1259 OID 381613)
-- Dependencies: 6
-- Name: T_ADDON_PACKAGE_APA; Type: TABLE; Schema: public; Owner: echoes; Tablespace: 
--

CREATE TABLE "T_ADDON_PACKAGE_APA" (
    "APA_ID" integer NOT NULL,
    version integer NOT NULL,
    "APA_FILENAME" text NOT NULL,
    "APA_DELETE" timestamp without time zone
);


ALTER TABLE public."T_ADDON_PACKAGE_APA" OWNER TO echoes;

--
-- TOC entry 278 (class 1259 OID 381619)
-- Dependencies: 277 6
-- Name: T_ADDON_PACKAGE_APA_APA_ID_seq; Type: SEQUENCE; Schema: public; Owner: echoes
--

CREATE SEQUENCE "T_ADDON_PACKAGE_APA_APA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."T_ADDON_PACKAGE_APA_APA_ID_seq" OWNER TO echoes;

--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 278
-- Name: T_ADDON_PACKAGE_APA_APA_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: echoes
--

ALTER SEQUENCE "T_ADDON_PACKAGE_APA_APA_ID_seq" OWNED BY "T_ADDON_PACKAGE_APA"."APA_ID";


--
-- TOC entry 2231 (class 2604 OID 381621)
-- Dependencies: 278 277
-- Name: APA_ID; Type: DEFAULT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_APA" ALTER COLUMN "APA_ID" SET DEFAULT nextval('"T_ADDON_PACKAGE_APA_APA_ID_seq"'::regclass);


--
-- TOC entry 2234 (class 0 OID 381613)
-- Dependencies: 277 2236
-- Data for Name: T_ADDON_PACKAGE_APA; Type: TABLE DATA; Schema: public; Owner: echoes
--



--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 278
-- Name: T_ADDON_PACKAGE_APA_APA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ADDON_PACKAGE_APA_APA_ID_seq"', 1, false);


--
-- TOC entry 2233 (class 2606 OID 381623)
-- Dependencies: 277 277 2237
-- Name: T_ADDON_PACKAGE_APA_pkey; Type: CONSTRAINT; Schema: public; Owner: echoes; Tablespace: 
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_APA"
    ADD CONSTRAINT "T_ADDON_PACKAGE_APA_pkey" PRIMARY KEY ("APA_ID");


-- Completed on 2013-10-09 17:25:06 CEST

--
-- PostgreSQL database dump complete
--

