--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-10-21 15:16:02 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 279 (class 1259 OID 397817)
-- Dependencies: 6
-- Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP; Type: TABLE; Schema: public; Owner: echoes; Tablespace: 
--

CREATE TABLE "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP" (
    "CPP_ID" integer NOT NULL,
    version integer NOT NULL,
    "CPP_PACKAGE_VERSION" text NOT NULL,
    "CPP_ADDON_COMMON_VERSION" text NOT NULL,
    "CPP_PPP_MINIMUM_VERSION" text NOT NULL,
    "CPP_DELETE" timestamp without time zone,
    "CPP_ASA_ASA_ID" bigint NOT NULL,
    "CPP_ASD_ASD_ID" bigint NOT NULL,
    "CPP_ASR_ASR_ID" bigint NOT NULL,
    "CPP_CPA_CPA_ID" bigint NOT NULL
);


ALTER TABLE public."T_ADDON_COMMON_PACKAGE_PARAMETER_CPP" OWNER TO echoes;

--
-- TOC entry 280 (class 1259 OID 397823)
-- Dependencies: 6 279
-- Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq; Type: SEQUENCE; Schema: public; Owner: echoes
--

CREATE SEQUENCE "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq" OWNER TO echoes;

--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 280
-- Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: echoes
--

ALTER SEQUENCE "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq" OWNED BY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"."CPP_ID";


--
-- TOC entry 2231 (class 2604 OID 397825)
-- Dependencies: 280 279
-- Name: CPP_ID; Type: DEFAULT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP" ALTER COLUMN "CPP_ID" SET DEFAULT nextval('"T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq"'::regclass);


--
-- TOC entry 2238 (class 0 OID 397817)
-- Dependencies: 279 2240
-- Data for Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP; Type: TABLE DATA; Schema: public; Owner: echoes
--

COPY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP" ("CPP_ID", version, "CPP_PACKAGE_VERSION", "CPP_ADDON_COMMON_VERSION", "CPP_DELETE", "CPP_ASA_ASA_ID", "CPP_ASD_ASD_ID", "CPP_ASR_ASR_ID", "CPP_CPA_CPA_ID") FROM stdin;
\.


--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 280
-- Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ID_seq"', 1, false);


--
-- TOC entry 2233 (class 2606 OID 397827)
-- Dependencies: 279 279 2241
-- Name: T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_pkey; Type: CONSTRAINT; Schema: public; Owner: echoes; Tablespace: 
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"
    ADD CONSTRAINT "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_pkey" PRIMARY KEY ("CPP_ID");


--
-- TOC entry 2235 (class 2606 OID 397833)
-- Dependencies: 194 279 2241
-- Name: fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASA; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"
    ADD CONSTRAINT "fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASA" FOREIGN KEY ("CPP_ASA_ASA_ID") REFERENCES "T_ASSET_ARCHITECTURE_ASA"("ASA_ID");


--
-- TOC entry 2236 (class 2606 OID 397838)
-- Dependencies: 198 279 2241
-- Name: fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASD; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"
    ADD CONSTRAINT "fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASD" FOREIGN KEY ("CPP_ASD_ASD_ID") REFERENCES "T_ASSET_DISTRIBUTION_ASD"("ASD_ID");


--
-- TOC entry 2237 (class 2606 OID 397843)
-- Dependencies: 200 279 2241
-- Name: fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASR; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"
    ADD CONSTRAINT "fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_ASR" FOREIGN KEY ("CPP_ASR_ASR_ID") REFERENCES "T_ASSET_RELEASE_ASR"("ASR_ID");


--
-- TOC entry 2234 (class 2606 OID 397828)
-- Dependencies: 279 277 2241
-- Name: fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_CPA; Type: FK CONSTRAINT; Schema: public; Owner: echoes
--

ALTER TABLE ONLY "T_ADDON_COMMON_PACKAGE_PARAMETER_CPP"
    ADD CONSTRAINT "fk_T_ADDON_COMMON_PACKAGE_PARAMETER_CPP_CPP_CPA" FOREIGN KEY ("CPP_CPA_CPA_ID") REFERENCES "T_ADDON_COMMON_PACKAGE_CPA"("CPA_ID");


-- Completed on 2013-10-21 15:16:03 CEST

--
-- PostgreSQL database dump complete
--

