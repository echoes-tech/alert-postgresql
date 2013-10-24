--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-10-21 15:16:14 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 283 (class 1259 OID 397859)
-- Dependencies: 6
-- Name: T_ADDON_PACKAGE_PARAMETER_APP; Type: TABLE; Schema: public; Owner: echoes; Tablespace: 
--

CREATE TABLE "T_ADDON_PACKAGE_PARAMETER_APP" (
    "APP_ID" integer NOT NULL,
    version integer NOT NULL,
    "APP_PACKAGE_VERSION" text NOT NULL,
    "APP_ADDON_VERSION" text NOT NULL,
    "APP_CPP_MINIMUM_VERSION" text NOT NULL,
    "APP_DELETE" timestamp without time zone,
    "APP_ASA_ASA_ID" bigint NOT NULL,
    "APP_ASD_ASD_ID" bigint NOT NULL,
    "APP_ASR_ASR_ID" bigint NOT NULL,
    "APP_ADO_ADO_ID" bigint NOT NULL,
    "APP_APA_APA_ID" bigint NOT NULL
);


ALTER TABLE public."T_ADDON_PACKAGE_PARAMETER_APP" OWNER TO echoes;

--
-- TOC entry 284 (class 1259 OID 397865)
-- Dependencies: 6 283
-- Name: T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq; Type: SEQUENCE; Schema: public; Owner: echoes
--

CREATE SEQUENCE "T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq" OWNER TO echoes;

--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 284
-- Name: T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: echoes
--

ALTER SEQUENCE "T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq" OWNED BY "T_ADDON_PACKAGE_PARAMETER_APP"."APP_ID";


--
-- TOC entry 2231 (class 2604 OID 397867)
-- Dependencies: 284 283
-- Name: APP_ID; Type: DEFAULT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP" ALTER COLUMN "APP_ID" SET DEFAULT nextval('"T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq"'::regclass);


--
-- TOC entry 2239 (class 0 OID 397859)
-- Dependencies: 283 2241
-- Data for Name: T_ADDON_PACKAGE_PARAMETER_APP; Type: TABLE DATA; Schema: public; Owner: echoes
--

COPY "T_ADDON_PACKAGE_PARAMETER_APP" ("APP_ID", version, "APP_PACKAGE_VERSION", "APP_ADDON_VERSION", "APP_DELETE", "APP_ASA_ASA_ID", "APP_ASD_ASD_ID", "APP_ASR_ASR_ID", "APP_ADO_ADO_ID", "APP_APA_APA_ID") FROM stdin;
\.


--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 284
-- Name: T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ADDON_PACKAGE_PARAMETER_APP_APP_ID_seq"', 1, false);


--
-- TOC entry 2233 (class 2606 OID 397869)
-- Dependencies: 283 283 2242
-- Name: T_ADDON_PACKAGE_PARAMETER_APP_pkey; Type: CONSTRAINT; Schema: public; Owner: echoes; Tablespace: 
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "T_ADDON_PACKAGE_PARAMETER_APP_pkey" PRIMARY KEY ("APP_ID");


--
-- TOC entry 2237 (class 2606 OID 397885)
-- Dependencies: 171 283 2242
-- Name: fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ADO; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ADO" FOREIGN KEY ("APP_ADO_ADO_ID") REFERENCES "T_ADDON_ADO"("ADO_ID");


--
-- TOC entry 2238 (class 2606 OID 397890)
-- Dependencies: 281 283 2242
-- Name: fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_APA; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_APA" FOREIGN KEY ("APP_APA_APA_ID") REFERENCES "T_ADDON_PACKAGE_APA"("APA_ID");


--
-- TOC entry 2234 (class 2606 OID 397870)
-- Dependencies: 194 283 2242
-- Name: fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASA; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASA" FOREIGN KEY ("APP_ASA_ASA_ID") REFERENCES "T_ASSET_ARCHITECTURE_ASA"("ASA_ID");


--
-- TOC entry 2235 (class 2606 OID 397875)
-- Dependencies: 283 198 2242
-- Name: fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASD; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASD" FOREIGN KEY ("APP_ASD_ASD_ID") REFERENCES "T_ASSET_DISTRIBUTION_ASD"("ASD_ID");


--
-- TOC entry 2236 (class 2606 OID 397880)
-- Dependencies: 283 200 2242
-- Name: fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASR; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_PACKAGE_PARAMETER_APP"
    ADD CONSTRAINT "fk_T_ADDON_PACKAGE_PARAMETER_APP_APP_ASR" FOREIGN KEY ("APP_ASR_ASR_ID") REFERENCES "T_ASSET_RELEASE_ASR"("ASR_ID");


-- Completed on 2013-10-21 15:16:14 CEST

--
-- PostgreSQL database dump complete
--

