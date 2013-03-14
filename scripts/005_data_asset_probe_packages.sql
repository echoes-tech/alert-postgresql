--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.7
-- Dumped by pg_dump version 9.1.8
-- Started on 2013-03-11 16:28:09 CET

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2220 (class 0 OID 0)
-- Dependencies: 263
-- Name: T_ASSET_ARCHITECTURE_AAR_ASA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ASSET_ARCHITECTURE_AAR_ASA_ID_seq"', 3, true);


--
-- TOC entry 2207 (class 0 OID 22575)
-- Dependencies: 264 2216
-- Data for Name: T_ASSET_ARCHITECTURE_ASA; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_ASSET_ARCHITECTURE_ASA" ("ASA_ID", version, "ASA_NAME", "ASA_DELETE") VALUES (2, 0, 'x86_64', NULL);
INSERT INTO "T_ASSET_ARCHITECTURE_ASA" ("ASA_ID", version, "ASA_NAME", "ASA_DELETE") VALUES (3, 0, 'i686', NULL);
INSERT INTO "T_ASSET_ARCHITECTURE_ASA" ("ASA_ID", version, "ASA_NAME", "ASA_DELETE") VALUES (1, 0, 'i*86', NULL);


--
-- TOC entry 2209 (class 0 OID 22586)
-- Dependencies: 266 2216
-- Data for Name: T_ASSET_DISTRIBUTION_ASD; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_ASSET_DISTRIBUTION_ASD" ("ASD_ID", version, "ASD_NAME", "ASD_DELETE") VALUES (1, 0, 'CentOS', NULL);
INSERT INTO "T_ASSET_DISTRIBUTION_ASD" ("ASD_ID", version, "ASD_NAME", "ASD_DELETE") VALUES (2, 0, 'Debian', NULL);
INSERT INTO "T_ASSET_DISTRIBUTION_ASD" ("ASD_ID", version, "ASD_NAME", "ASD_DELETE") VALUES (3, 0, 'Ubuntu', NULL);


--
-- TOC entry 2221 (class 0 OID 0)
-- Dependencies: 265
-- Name: T_ASSET_DISTRIBUTION_ASD_ASD_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ASSET_DISTRIBUTION_ASD_ASD_ID_seq"', 3, true);


--
-- TOC entry 2211 (class 0 OID 22597)
-- Dependencies: 268 2216
-- Data for Name: T_ASSET_RELEASE_ASR; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (3, 0, '12.04', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (4, 0, '12.10', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (5, 0, '6.3', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (6, 0, '5.8', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (1, 0, '5.*', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (2, 0, '6.*', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (7, 0, '6.0.6', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (9, 0, '6.0.*', NULL);
INSERT INTO "T_ASSET_RELEASE_ASR" ("ASR_ID", version, "ASR_NAME", "ASR_DELETE") VALUES (10, 0, '12.04.*', NULL);


--
-- TOC entry 2222 (class 0 OID 0)
-- Dependencies: 267
-- Name: T_ASSET_RELEASE_ASR_ASR_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ASSET_RELEASE_ASR_ASR_ID_seq"', 10, true);


--
-- TOC entry 2213 (class 0 OID 22608)
-- Dependencies: 270 2216
-- Data for Name: T_PROBE_PACKAGE_PPA; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (2, 0, 'ea-probe-0.1.0.beta3-1.CentOS-5.i386.rpm', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (3, 0, 'ea-probe-0.1.0.beta3-1.CentOS-5.x86_64.rpm', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (4, 0, 'ea-probe-0.1.0.beta3-1.CentOS-6.i386.rpm', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (7, 0, 'ea-probe-0.1.0.beta3-1.CentOS-6.x86_64.rpm', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (8, 0, 'ea-probe_0.1.0.beta3-1_Debian_Squeeze_amd64.deb', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (9, 0, 'ea-probe_0.1.0.beta3-1_Debian_Squeeze_i386.deb', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (10, 0, 'ea-probe_0.1.0.beta3-1_Ubuntu_Precise_amd64.deb', NULL);
INSERT INTO "T_PROBE_PACKAGE_PPA" ("PPA_ID", version, "PPA_FILENAME", "PPA_DELETE") VALUES (12, 0, 'ea-probe_0.1.0.beta3-1_Ubuntu_Precise_i386.deb', NULL);


--
-- TOC entry 2215 (class 0 OID 22619)
-- Dependencies: 272 2213 2211 2209 2207 2216
-- Data for Name: T_PROBE_PACKAGE_PARAMETER_PPP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (4, 0, '1', '0.1.0.beta3', NULL, 1, 1, 1, 2);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (7, 0, '1', '0.1.0.beta3', NULL, 2, 1, 1, 3);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (8, 0, '1', '0.1.0.beta3', NULL, 1, 1, 2, 4);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (9, 0, '1', '0.1.0.beta3', NULL, 2, 1, 2, 7);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (12, 0, '1', '0.1.0.beta3', NULL, 2, 3, 3, 10);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (13, 0, '1', '0.1.0.beta3', NULL, 1, 3, 3, 12);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (10, 0, '1', '0.1.0.beta3', NULL, 2, 2, 9, 8);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (11, 0, '1', '0.1.0.beta3', NULL, 1, 2, 9, 9);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (15, 0, '1', '0.1.0.beta3', NULL, 2, 3, 10, 10);
INSERT INTO "T_PROBE_PACKAGE_PARAMETER_PPP" ("PPP_ID", version, "PPP_PACKAGE_VERSION", "PPP_PROBE_VERSION", "PPP_DELETE", "PPP_ASA_ASA_ID", "PPP_ASD_ASD_ID", "PPP_ASR_ASR_ID", "PPP_PPA_PPA_ID") VALUES (16, 0, '1', '0.1.0.beta3', NULL, 1, 3, 10, 12);


--
-- TOC entry 2223 (class 0 OID 0)
-- Dependencies: 271
-- Name: T_PROBE_PACKAGE_PARAMETER_PPP_PPP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PROBE_PACKAGE_PARAMETER_PPP_PPP_ID_seq"', 16, true);


--
-- TOC entry 2224 (class 0 OID 0)
-- Dependencies: 269
-- Name: T_PROBE_PACKAGE_PPA_PPA_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PROBE_PACKAGE_PPA_PPA_ID_seq"', 12, true);


-- Completed on 2013-03-11 16:28:09 CET

--
-- PostgreSQL database dump complete
--

