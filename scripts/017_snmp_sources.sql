--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-05-30 12:13:53 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;


--
-- TOC entry 2302 (class 0 OID 73616)
-- Dependencies: 247 2306
-- Data for Name: T_SOURCE_PARAMETER_SRP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (4, 49, 'text', 'passwd', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (6, 49, 'text', 'db', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (7, 49, 'text', 'port', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (2, 82, 'text', 'host', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (3, 82, 'text', 'user', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (1, 78, 'text', 'path', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (13, 116, 'text', 'privPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (8, 116, 'text', 'community', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (9, 116, 'text', 'version', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (10, 116, 'text', 'authProto', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (11, 116, 'text', 'authPass', NULL);
INSERT INTO "T_SOURCE_PARAMETER_SRP" ("SRP_ID", version, "SRP_FORMAT", "SRP_NAME", "SRP_DELETE") VALUES (12, 116, 'text', 'privProto', NULL);


--
-- TOC entry 2282 (class 0 OID 73265)
-- Dependencies: 162 2302 2286 2306
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
-- TOC entry 2299 (class 0 OID 73605)
-- Dependencies: 244 2306
-- Data for Name: T_SEARCH_TYPE_STY; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_TYPE_STY" ("STY_ID", version, "STY_NAME", "STY_DELETE") VALUES (4, 99, 'regex_oid', NULL);
INSERT INTO "T_SEARCH_TYPE_STY" ("STY_ID", version, "STY_NAME", "STY_DELETE") VALUES (5, 99, 'oid', NULL);


--
-- TOC entry 2283 (class 0 OID 73268)
-- Dependencies: 163 2286 2299 2306
-- Data for Name: TJ_ADO_STY; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_ADO_STY" ("T_ADDON_ADO_ADO_ID", "T_SEARCH_TYPE_STY_STY_ID") VALUES (5, 4);
INSERT INTO "TJ_ADO_STY" ("T_ADDON_ADO_ADO_ID", "T_SEARCH_TYPE_STY_STY_ID") VALUES (5, 5);


--
-- TOC entry 2293 (class 0 OID 73580)
-- Dependencies: 238 2306
-- Data for Name: T_PROBE_PRB; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PROBE_PRB" ("PRB_ID", version, "PRB_CERT", "PRB_NAME", "PRB_DELETE", "PRB_ORG_ORG_ID", "PRB_PPP_PPP_ID") VALUES (49, 0, '', 'Probe_fai_server-fai-cisco', NULL, 46, NULL);
INSERT INTO "T_PROBE_PRB" ("PRB_ID", version, "PRB_CERT", "PRB_NAME", "PRB_DELETE", "PRB_ORG_ORG_ID", "PRB_PPP_PPP_ID") VALUES (50, 1, '', 'Probe_hebergeur_server-prestashop', NULL, 46, 10);


--
-- TOC entry 2288 (class 0 OID 73403)
-- Dependencies: 196 2293 2306
-- Data for Name: T_ASSET_AST; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_ASSET_AST" ("AST_ID", version, "AST_NAME", "AST_DELETE", "AST_IS_HOST", "AST_PRB_PRB_ID", "AST_ASA_ASA_ID", "AST_ASD_ASD_ID", "AST_ASR_ASR_ID", "AST_ORG_ORG_ID") VALUES (49, 0, 'server-fai-cisco', NULL, true, 49, NULL, NULL, NULL, 46);
INSERT INTO "T_ASSET_AST" ("AST_ID", version, "AST_NAME", "AST_DELETE", "AST_IS_HOST", "AST_PRB_PRB_ID", "AST_ASA_ASA_ID", "AST_ASD_ASD_ID", "AST_ASR_ASR_ID", "AST_ORG_ORG_ID") VALUES (50, 1, 'server-prestashop', NULL, true, 50, 2, 2, 11, 46);


--
-- TOC entry 2291 (class 0 OID 73556)
-- Dependencies: 232 2306
-- Data for Name: T_PLUGIN_PLG; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_PLUGIN_PLG" ("PLG_ID", version, "PLG_DESC", "PLG_NAME", "PLG_DELETE") VALUES (7, 62, 'Plugin de supervision de routeur Cisco c2691 et c7200', 'Cisco', NULL);
INSERT INTO "T_PLUGIN_PLG" ("PLG_ID", version, "PLG_DESC", "PLG_NAME", "PLG_DELETE") VALUES (8, 96, 'Plugin de supervision d''un serveur Prestashop v1.5.4.0 (MySQL v5.1.66-0)', 'Prestashop', NULL);


--
-- TOC entry 2284 (class 0 OID 73271)
-- Dependencies: 164 2288 2291 2306
-- Data for Name: TJ_AST_PLG; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (49, 7);
INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (50, 1);
INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (50, 8);


--
-- TOC entry 2295 (class 0 OID 73588)
-- Dependencies: 240 2306
-- Data for Name: T_SEARCH_PARAMETER_SEP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_PARAMETER_SEP" ("SEP_ID", version, "SEP_FORMAT", "SEP_NAME", "SEP_DELETE") VALUES (3, 239, 'text', 'oid', NULL);


--
-- TOC entry 2285 (class 0 OID 73283)
-- Dependencies: 167 2299 2295 2306
-- Data for Name: TJ_STY_SEP; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "TJ_STY_SEP" ("T_SEARCH_TYPE_STY_STY_ID", "T_SEARCH_PARAMETER_SEP_SEP_ID") VALUES (4, 1);
INSERT INTO "TJ_STY_SEP" ("T_SEARCH_TYPE_STY_STY_ID", "T_SEARCH_PARAMETER_SEP_SEP_ID") VALUES (4, 3);
INSERT INTO "TJ_STY_SEP" ("T_SEARCH_TYPE_STY_STY_ID", "T_SEARCH_PARAMETER_SEP_SEP_ID") VALUES (5, 3);


--
-- TOC entry 2310 (class 0 OID 0)
-- Dependencies: 172
-- Name: T_ADDON_ADO_ADO_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ADDON_ADO_ADO_ID_seq"', 5, true);


--
-- TOC entry 2311 (class 0 OID 0)
-- Dependencies: 197
-- Name: T_ASSET_AST_AST_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_ASSET_AST_AST_ID_seq"', 50, true);


--
-- TOC entry 2305 (class 0 OID 73630)
-- Dependencies: 250 2291 2286 2306
-- Data for Name: T_SOURCE_SRC; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (5, '2013-05-29 13:01:22.001515', 1, 8, 4);
INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (6, '2013-05-30 09:22:27.78473', 3, 7, 5);
INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (1, NULL, 4, 7, 5);
INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (9, '2013-05-30 09:32:49.705533', 2, 8, 4);
INSERT INTO "T_SOURCE_SRC" (version, "SRC_DELETE", "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (2, NULL, 3, 8, 4);


--
-- TOC entry 2298 (class 0 OID 73602)
-- Dependencies: 243 2299 2305 2306
-- Data for Name: T_SEARCH_SEA; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (7, '2013-05-30 09:22:27.734848', false, 1, 0, 10, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (7, NULL, false, 1, 0, 2, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.739011', false, 1, 0, 5, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (6, '2013-05-30 09:22:27.744639', false, 1, 0, 11, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (5, '2013-05-30 09:22:27.751695', false, 1, 0, 12, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (4, '2013-05-30 09:22:27.759789', false, 1, 0, 13, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.76483', false, 1, 0, 6, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (3, '2013-05-30 09:22:27.771943', false, 1, 0, 14, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (6, NULL, false, 1, 0, 3, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (15, '2013-05-30 09:32:49.69872', false, 1, 0, 3, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (8, '2013-05-30 09:32:49.687464', false, 2, 1, 6, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (5, NULL, false, 1, 0, 4, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (4, NULL, false, 1, 0, 5, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (3, NULL, false, 1, 0, 6, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (2, NULL, false, 1, 0, 7, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.776964', false, 1, 0, 7, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.781004', false, 1, 0, 8, 3, 7, 4, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.70924', false, 1, 0, 1, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.784727', false, 1, 0, 3, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (19, '2013-05-30 09:32:49.692044', false, 1, 0, 1, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (1, NULL, false, 1, 0, 8, 4, 7, 4, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.714201', false, 1, 0, 4, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:22:27.718213', false, 1, 0, 2, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (8, '2013-05-30 09:22:27.727056', false, 1, 0, 9, 3, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (17, '2013-05-30 09:32:49.695433', false, 1, 0, 2, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (14, '2013-05-30 09:32:49.702279', false, 1, 0, 4, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (13, '2013-05-30 09:32:49.70553', false, 1, 0, 5, 2, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (8, NULL, false, 1, 0, 1, 4, 7, 5, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (8, NULL, false, 1, 0, 1, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (7, NULL, false, 1, 0, 2, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (6, NULL, false, 1, 0, 3, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (5, NULL, false, 1, 0, 4, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (4, NULL, false, 2, 1, 5, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (3, NULL, false, 1, 0, 6, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (1, NULL, false, 2, 1, 7, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (2, NULL, false, 1, 0, 8, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (1, NULL, false, 1, 0, 9, 3, 8, 3, 60);

--
-- TOC entry 2290 (class 0 OID 73443)
-- Dependencies: 206 2298 2306
-- Data for Name: T_INFORMATION_INF; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'State-FastEthernet0-1', NULL, true, NULL, 2, 4, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'State-FastEthernet0-1', '2013-05-30 09:22:27.734844', true, NULL, 10, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'State-FastEthernet0-0', NULL, true, NULL, 1, 4, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'Traffic-IN-FastEthernet0-0', '2013-05-30 09:22:27.744636', true, 'calculate_avg_iva', 11, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Traffic-IN-FastEthernet0-0', NULL, true, 'calculate_avg_iva', 3, 4, 7, 1, 9, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'State-FastEthernet0-0', '2013-05-30 09:22:27.727053', true, NULL, 9, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'Traffic-OUT-FastEthernet0-0', '2013-05-30 09:22:27.751693', true, 'calculate_avg_iva', 12, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'Traffic-IN-FastEthernet0-1', '2013-05-30 09:22:27.759787', true, 'calculate_avg_iva', 13, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (1, 'Traffic-OUT-FastEthernet0-1', '2013-05-30 09:22:27.77194', true, 'calculate_avg_iva', 14, 3, 7, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Traffic-OUT-FastEthernet0-0', NULL, true, 'calculate_avg_iva', 4, 4, 7, 1, 9, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Traffic-IN-FastEthernet0-1', NULL, true, 'calculate_avg_iva', 5, 4, 7, 1, 9, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Traffic-OUT-FastEthernet0-1', NULL, true, 'calculate_avg_iva', 6, 4, 7, 1, 9, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'CPU-Usage', NULL, true, NULL, 7, 4, 7, 1, 7, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'UPtime-Router', NULL, true, NULL, 8, 4, 7, 1, 8, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Nb-Paniers-Non-Convertis', NULL, true, NULL, 1, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'MontantTotalPaniersAbandonnes', NULL, true, NULL, 2, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Pourcentage-ChiffreAffaire-EnPlus-Si-Paniers-Tous-Convertis', NULL, true, NULL, 3, 3, 8, 1, 7, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Montant-PanierNC-Moyen', NULL, true, NULL, 4, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Nom-Produit', NULL, false, NULL, 5, 3, 8, 1, 4, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Nb-Stock-Produit', NULL, true, NULL, 5, 3, 8, 2, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Nb-Commandes-Non-Livrees-Apres-Trois-Jours', NULL, true, NULL, 6, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Nom-Produit-A-Expedier', NULL, false, NULL, 7, 3, 8, 1, 4, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Quantite-Produit-A-Expedier', NULL, true, NULL, 7, 3, 8, 2, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Etat-Prestashop', NULL, true, NULL, 8, 3, 8, 1, 14, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Etat-Https', NULL, true, NULL, 9, 3, 8, 1, 14, NULL);

--
-- TOC entry 2312 (class 0 OID 0)
-- Dependencies: 233
-- Name: T_PLUGIN_PLG_PLG_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PLUGIN_PLG_PLG_ID_seq"', 8, true);


--
-- TOC entry 2313 (class 0 OID 0)
-- Dependencies: 239
-- Name: T_PROBE_PRB_PRB_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_PROBE_PRB_PRB_ID_seq"', 50, true);


--
-- TOC entry 2314 (class 0 OID 0)
-- Dependencies: 241
-- Name: T_SEARCH_PARAMETER_SEP_SEP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_PARAMETER_SEP_SEP_ID_seq"', 3, true);


--
-- TOC entry 2297 (class 0 OID 73596)
-- Dependencies: 242 2298 2295 2306
-- Data for Name: T_SEARCH_PARAMETER_VALUE_SEV; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.16.1', NULL, 5, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (6, '1.3.6.1.2.1.2.2.1.10.1', NULL, 4, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (5, '1.3.6.1.4.1.9.2.1.56.0', NULL, 3, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.16.2', NULL, 7, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (5, '[0-9]{3,}', NULL, 8, 3, 7, 1);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (3, '1.3.6.1.2.1.2.2.1.8.1', NULL, 1, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (3, '1.3.6.1.2.1.2.2.1.8.2', NULL, 2, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.10.2', NULL, 6, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (5, '1.3.6.1.2.1.1.3.0', NULL, 8, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (6, 'select ps_product_lang.name, count(product_quantity) from ps_product_lang, ps_order_detail where ps_product_lang.id_product=ps_order_detail.product_id group by ps_product_lang.name order by nb DESC limit 1;', NULL, 6, 2, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, 'select avg(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 5, 2, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.10.1', NULL, 3, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, 'select count(ps_orders.reference) as NbCommandesNonLivreesDepuisPlusDeTroisJours from ps_orders where ps_orders.current_state=2 AND TO_DAYS(NOW())-TO_DAYS(ps_orders.date_add) > 3;', NULL, 6, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.10.2', NULL, 5, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '1.3.6.1.2.1.2.2.1.16.2', NULL, 6, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (5, '1.3.6.1.2.1.2.2.1.8.1', NULL, 1, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (6, 'select avg(total_paid) from ps_orders where TO_DAYS(NOW()) - TO_DAYS(date_add) <= 30;', NULL, 3, 2, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (4, 'select (b/(A.a-B.b))*100 from (select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as a from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart IN (select ps_orders.id_cart from ps_orders)) as A ,(select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as b from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders)) as B;', NULL, 4, 2, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, 'select (b/(A.a-B.b))*100 as PourcentageBeneficeSurCASiPaniersTousConvertis from (select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as a from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart IN (select ps_orders.id_cart from ps_orders)) as A ,(select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as b from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders)) as B;', NULL, 3, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.8.2', NULL, 10, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.8.1', NULL, 9, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '1.3.6.1.2.1.2.2.1.16.1', NULL, 12, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.10.1', NULL, 11, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.2.2.1.10.2', NULL, 13, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '1.3.6.1.2.1.2.2.1.16.2', NULL, 14, 3, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '[0-9]{3,}', NULL, 8, 4, 7, 1);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, '1.3.6.1.2.1.1.3.0', NULL, 8, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.2.1.2.2.1.8.2', NULL, 2, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, '1.3.6.1.4.1.9.2.1.56.0', NULL, 7, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, 'select avg(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as MontantPanierNCMoyen from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 4, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '1.3.6.1.2.1.2.2.1.16.1', NULL, 4, 4, 7, 3);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (7, 'select count(ps_cart.id_cart) from ps_cart WHERE TO_DAYS(CURRENT_DATE())-TO_DAYS(ps_cart.date_add)<=7 AND ps_cart.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 2, 2, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, 'select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as MontantTotalPaniersAbandonn?sTTC from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 2, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (2, 'select ps_product_lang.name as NomProduit, sum(ps_stock_available.quantity) as NbProduitEnStock from ps_product_lang, ps_stock_available where ps_stock_available.id_product = ps_product_lang.id_product group by NomProduit;', NULL, 5, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (4, 'select count(ps_cart.id_cart) as NbPaniersNC from ps_cart WHERE ps_cart.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 1, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, 'select ps_product_lang.name as NomProduitAExpedier, sum(ps_order_detail.product_quantity) as QuantiteProduitAExpedier from ps_product_lang, ps_order_detail, ps_orders where ps_product_lang.id_product=ps_order_detail.product_id AND ps_order_detail.id_order=ps_orders.id_order AND (ps_orders.current_state=2 OR ps_orders.current_state=3 OR ps_orders.current_state=12) group by ps_product_lang.name;', NULL, 7, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, 'select value as EtatHttps from ps_configuration where name = ''PS_SSL_ENABLED'';', NULL, 9, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, 'select value as EtatPrestashop from ps_configuration where name = ''PS_SHOP_ENABLE'';', NULL, 8, 3, 8, 2);


--
-- TOC entry 2315 (class 0 OID 0)
-- Dependencies: 245
-- Name: T_SEARCH_TYPE_STY_STY_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SEARCH_TYPE_STY_STY_ID_seq"', 5, true);


--
-- TOC entry 2301 (class 0 OID 73613)
-- Dependencies: 246 2298 2306
-- Data for Name: T_SEARCH_UNIT_SEU; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 9, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 10, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 11, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 12, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 13, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 14, 3, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 1, 4, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 2, 4, 7, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 3, 4, 7, 1, 9);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 4, 4, 7, 1, 9);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 5, 4, 7, 1, 9);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 6, 4, 7, 1, 9);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 7, 4, 7, 1, 7);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 8, 4, 7, 1, 8);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 1, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 2, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 3, 3, 8, 1, 7);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 4, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 5, 3, 8, 1, 4);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 5, 3, 8, 2, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 6, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 7, 3, 8, 1, 4);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 7, 3, 8, 2, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 8, 3, 8, 1, 14);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 9, 3, 8, 1, 14);

--
-- TOC entry 2316 (class 0 OID 0)
-- Dependencies: 248
-- Name: T_SOURCE_PARAMETER_SRP_SRP_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_SOURCE_PARAMETER_SRP_SRP_ID_seq"', 13, true);


--
-- TOC entry 2304 (class 0 OID 73624)
-- Dependencies: 249 2305 2302 2306
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
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'Croagteld8', NULL, 4, 2, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'prestashop_shop-echoes-technologies-com', NULL, 6, 2, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '3306', NULL, 7, 2, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'localhost', NULL, 2, 2, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'root', NULL, 3, 2, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 13, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'public', NULL, 8, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '1', NULL, 9, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 10, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 11, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 12, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '10.100.200.101', NULL, 2, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'na', NULL, 3, 4, 7);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'Croagteld8', NULL, 4, 3, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'prestashop_shop-echoes-technologies-com', NULL, 6, 3, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, '3306', NULL, 7, 3, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'localhost', NULL, 2, 3, 8);
INSERT INTO "T_SOURCE_PARAMETER_VALUE_SPV" (version, "SPV_VALUE", "SPV_DELETE", "SRP_ID_SRP_ID", "SRC_ID", "PLG_ID_PLG_ID") VALUES (0, 'root', NULL, 3, 3, 8);


-- Completed on 2013-05-30 12:13:53 CEST

--
-- PostgreSQL database dump complete
--

