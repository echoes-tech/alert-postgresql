--
-- PostgreSQL database dump
--

-- Dumped from database version 9.1.9
-- Dumped by pg_dump version 9.1.9
-- Started on 2013-06-10 16:32:15 CEST

SET statement_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- TOC entry 2224 (class 0 OID 211408)
-- Dependencies: 211 2228
-- Data for Name: T_INFORMATION_UNIT_UNT; Type: TABLE DATA; Schema: public; Owner: echoes
--

INSERT INTO "T_INFORMATION_UNIT_UNT" ("INU_ID", version, "INU_NAME", "INU_DELETE", "INU_IUT_IUT_ID") VALUES (15, 0, 'euros', NULL, 2);


--
-- TOC entry 2223 (class 0 OID 211386)
-- Dependencies: 206 2224 2228
-- Data for Name: T_INFORMATION_INF; Type: TABLE DATA; Schema: public; Owner: echoes
--

UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Montant-PanierNC-Moyen' WHERE "SEA_ID"=4 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Nom-Produit' WHERE "SEA_ID"=4 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=4;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Nom-Produit-A-Expedier' WHERE "SEA_ID"=7 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=4;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Etat-Prestashop' WHERE "SEA_ID"=8 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=14;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Stock-Par-Produit' WHERE "SEA_ID"=5 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=2 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Montant-Total-Paniers-NC-TTC' WHERE "SEA_ID"=2 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Nombre-Paniers-NC' WHERE "SEA_ID"=1 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Nombre-Commandes-Non-Livrees-Apres-Trois-Jours' WHERE "SEA_ID"=6 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Manque-A-Gagner(%CA-Annee-En-Cours)' WHERE "SEA_ID"=3 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=7;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Etat-Https' WHERE "SEA_ID"=9 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=14;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Expedition-En-Attente-Par-Produit' WHERE "SEA_ID"=7 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=2 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Produit-Le-Plus-Vendu' WHERE "SEA_ID"=12 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=4;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Montant-Total-Paniers-NC-HT' WHERE "SEA_ID"=11 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;
UPDATE "T_INFORMATION_INF" SET "INF_NAME"='Nombre-Commandes' WHERE "SEA_ID"=10 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1 AND "INU_ID_INU_ID"=12;


--
-- TOC entry 2232 (class 0 OID 0)
-- Dependencies: 212
-- Name: T_INFORMATION_UNIT_UNT_INU_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: echoes
--

SELECT pg_catalog.setval('"T_INFORMATION_UNIT_UNT_INU_ID_seq"', 15, true);


--
-- TOC entry 2226 (class 0 OID 211539)
-- Dependencies: 242 2228
-- Data for Name: T_SEARCH_PARAMETER_VALUE_SEV; Type: TABLE DATA; Schema: public; Owner: echoes
--

UPDATE "T_SEARCH_PARAMETER_VALUE_SEV" SET "SEV_VALUE"='select round((b/(A.a-B.b))*100,2) as PourcentageBeneficeSurCASiPaniersTousConvertis from (select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as a from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart IN (select ps_orders.id_cart from ps_orders)) as A ,(select sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100) as b from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders)) as B;' WHERE "SEA_ID"=3 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "SEP_ID_SEP_ID"=2;
UPDATE "T_SEARCH_PARAMETER_VALUE_SEV" SET "SEV_VALUE"='select round(avg(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100),2) as MontantPanierNCMoyen from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);' WHERE "SEA_ID"=4 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "SEP_ID_SEP_ID"=2; , NULL, 4, 3, 8, 2);
UPDATE "T_SEARCH_PARAMETER_VALUE_SEV" SET "SEV_VALUE"='select round(sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)*(100+(ps_tax.rate))/100),2) as MontantTotalPaniersAbandonnesTTC from ps_cart_product, ps_product, ps_product_attribute, ps_tax WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_product.id_tax_rules_group=ps_tax.id_tax AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);' WHERE "SEA_ID"=2 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "SEP_ID_SEP_ID"=2;
UPDATE "T_SEARCH_PARAMETER_VALUE_SEV" SET "SEV_VALUE"='select round(sum(ps_cart_product.quantity*(ps_product.price+ps_product_attribute.price)),2) as MontantTotalPaniersNC_HT from ps_cart_product, ps_product, ps_product_attribute WHERE ps_cart_product.id_product=ps_product.id_product AND ps_cart_product.id_product_attribute=ps_product_attribute.id_product_attribute AND ps_cart_product.id_cart NOT IN (select ps_orders.id_cart from ps_orders);' WHERE "SEA_ID"=11 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "SEP_ID_SEP_ID"=2;


--
-- TOC entry 2227 (class 0 OID 211556)
-- Dependencies: 246 2224 2228
-- Data for Name: T_SEARCH_UNIT_SEU; Type: TABLE DATA; Schema: public; Owner: echoes
--

UPDATE "T_SEARCH_UNIT_SEU" SET "SEU_INU_INU_ID"=15 WHERE "SEA_ID"=2 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1;
UPDATE "T_SEARCH_UNIT_SEU" SET "SEU_INU_INU_ID"=15 WHERE "SEA_ID"=4 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1;
UPDATE "T_SEARCH_UNIT_SEU" SET "SEU_INU_INU_ID"=15 WHERE "SEA_ID"=11 AND "SRC_ID"=3 AND "PLG_ID_PLG_ID"=8 AND "INF_VALUE_NUM"=1;


-- Completed on 2013-06-10 16:32:15 CEST

--
-- PostgreSQL database dump complete
--

