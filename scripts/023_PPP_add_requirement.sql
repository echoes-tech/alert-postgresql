ALTER TABLE "T_PROBE_PACKAGE_PARAMETER_PPP" ADD "PPP_CPP_MINIMUM_VERSION" text;
UPDATE "T_PROBE_PACKAGE_PARAMETER_PPP" SET "PPP_CPP_MINIMUM_VERSION" = 0 WHERE "PPP_CPP_MINIMUM_VERSION" IS NULL;
ALTER TABLE "T_PROBE_PACKAGE_PARAMETER_PPP" ALTER "PPP_CPP_MINIMUM_VERSION" SET NOT NULL;
    
ALTER TABLE "T_PROBE_PACKAGE_PARAMETER_PPP" ALTER "PPP_ASD_ASD_ID" SET NOT NULL;
ALTER TABLE "T_PROBE_PACKAGE_PARAMETER_PPP" ALTER "PPP_ASR_ASR_ID" SET NOT NULL;
ALTER TABLE "T_PROBE_PACKAGE_PARAMETER_PPP" ALTER "PPP_ASA_ASA_ID" SET NOT NULL;

