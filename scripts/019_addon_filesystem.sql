UPDATE "T_ADDON_ADO" SET "ADO_NAME" = 'FileSystem' WHERE "ADO_ID" = 1;

INSERT INTO "T_SEARCH_TYPE_STY" ("STY_ID", version, "STY_NAME") VALUES (6, 0, 'path');
SELECT pg_catalog.setval('"T_SEARCH_TYPE_STY_STY_ID_seq"', 6, true);

INSERT INTO "TJ_ADO_STY" ("T_ADDON_ADO_ADO_ID", "T_SEARCH_TYPE_STY_STY_ID") VALUES (1, 6);

INSERT INTO "T_PLUGIN_PLG" ("PLG_ID", version, "PLG_DESC", "PLG_NAME") VALUES (9, 0, 'Linux - FileSystem', 'FileSystem');
SELECT pg_catalog.setval('"T_PLUGIN_PLG_PLG_ID_seq"', 9, true);

CREATE OR REPLACE FUNCTION insert_ado_fs() RETURNS integer AS $$
DECLARE
    ast RECORD;
BEGIN
    FOR ast IN SELECT * FROM "T_ASSET_AST" LOOP
	INSERT INTO "TJ_AST_PLG" ("T_ASSET_AST_AST_ID", "T_PLUGIN_PLG_PLG_ID") VALUES (ast."AST_ID", select currval('"T_PLUGIN_PLG_PLG_ID_seq"'));
    END LOOP;
    RETURN 1;
END;
$$ LANGUAGE plpgsql;

SELECT insert_ado_fs();

DROP FUNCTION insert_afo_fs();

INSERT INTO "T_SEARCH_PARAMETER_SEP" ("SEP_ID", version, "SEP_FORMAT", "SEP_NAME") VALUES (4, 0, 'text', 'path');
SELECT pg_catalog.setval('"T_SEARCH_PARAMETER_SEP_SEP_ID_seq"', 4, true);

INSERT INTO "TJ_STY_SEP" ("T_SEARCH_TYPE_STY_STY_ID", "T_SEARCH_PARAMETER_SEP_SEP_ID") VALUES (6, 4);

INSERT INTO "T_SOURCE_SRC" (version, "SRC_ID", "PLG_ID_PLG_ID", "SRC_ADO_ADO_ID") VALUES (0, 1, 9, 1);

INSERT INTO "T_SEARCH_SEA" (version, "SEA_IS_STATIC", "SEA_NB_VALUE", "SEA_POS_KEY_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEA_STY_STY_ID", "SEA_PERIOD") VALUES (0, false, 11, 0, 1, 1, 9, 6, 60);

INSERT INTO "T_INFORMATION_UNIT_INU" ("INU_ID", version, "INU_NAME", "INU_IUT_IUT_ID") VALUES (16, 0, "blocks", 1);
INSERT INTO "T_INFORMATION_UNIT_INU" ("INU_ID", version, "INU_NAME", "INU_IUT_IUT_ID") VALUES (17, 0, "inodes", 1);
INSERT INTO "T_INFORMATION_UNIT_INU" ("INU_ID", version, "INU_NAME", "INU_IUT_IUT_ID") VALUES (18, 0, "characters", 1);
SELECT pg_catalog.setval('"T_INFORMATION_UNIT_INU_INU_ID_seq"', 18, true);

INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_bsize', true, 'calculate_fs_iva', 1, 1, 9, 1, 3, 'File system block size');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_frsize', true, 'calculate_fs_iva', 1, 1, 9, 2, 3, 'Fragment size');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_blocks', true, 'calculate_fs_iva', 1, 1, 9, 3, 16, 'Size of fs in f_frsize units');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_bfree', true, 'calculate_fs_iva', 1, 1, 9, 4, 16, '# free blocks');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_bavail', true, 'calculate_fs_iva', 1, 1, 9, 5, 16, '# free blocks for unprivileged users');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_files', true, 'calculate_fs_iva', 1, 1, 9, 6, 17, '# inodes');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_ffree', true, 'calculate_fs_iva', 1, 1, 9, 7, 17, '# free inodes');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_favail', true, 'calculate_fs_iva', 1, 1, 9, 8, 17, '# free inodes for unprivileged users');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_fsid', false, 'calculate_fs_iva', 1, 1, 9, 9, 4, 'File system ID');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_flag', false, 'calculate_fs_iva', 1, 1, 9, 10, 4, 'mount flags');
INSERT INTO "T_INFORMATION_INF" (version, "INF_NAME", "INF_DISPLAY", "INF_CALCULATE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "INU_ID_INU_ID", "INF_DESC") VALUES (0, 'f_namemax', true, 'calculate_fs_iva', 1, 1, 9, 11, 18, 'maximum filename length');

INSERT INTO "T_SEARCH_PARAMETER_VALUE_SEV" (version, "SEV_VALUE", "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "SEP_ID_SEP_ID") VALUES (0, '/', 1, 1, 9, 4);

INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 1, 3);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 2, 3);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 3, 16);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 4, 16);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 5, 16);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 6, 17);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 7, 17);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 8, 17);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 9, 4);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 10, 4);
INSERT INTO "T_SEARCH_UNIT_SEU" (version, "SEA_ID", "SRC_ID", "PLG_ID_PLG_ID", "INF_VALUE_NUM", "SEU_INU_INU_ID") VALUES (0, 1, 1, 9, 11, 18);
