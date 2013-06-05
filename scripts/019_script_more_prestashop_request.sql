--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-06-05 17:33:37 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2259 (class 0 OID 205371)
-- Dependencies: 243 2260 2263
-- Data for Name: T_SEARCH_SEA; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (3, NULL, false, 1, 0, 10, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (2, NULL, false, 1, 0, 11, 3, 8, 3, 60);
INSERT INTO "T_SEARCH_SEA" (version, "SEA_DELETE", "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (1, NULL, false, 1, 0, 12, 3, 8, 3, 60);


--
-- TOC entry 2247 (class 0 OID 205212)
-- Dependencies: 206 2252 2259 2263
-- Data for Name: T_INFORMATION_INF; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'nbCommandes', NULL, true, NULL, 10, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Montant_Total_Paniers_NC_HT', NULL, true, NULL, 11, 3, 8, 1, 12, NULL);
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DELETE", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'Produit_Le_Plus_Vendu', NULL, false, NULL, 12, 3, 8, 1, 4, NULL);


--
-- TOC entry 2258 (class 0 OID 205365)
-- Dependencies: 242 2259 2256 2263
-- Data for Name: T_SEARCH_PARAMETER_VALUE_SEV; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, 'select count(id_order) as nbCommandes from  ps_orders;', NULL, 10, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (1, 'select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)) as MontantTotalPaniersNC_HT from ps_cart_product, ps_product, ps_product_attribute WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);', NULL, 11, 3, 8, 2);
INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEV_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, 'select ps_product_lang.name as ProduitLePlusAchete, count(product_quantity) as nb from ps_product_lang, ps_order_detail where ps_product_lang.id_product=ps_order_detail.product_id group by ps_product_lang.name order by nb DESC limit 1;', NULL, 12, 3, 8, 2);



--
-- TOC entry 2262 (class 0 OID 205382)
-- Dependencies: 246 2259 2252 2263
-- Data for Name: T_SEARCH_UNIT_SEU; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 10, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 11, 3, 8, 1, 12);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEU_DELETE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, NULL, 12, 3, 8, 1, 4);


-- Completed on 2013-06-05 17:33:39 CEST

--
-- PostgreSQL database dump complete
--

