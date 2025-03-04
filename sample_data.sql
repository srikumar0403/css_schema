-- Insert sample data into the ORGANIZATION table
INSERT INTO public."ORGANIZATION" ("ORG_STATUS", "ORG_TYPE", "ORG_NAME", "ORG_STATE", "ORG_CREATEDBY")
VALUES ('Active', 'Non-Profit', 'Green Earth', 'CA', 'admin');

-- Insert sample data into the AGENCY table
INSERT INTO public."AGENCY" ("AGY_NAME", "AGY_TYPE", "AGY_STATUS", "AGY_ORG_ID", "AGY_CREATEDBY")
VALUES ('Helping Hands', 'Welfare', 'Active', 'ORG-1000', 'admin');

-- Insert sample data into the OFFICE table
INSERT INTO public."OFFICE" ("OFF_AGY_ID", "OFF_NAME", "OFF_TYPE", "OFF_STATUS", "OFF_CNTY", "OFF_CREATEDBY")
VALUES ('AGY-1000', 'Downtown Office', 'Main', 'Operating', 'Downtown', 'admin');

-- Insert sample data into the USERS table
INSERT INTO public."USERS" ("USER_FIRST_NAME", "USER_MIDDLE_NAME", "USER_LAST_NAME", "USER_EMAIL", "USER_PHONE", "USER_TYPE", "USER_STATUS", "USER_CREATEDBY")
VALUES ('John', 'A.', 'Doe', 'johndoe@email.com', '555-1234', 'Admin', 'Active', 'admin');

-- Insert sample data into the WORKER table
INSERT INTO public."WORKER" ("WOR_USER_ID", "WOR_EMPLOYEE_ID", "WOR_TYPE", "WOR_STATUS", "WOR_CREATEDBY")
VALUES ('USER-1000', 'E12345', 'Full-time', 'Active', 'admin');

-- Insert sample data into the WORKER_OFFICE table
INSERT INTO public."WORKER_OFFICE" ("WOF_OFF_ID", "WOF_WOR_ID", "WOF_STRT_DTE", "WOF_CREATEDBY")
VALUES ('OFF-1000', 'WOR-1000', '2023-01-01', 'admin');

-- Insert sample data into the ROLES table
INSERT INTO public."ROLES" ("ROL_NAME", "ROL_DESC", "ROL_CREATEDBY")
VALUES ('Manager', 'Manages operations and staff.', 'admin');

-- Insert sample data into the WORKER_ROLES table
INSERT INTO public."WORKER_ROLES" ("WRO_ROL_ID", "WRO_WOR_ID", "WRO_CREATEDBY")
VALUES ('ROL-1000', 'WOR-1000', 'admin');

-- Insert sample data into the SPECIALITY_SKILLSET table
INSERT INTO public."SPECIALITY_SKILLSET" ("SSK_SKILLSET", "SSK_DESC", "SSK_CREATEDBY")
VALUES ('Project Management', 'Ability to manage projects effectively.', 'admin');

-- Insert sample data into the WORKER_SPECIALITY table
INSERT INTO public."WORKER_SPECIALITY" ("WSP_SSK_ID", "WSP_WOR_ID", "WSP_CREATEDBY")
VALUES ('SSK-1000', 'WOR-1000', 'admin');

-- Insert sample data into the PERSON table
INSERT INTO public."PERSON" ("PRS_PREFIX", "PRS_FNAME", "PRS_MNAME", "PRS_LNAME", "PRS_SUFFIX", "PRS_PREFERRED_NAME", "PRS_MAIDEN_NAME", "PRS_BRTH_DTE", "PRS_GENDER", "PRS_BRTH_CITY", "PRS_CREATEDBY")
VALUES ('Mr.', 'John', 'B.', 'Smith', 'Jr.', 'Johnny', 'Smith', '1980-05-15', 'Male', 'New York', 'admin');

-- Insert sample data into the LOOKUP_EMPLOYER table
INSERT INTO public."LOOKUP_EMPLOYER" ("LEM_EMPLOYER_NAME", "LEM_INDIAN_OWN_IND", "LEM_TRIBE_OWN_IND", "LEM_TRIBAL_MBR_OWN_IND", "LEM_FEIN_NUM", "LEM_CREATEDBY")
VALUES ('Tech Solutions', '0', '0', '0', '12-3456789', 'admin');

-- Insert sample data into the PERSON_EMPLOYMENT_INFO table
INSERT INTO public."PERSON_EMPLOYMENT_INFO" ("PEM_PRS_ID", "PEM_LEM_ID", "PEM_FROM_DTE", "PEM_TO_DTE", "PEM_TYPE", "PEM_STATUS", "PEM_EARNED_AMT", "PEM_DESC", "PEM_CREATEDBY")
VALUES ('PRS-1000', 'LEM-1000', '2023-01-01', '2023-12-31', 'Full-time', 'Active', 50000, 'Software Developer', 'admin');

-- Insert sample data into the UNEARNED_INCOME table
INSERT INTO public."UNEARNED_INCOME" ("UIN_PRS_ID", "UIN_TYPE", "UIN_AMT", "UIN_DESC", "UIN_STRT_DTE", "UIN_END_DTE", "UIN_CREATEDBY")
VALUES ('PRS-1000', 'Rental', 1200, 'Monthly rental income', '2023-01-01', '2023-12-31', 'admin');

-- Insert sample data into the PERSON_SPECIAL_ASSISTANCE table
INSERT INTO public."PERSON_SPECIAL_ASSISTANCE" ("PSA_PRS_ID", "PSA_ASSISTANCE_DESC", "PSA_CREATEDBY")
VALUES ('PRS-1000', 'Disability Assistance', 'admin');

-- Insert sample data into the PERSON_ASSETS table
INSERT INTO public."PERSON_ASSETS" ("PAS_PRS_ID", "PAS_TYPE", "PAS_PURCHASE_DTE", "PAS_SALE_DTE", "PAS_MAKE", "PAS_MODEL", "PAS_YEAR", "PAS_DESC", "PAS_CREATEDBY")
VALUES ('PRS-1000', 'Vehicle', '2022-01-01', NULL, 'Toyota', 'Camry', 2020, 'Blue color, sedan', 'admin');

-- Insert sample data into the LOOKUP_SCHOOL table
INSERT INTO public."LOOKUP_SCHOOL" ("LSC_SCHOOL_NAME", "LSC_CREATEDBY")
VALUES ('Central High', 'admin');

-- Insert sample data into the PERSON_EDUCATION_INFO table
INSERT INTO public."PERSON_EDUCATION_INFO" ("PED_PRS_ID", "PED_LSC_ID", "PED_GRAD_DTE", "PED_ENROLL_VERIFIED_IND", "PED_STATUS", "PED_TYPE", "PED_CREATEDBY")
VALUES ('PRS-1000', 'LSC-1000', '1998-06-01', '1', 'Graduated', 'High School', 'admin');

-- Insert sample data into the PERSON_MILITARY_STATUS table
INSERT INTO public."PERSON_MILITARY_STATUS" ("PMI_PRS_ID", "PMI_TYPE", "PMI_STATUS", "PMI_STRT_DTE", "PMI_END_DTE", "PMI_SRL_NUM", "PMI_CREATEDBY")
VALUES ('PRS-1000', 'Army', 'Active', '2000-01-01', '2004-01-01', '123456789', 'admin');

-- Insert sample data into the PERSON_LOCATE table
INSERT INTO public."PERSON_LOCATE" ("PLO_PRS_ID", "PLO_TYPE", "PLO_DESC", "PLO_REQUEST_DTE", "PLO_RESPONSE_DTE", "PLO_DISPOSITION", "PLO_CREATEDBY")
VALUES ('PRS-1000', 'Current Address', 'Requested for legal purposes', '2023-01-01', '2023-01-15', 'Completed', 'admin');

-- Insert sample data into the PERSON_MARITAL_INFO table
INSERT INTO public."PERSON_MARITAL_INFO" ("PMA_PRS_ID", "PMA_TYPE", "PMA_STATUS", "PMA_MARRIED_DTE", "PMA_MARRIED_CITY", "PMA_DIVORCE_DTE", "PMA_SEPERATED_DTE", "PMA_MULTIPLE_MARRIAGES_IND", "PMA_CREATEDBY")
VALUES ('PRS-1000', 'Married', 'Active', '2005-06-15', 'Las Vegas', NULL, NULL, '0', 'admin');

-- Insert sample data into the PERSON_DEMOGRAPHICS table
INSERT INTO public."PERSON_DEMOGRAPHICS" ("PDE_PRS_ID", "PDE_WT_LBS", "PDE_HT_FT", "PDE_HT_INCH", "PDE_EYE_COLR", "PDE_HAIR_COLR", "PDE_DISTNG_MRKS", "PDE_CREATEDBY")
VALUES ('PRS-1000', '180', '5', '11', 'Brown', 'Black', 'Scar on left cheek', 'admin');

-- Insert sample data into the PERSON_ARREST table
INSERT INTO public."PERSON_ARREST" ("PAR_PRS_ID", "PAR_DTE", "PAR_RSN", "PAR_CITY", "PAR_CNTY", "PAR_ST", "PAR_CNTRY", "PAR_CONV_DTE", "PAR_CREATEDBY")
VALUES ('PRS-1000', '2023-02-01', 'Traffic Violation', 'New York', 'New York County', 'NY', 'USA', '2023-02-15', 'admin');

-- Insert sample data into the PERSON_RACE table
INSERT INTO public."PERSON_RACE" ("PRA_PRS_ID", "PRA_RACE", "PRA_CREATEDBY")
VALUES ('PRS-1000', 'Caucasian', 'admin');

-- Insert sample data into the PERSON_PROBATION table
INSERT INTO public."PERSON_PROBATION" ("PPR_PRS_ID", "PPR_STRT_DTE", "PPR_END_DTE", "PPR_TYPE", "PPR_OFCR_BTCH_NUM", "PPR_CREATEDBY")
VALUES ('PRS-1000', '2023-03-01', '2024-03-01', 'Supervised', '987654', 'admin');

-- Insert sample data into the PERSON_ETHNICITY table
INSERT INTO public."PERSON_ETHNICITY" ("PET_PRS_ID", "PET_ETHNICITY", "CPE_CREATEDBY")
VALUES ('PRS-1000', 'Hispanic', 'admin');

-- Insert sample data into the LOOKUP_CORRECTIONAL_FACILITY table
INSERT INTO public."LOOKUP_CORRECTIONAL_FACILITY" ("LCO_CORRECTIONAL_FACILITY_NAME", "LCO_TYPE", "LCO_CREATEDBY")
VALUES ('State Prison', 'Maximum Security', 'admin');

-- Insert sample data into the PERSON_INCARCERATION table
INSERT INTO public."PERSON_INCARCERATION" ("PIN_PRS_ID", "PIN_LCO_ID", "PIN_INMATE_NUM", "PIN_DTE", "PIN_RELS_DTE", "PIN_TRANS_DTE", "PIN_WRK_RELS_IND", "PIN_WRK_RELS_DTE", "PIN_PAROLE_ELGBL_DTE", "PIN_CREATEDBY")
VALUES ('PRS-1000', 'LCO-1000', 'INM1234', '2021-01-01', '2023-01-01', '2022-12-01', '1', '2022-12-15', '2022-11-01', 'admin');

-- Insert sample data into the PERSON_PARENT table
INSERT INTO public."PERSON_PARENT" ("PPA_PRS_ID", "PPA_TYPE", "PPA_PREFIX", "PPA_FNAME", "PPA_MNAME", "PPA_LNAME", "PPA_SUFFIX", "PPA_BRTH_DTE", "PPA_DECEASED_IND", "PPA_DECEASED_DTE", "PPA_CREATEDBY")
VALUES ('PRS-1000', 'Father', 'Mr.', 'Michael', 'B.', 'Smith', 'Sr.', '1950-05-15', '0', NULL, 'admin');

-- Insert sample data into the PERSON_GRANT table
INSERT INTO public."PERSON_GRANT" ("PGR_PRS_ID", "PGR_GRNT_EFF_DTE", "PGR_GRNT_END_DTE", "PGR_GRNT_AMT", "PGR_COOP_DTE", "PGR_NON_COOP_SANCTION_DTE", "PGR_RCPNT_COMP_IND", "PGR_TANF_RCPNT_IND", "PGR_NON_COOP_PRPSD_DT", "PGR_PREV_BENFT_RCVD_TXT", "PGR_FRMR_TANF_RCPNT_IND", "PGR_UNREIMB_ASST_AMT", "PGR_NON_COOP_DTE", "PGR_NON_COOP_RSN_TXT", "PGR_FREQ", "PGR_TOTAL_AMT", "PGR_CREATEDBY")
VALUES ('PRS-1000', '2023-01-01', '2024-01-01', 3000, '2023-02-01', '2023-03-01', '1', '0', '2023-03-15', 'Previous welfare recipient', '0', 500, '2023-03-01', 'Non-cooperation', 'Monthly', 36000, 'admin');

-- Insert sample data into the PERSON_PAROLE table
INSERT INTO public."PERSON_PAROLE" ("PPA_PRS_ID", "PPA_STRT_DTE", "PPA_END_DTE", "PPA_ERLY_RSLE_DTE", "PPA_ERLY_RSLE_RSN", "PPA_CREATEDBY")
VALUES ('PRS-1000', '2023-04-01', '2024-04-01', '2023-10-01', 'Good behavior', 'admin');

-- Insert sample data into the PERSON_LANGUAGE table
INSERT INTO public."PERSON_LANGUAGE" ("PLA_PRS_ID", "PLA_LANGUAGE", "PLA_CREATEDBY")
VALUES ('PRS-1000', 'English', 'admin');

-- Insert sample data into the PERSON_LICENSE table
INSERT INTO public."PERSON_LICENSE" ("PLI_PRS_ID", "PLI_NUMBER", "PLI_STATE", "PLI_STRT_DTE", "PLI_EXPIR_DTE", "PLI_JRSDCT_TXT", "PLI_TRIBE_TXT", "PLI_TYPE", "PLI_STATUS", "PLI_CREATEDBY")
VALUES ('PRS-1000', 'D1234567', 'CA', '2023-01-01', '2028-01-01', 'California', 'Navajo', 'Driver', 'Valid', 'admin');

-- Insert sample data into the FAMILY_VIOLENCE table
INSERT INTO public."FAMILY_VIOLENCE" ("FVL_EFFECTIVE_START_DTE", "FVL_EFFECTIVE_END_DTE", "FVL_VIOLENCE_IND", "FVL_VIOLENCE_TYPE", "FVL_CONFIDENTIALITY", "FVL_PROTECTIVE_ORDER_IND", "FVL_SAFETY_CONCERNS", "FVL_NCP_ADD_INFO", "FVL_CREATEDBY")
VALUES ('2023-01-01', '2024-01-01', '1', 'Domestic Abuse', 'High', '1', 'High risk of harm', 'Additional security measures required', 'admin');

-- Insert sample data into the CASE table
INSERT INTO public."CASE" ("CASE_TYPE", "CASE_STATUS", "CASE_TRACKING_NUM", "CASE_FUNC", "CASE_TRNS_DTE", "CASE_TRNS_RSN", "CASE_CLSD_DTE", "CASE_CLSD_RSN", "CASE_SUSP_DTE", "CASE_SUSP_RSN", "CASE_FVL_ID", "CASE_ADDR_SUPRESS_IND", "CASE_WOR_ID", "CASE_CREATEDBY")
VALUES ('Child Support', 'Open', 'C123456', 'Support Collection', '2023-01-01', 'Transfer from another county', NULL, NULL, NULL, NULL, 'FVL-1000', '1', 'WOR-1000', 'admin');

-- Insert sample data into the CASE_PERSON_RELATIONSHIP table
INSERT INTO public."CASE_PERSON_RELATIONSHIP" ("CPE_PRS_ID", "CPE_CASE_ID", "CPE_CASE_RELSHP", "CPE_CHILD_RELSHP", "CPE_CREATEDBY")
VALUES ('PRS-1000', 'CASE-1000', 'Custodial Parent', 'Biological', 'admin');

-- Insert sample data into the ADDRESS table
INSERT INTO public."ADDRESS" ("ADRS_ST1", "ADRS_ST2", "ADRS_APTSUITE_NO", "ADRS_CITY", "ADRS_ST", "ADRS_CNTY", "ADRS_ZIP_CD", "ADRS_PROVINCE", "ADRS_CNTRY", "ADRS_RSVN", "ADRS_DESC", "ADRS_TYPE", "ADRS_STATUS", "ADRS_VERIFIED_IND", "ADRS_SUBJECT_AREA", "ADRS_TABLE_NM", "ADRS_KEY_COLUMN_NM", "ADRS_KEY_COLUMN_VALUE", "ADRS_FRM_DTE", "ADRS_TO_DTE", "ADRS_CREATEDBY")
VALUES ('123 Main St', 'Building 5', 'Suite 20', 'Anytown', 'CA', 'Any County', '90210', 'California', 'USA', 'Reservation Name', 'Primary residence', 'Home', 'Active', '1', 'Person address', 'PERSON', 'PRS_ID', 'PRS-1000', '2023-01-01', '2024-01-01', 'admin');

-- Insert sample data into the CONTACT table
INSERT INTO public."CONTACT" ("CON_TYPE", "CON_STATUS", "CON_SUBJECT_AREA", "CON_TABLE_NM", "CON_KEY_COLUMN_NAME", "CON_KEY_COLUMN_VALUE", "CON_CREATEDBY")
VALUES ('Phone', 'Active', 'Person contact', 'PERSON', 'PRS_ID', 'PRS-1000', 'admin');

-- Insert sample data into the PARENTAGE table
INSERT INTO public."PARENTAGE" ("PAT_CPE_ID", "PAT_ESTB_IND", "PAT_ESTB_DTE", "PAT_ESTB_CITY", "PAT_ESTB_CNTY", "PAT_ESTB_ST", "PAT_ESTB_DOCKET_NUMBER", "PAT_ESTB_MTHD_TXT", "PAT_DUE_DTE", "PAT_CONCPT_DTE", "PAT_CONCPT_END_DTE", "PAT_CREATEDBY")
VALUES ('CPE-1000', '1', '2023-01-15', 'Anytown', 'Any County', 'CA', 'D12345', 'Court Order', '2023-12-01', '2022-12-15', '2023-01-15', 'admin');

-- Insert sample data into the PERSON_SEX_RELSHP table
INSERT INTO public."PERSON_SEX_RELSHP" ("PSR_PAT_ID", "PSR_RELTN_BEGAN_CITY", "PSR_RELTN_BEGAN_CNTY", "PSR_RELTN_BEGAN_ST", "PSR_RELTN_BEGAN_DTE", "PSR_RELTN_ENDED_CITY", "PSR_RELTN_ENDED_CNTY", "PSR_RELTN_ENDED_ST", "PSR_RELTN_ENDED_DTE", "PSR_CREATEDBY")
VALUES ('PAT-1000', 'Cityville', 'Countyville', 'CA', '2021-06-01', 'Cityville', 'Countyville', 'CA', '2022-06-01', 'admin');

-- Insert sample data into the LOOKUP_GENETIC_TEST_LAB table
INSERT INTO public."LOOKUP_GENETIC_TEST_LAB" ("GENLAB_NAME", "GENLAB_DIRIONS_TXT", "GENLAB_CREATEDBY")
VALUES ('GenTech Labs', 'Directions to facility.', 'admin');

-- Insert sample data into the PERSON_GEN_TEST table
INSERT INTO public."PERSON_GEN_TEST" ("PGT_CPE_ID", "PGT_GENLAB_ID", "PGT_PAT_ID", "PGT_DTE", "PGT_TM_DTE", "PGT_RSLTS_TXT", "PGT_RSLTS_DTE", "PGT_ORDED_DTE", "PGT_DISP_TXT", "PGT_TYPE", "PGT_CREATEDBY")
VALUES ('CPE-1000', 'GENLAB-1000', 'PAT-1000', '2023-03-01', '2023-03-01 10:00', 'Positive', '2023-03-15', '2023-02-01', 'Admissible in court', 'Paternity', 'admin');

-- Insert sample data into the SHARED_NOTES table
INSERT INTO public."SHARED_NOTES" ("NOTE_TYPE", "NOTE_STATUS", "NOTE_SUBJECT_AREA", "NOTE_TABLE_NAME", "NOTE_KEY_COLUMN_NAME", "NOTE_KEY_VALUE", "NOTE_TXT", "NOTE_CREATEDBY")
VALUES ('Comment', 'Active', 'Case management', 'CASE', 'CASE_ID', 'CASE-1000', 'Case notes regarding ongoing issues.', 'admin');

-- Insert sample data into the SHARED_DOCUMENT table
INSERT INTO public."SHARED_DOCUMENT" ("DOC_TYPE", "DOC_STATUS", "DOC_SUBJECT_AREA", "DOC_TABLE_NAME", "DOC_KEY_COLUMN_NAME", "DOC_KEY_VALUE", "DOC_UPLOAD_LOCATION", "DOC_CREATEDBY")
VALUES ('PDF', 'Stored', 'Case files', 'CASE', 'CASE_ID', 'CASE-1000', 'Cloud Storage', 'admin');

-- Insert sample data into the ORDER_HEADER table
INSERT INTO public."ORDER_HEADER" ("ORH_CASE_ID", "ORH_PRS_ID", "ORH_INFO_TXT", "ORH_DOCKET_NUM", "ORH_EFFICTIVE_DATE", "ORH_AMOUNT", "ORH_PAYMENT_TERM", "ORH_PAST_DUE", "ORH_TYPE", "ORH_STATUS", "ORH_CREATEDBY")
VALUES ('CASE-1000', 'PRS-1000', 'Child support order details.', 'D56789', '2023-01-01', 600, 'Monthly', 'None', 'Support', 'Active', 'admin');
