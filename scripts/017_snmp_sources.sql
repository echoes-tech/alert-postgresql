--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-05-27 11:53:35 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2261 (class 0 OID 69957)
-- Dependencies: 247 2265
-- Data for Name: T_SOURCE_PARAMETER_SRP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (8, 6, 'text', 'community', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (9, 6, 'text', 'version', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (10, 6, 'text', 'authProto', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (11, 6, 'text', 'authPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (12, 6, 'text', 'privProto', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (13, 6, 'text', 'privPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (1, 74, 'text', 'path', NULL);


--
-- TOC entry 2250 (class 0 OID 69607)
-- Dependencies: 162 2261 2265
-- Data for Name: TJ_ADO_SRP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (3, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (8, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (9, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (10, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (11, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (12, 5);
INSERT INTO "TJ_ADO_SRP" ("T_SOURCE_PARAMETER_SRP_SRP_ID", "T_ADDON_ADO_ADO_ID") VALUES (13, 5);


--
-- TOC entry 2258 (class 0 OID 69946)
-- Dependencies: 244 2265
-- Data for Name: T_SEARCH_TYPE_STY; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_TYPE_STY" ("STY_ID", version, "STY_NAME", "STY_DELETE") VALUES (4, 6, 'regex_oid', NULL);
INSERT INTO "T_SEARCH_TYPE_STY" ("STY_ID", version, "STY_NAME", "STY_DELETE") VALUES (5, 6, 'oid', NULL);


--
-- TOC entry 2251 (class 0 OID 69610)
-- Dependencies: 163 2258 2265
-- Data for Name: TJ_ADO_STY; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_ADO_STY" ("T_ADDON_ADO_ADO_ID", "T_SEARCH_TYPE_STY_STY_ID") VALUES (5, 4);
INSERT INTO "TJ_ADO_STY" ("T_ADDON_ADO_ADO_ID", "T_SEARCH_TYPE_STY_STY_ID") VALUES (5, 5);


--
-- TOC entry 2252 (class 0 OID 69897)
-- Dependencies: 232 2265
-- Data for Name: T_PLUGIN_PLG; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PLUGIN_PLG" ("PLG_ID", version, "PLG_DESC", "PLG_NAME", "PLG_DELETE") VALUES (7, 2, 'Plugin de supervision de routeur Cisco c2691 et c7200', 'Cisco', NULL);


--
-- TOC entry 2269 (class 0 OID 0)
-- Dependencies: 233
-- Name: T_PLUGIN_PLG_PLG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PLUGIN_PLG_PLG_ID_seq"', 7, true);


--
-- TOC entry 2254 (class 0 OID 69929)
-- Dependencies: 240 2265
-- Data for Name: T_SEARCH_PARAMETER_SEP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_PARAMETER_SEP" ("SEP_ID", version, "SEP_FORMAT", "SEP_NAME", "SEP_DELETE") VALUES (3, 14, 'text', 'oid', NULL);


--
-- TOC entry 2270 (class 0 OID 0)
-- Dependencies: 241
-- Name: T_SEARCH_PARAMETER_SEP_SEP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_PARAMETER_SEP_SEP_ID_seq"', 3, true);


--
-- TOC entry 2264 (class 0 OID 69971)
-- Dependencies: 250 2252 2265
-- Data for Name: T_SOURCE_SRC; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (0, NULL, 1, 7, 5);



--
-- TOC entry 2271 (class 0 OID 0)
-- Dependencies: 245
-- Name: T_SEARCH_TYPE_STY_STY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_TYPE_STY_STY_ID_seq"', 5, true);


--
-- TOC entry 2272 (class 0 OID 0)
-- Dependencies: 248
-- Name: T_SOURCE_PARAMETER_SRP_SRP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SOURCE_PARAMETER_SRP_SRP_ID_seq"', 13, true);


--
-- TOC entry 2263 (class 0 OID 69965)
-- Dependencies: 249 2264 2261 2265
-- Data for Name: T_SOURCE_PARAMETER_VALUE_SPV; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 3, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'public', NULL, 8, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '2c', NULL, 9, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 10, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 11, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 12, 1, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 13, 1, 7);


-- Completed on 2013-05-27 11:53:35 CEST

--
-- PostgreSQL database dump complete
--

