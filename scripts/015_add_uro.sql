CREATE OR REPLACE FUNCTION insert_uro() RETURNS integer AS $$
DECLARE
    org RECORD;
BEGIN
    FOR org IN SELECT * FROM "T_ORGANIZATION_ORG" LOOP
	INSERT INTO "T_USER_ROLE_URO" (version, "URO_NAME", "URO_ORG_ORG_ID") VALUES (0, 'default', org."ORG_ID");
	UPDATE "T_USER_USR" SET "USR_URO_URO_ID" = (select currval('"T_USER_ROLE_URO_URO_ID_seq"')) WHERE "CURRENT_ORG_ID" = org."ORG_ID";
    END LOOP;
    RETURN 1;
END;
$$ LANGUAGE plpgsql;

SELECT insert_uro();

DROP FUNCTION insert_uro();
