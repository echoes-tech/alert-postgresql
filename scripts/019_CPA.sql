--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-10-08 17:48:36 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 279 (class 1259 OID 380073)
-- Dependencies: 6
-- Name: T_ADDON_COMMON_PACKAGE_CPA; Type: TABLE; Schema: public; Owner: echoes; Tablespace: 
--

CREATE TABLE "T_ADDON_COMMON_PACKAGE_CPA" (
    "CPA_ID" integer NOT NULL,
    version integer NOT NULL,
    "CPA_FILENAME" text NOT NULL,
    "CPA_DELETE" timestamp without time zone
);


ALTER TABLE public."T_ADDON_COMMON_PACKAGE_CPA" OWNER TO echoes;

--
-- TOC entry 280 (class 1259 OID 380079)
-- Dependencies: 6 279
-- Name: T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq; Type: SEQUENCE; Schema: public; Owner: echoes
--

CREATE SEQUENCE "T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq" OWNER TO echoes;

--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 280
-- Name: T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: echoes
--

ALTER SEQUENCE "T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq" OWNED BY "T_ADDON_COMMON_PACKAGE_CPA"."CPA_ID";


--
-- TOC entry 2231 (class 2604 OID 380081)
-- Dependencies: 280 279
-- Name: CPA_ID; Type: DEFAULT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_CPA" ALTER COLUMN "CPA_ID" SET DEFAULT nextval('"T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq"'::regclass);


--
-- TOC entry 2234 (class 0 OID 380073)
-- Dependencies: 279 2236
-- Data for Name: T_ADDON_COMMON_PACKAGE_CPA; Type: TABLE DATA; Schema: public; Owner: echoes
--



--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 280
-- Name: T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ADDON_COMMON_PACKAGE_CPA_CPA_ID_seq"', 1, false);


--
-- TOC entry 2233 (class 2606 OID 380083)
-- Dependencies: 279 279 2237
-- Name: T_ADDON_COMMON_PACKAGE_CPA_pkey; Type: CONSTRAINT; Schema: public; Owner: echoes; Tablespace: 
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_CPA"
    ADD CONSTRAINT "T_ADDON_COMMON_PACKAGE_CPA_pkey" PRIMARY KEY ("CPA_ID");


-- Completed on 2013-10-08 17:48:37 CEST

--
-- PostgreSQL database dump complete
--

