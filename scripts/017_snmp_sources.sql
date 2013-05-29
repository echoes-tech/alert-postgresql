--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-05-29 11:44:44 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;


--
-- TOC entry 2378 (class 0 OID 72393)
-- Dependencies: 247 2382
-- Data for Name: T_SOURCE_PARAMETER_SRP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (13, 83, 'text', 'privPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (8, 83, 'text', 'community', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (9, 83, 'text', 'version', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (10, 83, 'text', 'authProto', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (11, 83, 'text', 'authPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (12, 83, 'text', 'privProto', NULL);


--
-- TOC entry 2339 (class 0 OID 72043)
-- Dependencies: 162 2378 2343 2382
-- Data for Name: TJ_ADO_SRP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (3, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (8, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (9, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (10, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (11, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (12, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (13, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (2, 5);


--
-- TOC entry 2370 (class 0 OID 72357)
-- Dependencies: 238 2382
-- Data for Name: T_PROBE_PRB; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PROBE_PRB" ("PRB_ID", version, "PRB_CERT", "PRB_NAME", "PRB_DELETE", "PRB_ORG_ORG_ID", "PRB_PPP_PPP_ID") VALUES (49, 0, '', 'Probe_fai_server-fai-cisco', NULL, 46, NULL);


--
-- TOC entry 2366 (class 0 OID 72180)
-- Dependencies: 196 2370 2382
-- Data for Name: T_ASSET_AST; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_ASSET_AST" ("AST_ID", version, "AST_NAME", "AST_DELETE", "AST_IS_HOST", "AST_PRB_PRB_ID", "AST_ASA_ASA_ID", "AST_ASD_ASD_ID", "AST_ASR_ASR_ID", "AST_ORG_ORG_ID") VALUES (49, 0, 'server-fai-cisco', NULL, true, 49, NULL, NULL, NULL, 46);


--
-- TOC entry 2368 (class 0 OID 72333)
-- Dependencies: 232 2382
-- Data for Name: T_PLUGIN_PLG; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PLUGIN_PLG" ("PLG_ID", version, "PLG_DESC", "PLG_NAME", "PLG_DELETE") VALUES (7, 34, 'Plugin de supervision de routeur Cisco c2691 et c7200', 'Cisco', NULL);


--
-- TOC entry 2341 (class 0 OID 72049)
-- Dependencies: 164 2366 2368 2382
-- Data for Name: TJ_AST_PLG; Type: TABLE DATA; Schema: public; Owner: echoes
--


INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (49, 1);
INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (49, 7);


--
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 197
-- Name: T_ASSET_AST_AST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ASSET_AST_AST_ID_seq"', 49, true);


--
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 233
-- Name: T_PLUGIN_PLG_PLG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PLUGIN_PLG_PLG_ID_seq"', 7, true);


--
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 239
-- Name: T_PROBE_PRB_PRB_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PROBE_PRB_PRB_ID_seq"', 49, true);


--
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 241
-- Name: T_SEARCH_PARAMETER_SEP_SEP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_PARAMETER_SEP_SEP_ID_seq"', 3, true);


--
-- TOC entry 2381 (class 0 OID 72407)
-- Dependencies: 250 2368 2343 2382
-- Data for Name: T_SOURCE_SRC; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (1, NULL, 3, 7, 5);


--
-- TOC entry 2375 (class 0 OID 72379)
-- Dependencies: 243 2376 2381 2382
-- Data for Name: T_SEARCH_SEA; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (2, NULL, false, 1, 0, 8, 3, 7, 4, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (9, NULL, false, 1, 0, 1, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (8, NULL, false, 1, 0, 2, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (7, NULL, false, 1, 0, 3, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (6, NULL, false, 1, 0, 4, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (5, NULL, false, 1, 0, 5, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (4, NULL, false, 1, 0, 6, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (3, NULL, false, 1, 0, 7, 3, 7, 5, 60);


--
-- TOC entry 2374 (class 0 OID 72373)
-- Dependencies: 242 2375 2372 2382
-- Data for Name: T_SEARCH_PARAMETER_VALUE_SEV; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '[0-9]{3,}', NULL, 8, 3, 7, 1);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.8.2', NULL, 2, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.4.1.9.2.1.56.0', NULL, 3, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.16.2', NULL, 7, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.10.1', NULL, 4, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '1.3.6.1.2.1.2.2.1.10.2', NULL, 6, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.16.1', NULL, 5, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.8.1', NULL, 1, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.1.3.0', NULL, 8, 3, 7, 3);


--
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 245
-- Name: T_SEARCH_TYPE_STY_STY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_TYPE_STY_STY_ID_seq"', 5, true);


--
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 248
-- Name: T_SOURCE_PARAMETER_SRP_SRP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SOURCE_PARAMETER_SRP_SRP_ID_seq"', 13, true);


--
-- TOC entry 2380 (class 0 OID 72401)
-- Dependencies: 249 2381 2378 2382
-- Data for Name: T_SOURCE_PARAMETER_VALUE_SPV; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '10.100.200.101', NULL, 2, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 3, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 13, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'public', NULL, 8, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 10, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 11, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 12, 3, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '1', NULL, 9, 3, 7);


-- Completed on 2013-05-29 11:44:45 CEST

--
-- PostgreSQL database dump complete
--

