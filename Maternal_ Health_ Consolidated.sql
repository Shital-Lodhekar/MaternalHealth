CREATE TABLE maternal_health_tbl (
	case_id integer,
	age_years_old integer,
	color_ethnicity varchar(100),
	hypertension_past_reported integer,
	hypertension_past_treatment varchar(100),
	diabetes_mellitus_dm_reported integer,
	diabetes_mellitus_disease_gap varchar(100),
	diabetes_mellitus_treatment varchar(100),
	tobacco_use integer,
	tobacco_use_in_months varchar(100),
	tobacco_quantity_by_day varchar(100),
	alcohol_use integer,
	alcohol_quantity_milliliters varchar(100),
	alcohol_preference varchar(100),
	drugs_preference varchar(100),
	drugs_years_use varchar(100),
	drugs_during_pregnancy varchar(100),
	past_newborn_1_weight varchar(100),
	gestational_age_past_newborn_1 varchar(100),
	past_newborn_2_weight varchar(100),
	gestational_age_past_newborn_2 varchar(100),
	past_newborn_3_weight varchar(100),
	gestational_age_past_newborn_3 varchar(100),
	past_newborn_4_weight varchar(100),
	gestational_age_past_4_newborn varchar(100),
	breakfast_meal integer,
	morning_snack integer,
	lunch_meal integer,
	afternoon_snack integer,
	meal_dinner integer,
	supper_meal integer,
	bean integer,
	fruits integer,
	vegetables integer,
	embedded_food integer,
	pasta integer,
	cookies integer,
	right_systolic_blood_pressure varchar(100),
	right_diastolic_blood_pressure varchar(100),
	left_systolic_blood_pressure varchar(100),
	left_diastolic_blood_pressure varchar(100),
	periumbilical_subcutanous_fat varchar(100),
	periumbilical_visceral_fat varchar(100),
	periumbilical_total_fat numeric(5, 0),
	preperitoneal_subcutaneous_fat numeric(5, 1),
	preperitoneal_visceral_fat numeric(5, 1),
	gestational_age_at_inclusion numeric(5, 1),
	fetal_weight_at_ultrasound varchar(100),
	weight_fetal_percentile varchar(100),
	past_pregnancies_number numeric(5, 0),
	miscarriage numeric(5, 0),
	first_trimester_hematocrit numeric(5, 1),
	second_trimester_hematocrit varchar(100),
	third_trimester_hematocrit varchar(100),
	firt_trimester_hemoglobin numeric(5, 1),
	second_trimester_hemoglobin varchar(100),
	third_trimester_hemoglobin varchar(100),
	first_tri_fasting_blood_glucose numeric(5, 0),
	second_tri_fasting_blood_glucose varchar(100),
	third_tri_fasting_blood_glucose varchar(100),
	"1st_hour_ogtt75_1st_tri" varchar(100),
	"1st_hour_ogtt75_2tri" varchar(100),
	"1st_hour_ogtt75_3tri" varchar(100),
	"2nd_hour_ogtt_1tri" varchar(100),
	"2nd_hour_ogtt75_2tri" varchar(100),
	"2nd_hour_ogtt_3tri" varchar(100),
	hiv_1tri varchar(100),
	syphilis_1tri varchar(100),
	c_hepatitis_1tri varchar(100),
	prepregnant_weight varchar(100),
	prepregnant_bmi varchar(100),
	bmi_according_who varchar(100),
	current_maternal_weight_1st_tri varchar(100),
	current_maternal_weight_2nd_tri varchar(100),
	current_maternal_weight_3rd_tri varchar(100),
	maternal_weight_at_inclusion numeric(5, 2),
	hight_at_inclusion numeric(5, 2),
	current_bmi numeric(5, 2),
	current_bmi_according_who numeric(5, 0),
	ultrasound_gestational_age numeric(5, 1),
	maternal_brachial_circumference numeric(5, 1),
	circumference_maternal_calf numeric(5, 1),
	maternal_neck_circumference numeric(5, 1),
	maternal_hip_circumference numeric(5, 1),
	maternal_waist_circumference numeric(5, 1),
	mean_tricciptal_skinfold numeric(5, 1),
	mean_subscapular_skinfold numeric(5, 1),
	mean_supra_iliac_skin_fold numeric(5, 1),
	gestational_age_at_birth numeric(5, 1),
	prepartum_maternal_weight varchar(100),
	prepartum_maternal_heigh varchar(100),
	delivery_mode numeric(5, 0),
	cesarean_section_reason varchar(100),
	hospital_systolic_blood_pressure varchar(100),
	hospital_diastolic_blood_pressure varchar(100),
	hospital_hypertension numeric(5, 0),
	preeclampsia_record_pregnancy numeric(5, 0),
	gestational_diabetes_mellitus numeric(5, 0),
	chronic_diabetes varchar(100),
	chronic_diseases varchar(100),
	disease_diagnose_during_pregnancy varchar(100),
	treatment_disease_pregnancy varchar(100),
	number_prenatal_appointments numeric(5, 0),
	expected_weight_for_the_newborn varchar(100),
	newborn_weight varchar(100),
	newborn_height varchar(100),
	newborn_head_circumference varchar(100),
	thoracic_perimeter_newborn numeric(5, 1),
	meconium_labor numeric(5, 0),
	apgar_1st_min numeric(5, 0),
	apgar_5th_min numeric(5, 0),
	pediatric_resuscitation_maneuvers numeric(5, 0),
	newborn_intubation numeric(5, 0),
	newborn_airway_aspiration numeric(5, 0),
	mothers_hospital_stay numeric(5, 0)
);

SELECT delivery_mode FROM 	maternal_health_tbl;


----------------------Loading Data from CSv-----------------------------------------------------------------------------------------------------------

-----------Data Load with COPY cmd option--------

-- \COPY PUBLIC.Maternal_Health_Tbl FROM 'C:\Users\rohith\Downloads\observations1.csv' WITH CSV HEADER;
-- It says to copy to the table from the path with CSV header

-----------Data Load Import/Export option----------------

/* Right click on the table (Maternal_imp)
   Choose Import/Export data - Select Import
   eneral tab paste the path of csv file
   Enable the Headers button is on
	Check for all the column names then click ok.
*/
----------------------Create Table Health_Risk_fetus-----------------

SELECT
	case_id,
	tobacco_use,
	tobacco_use_in_months,
	tobacco_quantity_by_day,
	alcohol_use,
	alcohol_quantity_milliliters,
	alcohol_preference,
	drugs_preference,
	drugs_years_use,
	drugs_during_pregnancy,
	hiv_1tri,
	syphilis_1tri,
	c_hepatitis_1tri,
	gestational_diabetes_mellitus INTO health_risk_fetus
FROM
	maternal_health_tbl;

SELECT 	* FROM 	health_risk_fetus;

--------------------Create Pregnancy_nurition------------

SELECT
	case_id,
	breakfast_meal,
	morning_snack,
	lunch_meal,
	afternoon_snack,
	meal_dinner,
	supper_meal,
	bean,
	fruits,
	vegetables,
	embedded_food,
	pasta,
	cookies INTO pregnancy_nutrition
FROM
	maternal_health_tbl;

SELECT 	* fROM  Pregnancy_Nutrition;

---------------------Create table Maternal_Fat-------------
SELECT
	case_id,
	periumbilical_subcutanous_fat,
	periumbilical_visceral_fat,
	periumbilical_total_fat,
	preperitoneal_subcutaneous_fat,
	preperitoneal_visceral_fat,
	maternal_brachial_circumference,
	circumference_maternal_calf,
	maternal_neck_circumference,
	maternal_hip_circumference,
	maternal_waist_circumference,
	mean_tricciptal_skinfold,
	mean_subscapular_skinfold,
	mean_supra_iliac_skin_fold,
	ultrasound_gestational_age INTO maternal_fat
FROM
	maternal_health_tbl;

SELECT * FROM  maternal_Fat;

----------------------Create Table Maternal_Lab------------------

SELECT
	case_id,
	first_trimester_hematocrit,
	second_trimester_hematocrit,
	third_trimester_hematocrit,
	firt_trimester_hemoglobin,
	second_trimester_hemoglobin,
	third_trimester_hemoglobin,
	first_tri_fasting_blood_glucose,
	second_tri_fasting_blood_glucose,
	third_tri_fasting_blood_glucose,
	"1st_hour_ogtt75_1st_tri",
	"1st_hour_ogtt75_2tri",
	"1st_hour_ogtt75_3tri",
	"2nd_hour_ogtt_1tri",
	"2nd_hour_ogtt75_2tri",
	"2nd_hour_ogtt_3tri",
	right_systolic_blood_pressure,
	right_diastolic_blood_pressure,
	left_systolic_blood_pressure,
	left_diastolic_blood_pressure INTO maternal_lab
FROM
	maternal_health_tbl;

SELECT 	* FROM 	maternal_Lab;

---------------------Create table Hospitalization_labor ----------

SELECT
	case_id,
	gestational_age_at_inclusion,
	fetal_weight_at_ultrasound,
	weight_fetal_percentile,
	miscarriage,
	prepartum_maternal_weight,
	delivery_mode,
	cesarean_section_reason,
	hospital_systolic_blood_pressure,
	hospital_diastolic_blood_pressure,
	hospital_hypertension,
	preeclampsia_record_pregnancy,
	chronic_diabetes,
	chronic_diseases,
	disease_diagnose_during_pregnancy,
	treatment_disease_pregnancy,
	number_prenatal_appointments,
	expected_weight_for_the_newborn,
	newborn_weight,
	newborn_height,
	newborn_head_circumference,
	thoracic_perimeter_newborn,
	meconium_labor,
	apgar_1st_min,
	apgar_5th_min,
	pediatric_resuscitation_maneuvers,
	newborn_intubation,
	newborn_airway_aspiration,
	mothers_hospital_stay,
	gestational_age_at_birth INTO hospitalization_labor
FROM
	maternal_health_tbl;

SELECT 	* FROM 	hospitalization_labor;

---------------------Create table Prior_Gestational_Health----------

SELECT
	case_id,
	past_newborn_1_weight,
	gestational_age_past_newborn_1,
	past_newborn_2_weight,
	gestational_age_past_newborn_2,
	past_newborn_3_weight,
	gestational_age_past_newborn_3,
	past_newborn_4_weight,
	gestational_age_past_4_newborn,
	past_pregnancies_number INTO prior_gestational_health
FROM
	maternal_health_tbl;

SELECT 	*FROM Prior_Gestational_Health;

----------------------Create table Patient History-----

SELECT
	case_id,
	age_years_old,
	color_ethnicity,
	diabetes_mellitus_dm_reported,
	diabetes_mellitus_disease_gap,
	diabetes_mellitus_treatment,
	prepregnant_weight,
	prepregnant_bmi,
	bmi_according_who,
	current_maternal_weight_1st_tri,
	current_maternal_weight_2nd_tri,
	current_maternal_weight_3rd_tri,
	maternal_weight_at_inclusion,
	hight_at_inclusion,
	current_bmi,
	current_bmi_according_who,
	hypertension_past_reported,
	hypertension_past_treatment INTO patient_history
FROM
	maternal_health_tbl;

SELECT	* FROM 	patient_history;

------------------------Transformations  - Team 1 ----------------------------------------------------

-------Altered delivery_modecolumn type from Numeric to Varchar o convert all the values to text

ALTER TABLE hospitalization_labor
	ALTER COLUMN delivery_mode TYPE varchar(100);

SELECT delivery_mode FROM hospitalization_labor;

-----------------------1. Updated delivery_mode from 0,1,2,3,4,5,6,7,8 to vaginal,vaginal forceps etc -------------------------	

UPDATE hospitalization_labor
SET
	delivery_mode = CASE
		WHEN delivery_mode = '0' THEN 'Not_Applicable'
		WHEN delivery_mode = '1' THEN 'vaginal'
		WHEN delivery_mode = '2' THEN 'vaginal forceps'
		WHEN delivery_mode = '3' THEN 'miscarriage with curettage'
		WHEN delivery_mode = '4' THEN 'miscarriage without curettage'
		WHEN delivery_mode = '5' THEN 'cesarean section'
		WHEN delivery_mode = '6' THEN 'cesarean by jeopardy'
		WHEN delivery_mode = '7' THEN 'vaginal with episiotomy'
		WHEN delivery_mode = '8' THEN 'vaginal without episiotomy'
		WHEN delivery_mode = '9' THEN 'vaginal with episiotomy plus forcipe'
		WHEN delivery_mode = '12' THEN 'Not_Applicable'
		ELSE delivery_mode
	END;

------- Updated NOt Applicable for values 0 and 12 from the above step to Null

UPDATE hospitalization_labor
SET
	delivery_mode = NULLIF(delivery_mode, 'Not_Applicable');


SELECT delivery_mode FROM hospitalization_labor;

-------------------------2. Updated weight_fetal_percentile from 0,1,2,3,4,5,6,7,8 to percentile 10,percentile 10-25, etc ---	

UPDATE hospitalization_labor
SET
	weight_fetal_percentile = CASE
		WHEN weight_fetal_percentile = '0' THEN 'percentile 10'
		WHEN weight_fetal_percentile = '1' THEN 'percentile 10-25'
		WHEN weight_fetal_percentile = '2' THEN 'percentile 25'
		WHEN weight_fetal_percentile = '3' THEN 'mpercentile 25-50'
		WHEN weight_fetal_percentile = '4' THEN 'percentile 50'
		WHEN weight_fetal_percentile = '5' THEN 'percentile 50-75'
		WHEN weight_fetal_percentile = '6' THEN 'percentile 75'
		WHEN weight_fetal_percentile = '7' THEN 'percentile 75-90'
		WHEN weight_fetal_percentile = '8' THEN 'percentile 90'
		WHEN weight_fetal_percentile = '25' THEN 'Not_Applicable'
		ELSE weight_fetal_percentile
	END;

----------Updated NOt Applicable for value 25 from the above step to Null

UPDATE hospitalization_labor
SET
	weight_fetal_percentile = NULLIF(weight_fetal_percentile, 'Not_Applicable');

SELECT weight_fetal_percentile FROM hospitalization_laborWHERE weight_fetal_percentile = 'Not_Applicable' ;  

---------------------Updated Not applicable to null values -----------------------------

UPDATE hospitalization_labor
SET   
	fetal_weight_at_ultrasound = NULLIF(fetal_weight_at_ultrasound,'not_applicable'),
	weight_fetal_percentile = NULLIF(weight_fetal_percentile,'not_applicable'),
	prepartum_maternal_weight = NULLIF(prepartum_maternal_weight,'not_applicable'),
	hospital_systolic_blood_pressure = NULLIF(hospital_systolic_blood_pressure,'not_applicable'),
	hospital_diastolic_blood_pressure = NULLIF(hospital_diastolic_blood_pressure,'not_applicable'),
	chronic_diseases = NULLIF(chronic_diseases,'not_applicable'),
	newborn_height = NULLIF(NULLIF(newborn_height, 'not_applicable'), 'no_answer'),
	newborn_head_circumference = NULLIF(NULLIF(newborn_head_circumference, 'not_applicable'), 'no_answer'),
    cesarean_section_reason = NULLIF(cesarean_section_reason , 'not_applicable'),
    chronic_diabetes = NULLIF(chronic_diabetes , 'not_applicable'),
	disease_diagnose_during_pregnancy = NULLIF(NULLIF(NULLIF(disease_diagnose_during_pregnancy, 'not_applicable'), 		 
    'no_answer'),'not_applicable+CX20'),
	treatment_disease_pregnancy = NULLIF(treatment_disease_pregnancy , 'not_applicable');

SELECT * FROM hospitalization_labor;

----------------------3,4.Updated diabetes_mellitus_dm_reported,diabetes_mellitus_disease_gap,diabetes_mellitus_treatment as per chonic_diabetes 1

UPDATE patient_history p
SET
	----diabetes_mellitus_dm_reported
	diabetes_mellitus_dm_reported = CASE
		WHEN h.chronic_diabetes = '1' THEN '1'
		ELSE p.diabetes_mellitus_dm_reported
	END,
	----diabetes_mellitus_treatment
	diabetes_mellitus_treatment = CASE
		WHEN h.chronic_diabetes = '1'
		AND p.diabetes_mellitus_treatment = 'not_applicable' THEN '1'
		ELSE p.diabetes_mellitus_treatment
	END,
	----diabetes_mellitus_disease_gap
	diabetes_mellitus_disease_gap = CASE
		WHEN h.chronic_diabetes = '1'
		AND p.diabetes_mellitus_disease_gap = 'not_applicable' THEN '0'
		ELSE p.diabetes_mellitus_disease_gap
	END
FROM
	hospitalization_labor h
WHERE
	p.case_id = h.case_id
	AND p.diabetes_mellitus_dm_reported = 0
	AND p.diabetes_mellitus_treatment = 'not_applicable'
	AND p.diabetes_mellitus_disease_gap = 'not_applicable'
	AND h.chronic_diabetes = '1';

-------Verified the above update----------------------------------
SELECT
	p.case_id,
	p.diabetes_mellitus_dm_reported,
	p.diabetes_mellitus_disease_gap,
	p.diabetes_mellitus_treatment,
	h.chronic_diabetes
FROM
	patient_history p
	JOIN hospitalization_labor h ON p.case_id = h.case_id
WHERE
	h.chronic_diabetes = '1';

-------------------------------------------------------------------------------------------
----------------------------------------------------------------------------

-------Altered delivery_modecolumn type from Numeric to Varchar o convert all the values to text

ALTER TABLE hospitalization_labor
	ALTER COLUMN delivery_mode TYPE varchar(100);

SELECT delivery_mode FROM hospitalization_labor;

-----------------------1. Updated delivery_mode from 0,1,2,3,4,5,6,7,8 to vaginal,vaginal forceps etc -------------------------	

UPDATE hospitalization_labor
SET
	delivery_mode = CASE
		WHEN delivery_mode = '0' THEN 'Not_Applicable'
		WHEN delivery_mode = '1' THEN 'vaginal'
		WHEN delivery_mode = '2' THEN 'vaginal forceps'
		WHEN delivery_mode = '3' THEN 'miscarriage with curettage'
		WHEN delivery_mode = '4' THEN 'miscarriage without curettage'
		WHEN delivery_mode = '5' THEN 'cesarean section'
		WHEN delivery_mode = '6' THEN 'cesarean by jeopardy'
		WHEN delivery_mode = '7' THEN 'vaginal with episiotomy'
		WHEN delivery_mode = '8' THEN 'vaginal without episiotomy'
		WHEN delivery_mode = '9' THEN 'vaginal with episiotomy plus forcipe'
		WHEN delivery_mode = '12' THEN 'Not_Applicable'
		ELSE delivery_mode
	END;

------- Updated NOt Applicable for values 0 and 12 from the above step to Null

UPDATE hospitalization_labor
SET
	delivery_mode = NULLIF(delivery_mode, 'Not_Applicable');


SELECT delivery_mode FROM hospitalization_labor;

-------------------------2. Updated weight_fetal_percentile from 0,1,2,3,4,5,6,7,8 to percentile 10,percentile 10-25, etc ---	

UPDATE hospitalization_labor
SET
	weight_fetal_percentile = CASE
		WHEN weight_fetal_percentile = '0' THEN 'percentile 10'
		WHEN weight_fetal_percentile = '1' THEN 'percentile 10-25'
		WHEN weight_fetal_percentile = '2' THEN 'percentile 25'
		WHEN weight_fetal_percentile = '3' THEN 'mpercentile 25-50'
		WHEN weight_fetal_percentile = '4' THEN 'percentile 50'
		WHEN weight_fetal_percentile = '5' THEN 'percentile 50-75'
		WHEN weight_fetal_percentile = '6' THEN 'percentile 75'
		WHEN weight_fetal_percentile = '7' THEN 'percentile 75-90'
		WHEN weight_fetal_percentile = '8' THEN 'percentile 90'
		WHEN weight_fetal_percentile = '25' THEN 'Not_Applicable'
		ELSE weight_fetal_percentile
	END;

----------Updated NOt Applicable for value 25 from the above step to Null

UPDATE hospitalization_labor
SET
	weight_fetal_percentile = NULLIF(weight_fetal_percentile, 'Not_Applicable');

SELECT weight_fetal_percentile FROM hospitalization_labor WHERE weight_fetal_percentile = 'Not_Applicable' ;  

---------------------Updated Not applicable to null values -----------------------------

UPDATE hospitalization_labor
SET   
	fetal_weight_at_ultrasound = NULLIF(fetal_weight_at_ultrasound,'not_applicable'),
	weight_fetal_percentile = NULLIF(weight_fetal_percentile,'not_applicable'),
	prepartum_maternal_weight = NULLIF(prepartum_maternal_weight,'not_applicable'),
	hospital_systolic_blood_pressure = NULLIF(hospital_systolic_blood_pressure,'not_applicable'),
	hospital_diastolic_blood_pressure = NULLIF(hospital_diastolic_blood_pressure,'not_applicable'),
	chronic_diseases = NULLIF(chronic_diseases,'not_applicable'),
	newborn_height = NULLIF(NULLIF(newborn_height, 'not_applicable'), 'no_answer'),
	newborn_head_circumference = NULLIF(NULLIF(newborn_head_circumference, 'not_applicable'), 'no_answer'),
    cesarean_section_reason = NULLIF(cesarean_section_reason , 'not_applicable'),
    chronic_diabetes = NULLIF(chronic_diabetes , 'not_applicable'),
	disease_diagnose_during_pregnancy = NULLIF(NULLIF(NULLIF(disease_diagnose_during_pregnancy, 'not_applicable'), 		 
    'no_answer'),'not_applicable+CX20'),
	treatment_disease_pregnancy = NULLIF(treatment_disease_pregnancy , 'not_applicable');

SELECT * FROM hospitalization_labor;

----------------------3,4.Updated diabetes_mellitus_dm_reported,diabetes_mellitus_disease_gap,diabetes_mellitus_treatment as per chonic_diabetes 1

UPDATE patient_history p
SET
	----diabetes_mellitus_dm_reported
	diabetes_mellitus_dm_reported = CASE
		WHEN h.chronic_diabetes = '1' THEN '1'
		ELSE p.diabetes_mellitus_dm_reported
	END,
	----diabetes_mellitus_treatment
	diabetes_mellitus_treatment = CASE
		WHEN h.chronic_diabetes = '1'
		AND p.diabetes_mellitus_treatment = 'not_applicable' THEN '1'
		ELSE p.diabetes_mellitus_treatment
	END,
	----diabetes_mellitus_disease_gap
	diabetes_mellitus_disease_gap = CASE
		WHEN h.chronic_diabetes = '1'
		AND p.diabetes_mellitus_disease_gap = 'not_applicable' THEN '0'
		ELSE p.diabetes_mellitus_disease_gap
	END
FROM
	hospitalization_labor h
WHERE
	p.case_id = h.case_id
	AND p.diabetes_mellitus_dm_reported = 0
	AND p.diabetes_mellitus_treatment = 'not_applicable'
	AND p.diabetes_mellitus_disease_gap = 'not_applicable'
	AND h.chronic_diabetes = '1';

-------Verified the above update----------------------------------
SELECT
	p.case_id,
	p.diabetes_mellitus_dm_reported,
	p.diabetes_mellitus_disease_gap,
	p.diabetes_mellitus_treatment,
	h.chronic_diabetes
FROM
	patient_history p
	JOIN hospitalization_labor h ON p.case_id = h.case_id
WHERE
	h.chronic_diabetes = '1';
	


-- Column:past_newborn_1_weight
--1. Update 'not_applicable','no_answer'
UPDATE prior_gestational_health
SET past_newborn_1_weight = NULL
WHERE past_newborn_1_weight IN ('not_applicable','no_answer');
--2.Remove commas from the values
UPDATE prior_gestational_health
SET past_newborn_1_weight = REPLACE(past_newborn_1_weight, ',', '');
--3.Update the datatype
ALTER TABLE prior_gestational_health
ALTER COLUMN past_newborn_1_weight 
TYPE INTEGER USING past_newborn_1_weight::INTEGER;


-- Column:gestational_age_past_newborn_1
-- Decode 0 and 1 as well as handle ('not_applicable','no_answer') 
UPDATE prior_gestational_health
SET gestational_age_past_newborn_1=
        CASE 
                WHEN gestational_age_past_newborn_1='0' THEN 'not_full_term'
                WHEN gestational_age_past_newborn_1='1' THEN 'fullterm'
                WHEN gestational_age_past_newborn_1 IN ('not_applicable','no_answer') THEN NULL
                ELSE gestational_age_past_newborn_1
        END;


-- Column:past_newborn_2_weight
--1. Update 'not_applicable','no_answer'
UPDATE prior_gestational_health
SET past_newborn_2_weight = NULL
WHERE past_newborn_2_weight IN ('not_applicable','no_answer');
--2.Remove commas from the values
UPDATE prior_gestational_health
SET past_newborn_2_weight = REPLACE(past_newborn_2_weight, ',', '');
--3.Update the datatype
ALTER TABLE prior_gestational_health
ALTER COLUMN past_newborn_2_weight 
TYPE INTEGER USING past_newborn_2_weight::INTEGER;


-- Column:gestational_age_past_newborn_2
-- Decode 0 and 1 as well as handle ('not_applicable','no_answer') 
UPDATE prior_gestational_health
SET gestational_age_past_newborn_2=
        CASE 
                WHEN gestational_age_past_newborn_2='0' THEN 'not_full_term'
                WHEN gestational_age_past_newborn_2='1' THEN 'fullterm'
                WHEN gestational_age_past_newborn_2 IN ('not_applicable','no_answer') THEN NULL
                ELSE gestational_age_past_newborn_2
        END;
		
		
-- Column:past_newborn_3_weight
--1. Update 'not_applicable','no_answer'
UPDATE prior_gestational_health
SET past_newborn_3_weight = NULL
WHERE past_newborn_3_weight IN ('not_applicable','no_answer');
--2.Remove commas from the values
UPDATE prior_gestational_health
SET past_newborn_3_weight = REPLACE(past_newborn_3_weight, ',', '');
--3.Update the datatype
ALTER TABLE prior_gestational_health
ALTER COLUMN past_newborn_3_weight 
TYPE INTEGER USING past_newborn_3_weight::INTEGER;


-- Column:gestational_age_past_newborn_3
-- Decode 0 and 1 as well as handle ('not_applicable','no_answer') 
UPDATE prior_gestational_health
SET gestational_age_past_newborn_3=
        CASE 
                WHEN gestational_age_past_newborn_3='0' THEN 'not_full_term'
                WHEN gestational_age_past_newborn_3='1' THEN 'fullterm'
                WHEN gestational_age_past_newborn_3 IN ('not_applicable','no_answer') THEN NULL
                ELSE gestational_age_past_newborn_3
        END;
		
		
-- Column:past_newborn_4_weight
--1. Update 'not_applicable','no_answer'
UPDATE prior_gestational_health
SET past_newborn_4_weight = NULL
WHERE past_newborn_4_weight IN ('not_applicable','no_answer');
--2.Remove commas from the values
UPDATE prior_gestational_health
SET past_newborn_4_weight = REPLACE(past_newborn_4_weight, ',', '');
--3.Update the datatype
ALTER TABLE prior_gestational_health
ALTER COLUMN past_newborn_4_weight 
TYPE INTEGER USING past_newborn_4_weight::INTEGER;


-- Column:gestational_age_past_newborn_4
-- Renaming column
ALTER TABLE prior_gestational_health
RENAME COLUMN gestational_age_past_4_newborn TO gestational_age_past_newborn_4;
-- Decode 0 and 1 as well as handle ('not_applicable','no_answer') 
UPDATE prior_gestational_health
SET gestational_age_past_newborn_4=
        CASE 
                WHEN gestational_age_past_newborn_4='0' THEN 'not_full_term'
                WHEN gestational_age_past_newborn_4='1' THEN 'fullterm'
                WHEN gestational_age_past_newborn_4 IN ('not_applicable','no_answer') THEN NULL
                ELSE gestational_age_past_newborn_4
        END;
		
		
-- Column:past_pregnancies_number
-- Step 1: Alter the column data type to INTEGER
ALTER TABLE prior_gestational_health
ALTER COLUMN past_pregnancies_number TYPE INTEGER 
USING past_pregnancies_number::INTEGER;
-- Step 2: Update `past_pregnancies_number` based on `case_id` conditions
-- Update `past_pregnancies_number` to 0 for cases with no previous newborn weight
UPDATE prior_gestational_health
SET past_pregnancies_number = 0
WHERE case_id IN (15, 240);
-- Update `past_pregnancies_number` to 1 for cases with only `newborn1` weight available
UPDATE prior_gestational_health
SET past_pregnancies_number = 1
WHERE case_id IN (70, 182, 220, 239, 263);
-- Update `past_pregnancies_number` to 2 for cases with `newborn1` and `newborn2` weights available
UPDATE prior_gestational_health
SET past_pregnancies_number = 2
WHERE case_id IN (48, 201);
--------------------------------------------------------------------------------------------------------------------------------------


UPDATE public.patient_history AS ph
SET diabetes_mellitus_treatment = mh.diabetes_mellitus_treatment
FROM public.maternal_health_tbl AS mh
WHERE ph.case_id = mh.case_id;

UPDATE public.patient_history
SET diabetes_mellitus_treatment = NULL
WHERE diabetes_mellitus_treatment = 'not_applicable';

select * from public.patient_history
-------------------------patient_history------- ---------------
-- changed not_applicable and no_answer in table (patient_history)
UPDATE public.patient_history
SET hypertension_past_treatment = NULL
WHERE hypertension_past_treatment = 'not_applicable';

UPDATE public.patient_history
SET  diabetes_mellitus_disease_gap = NULL
WHERE diabetes_mellitus_disease_gap = 'not_applicable';

UPDATE public.patient_history
SET  diabetes_mellitus_treatment = NULL
WHERE diabetes_mellitus_treatment = 'not_applicable';

UPDATE public.patient_history
SET prepregnant_weight = NULL
WHERE prepregnant_weight in ('not_applicable','no_answer');

UPDATE public.patient_history
SET prepregnant_bmi = NULL
WHERE  prepregnant_bmi  in ('not_applicable','no_answer');

UPDATE public.patient_history
SET current_maternal_weight_1st_tri = NULL
WHERE  current_maternal_weight_1st_tri = 'not_applicable';

UPDATE public.patient_history
SET current_maternal_weight_2nd_tri = NULL
WHERE current_maternal_weight_2nd_tri  = 'not_applicable';

UPDATE public.patient_history
SET current_maternal_weight_3rd_tri = NULL
WHERE current_maternal_weight_3rd_tri = 'not_applicable';

--------------------------------------------------public.hospitalization_labor------------------------------------------------------------
-----rename column name prepartum_maternal_height
alter table hospitalization_labor 
RENAME COLUMN prepartum_maternal_heigh TO prepartum_maternal_height;

select * from hospitalization_labor 

update public.hospitalization_labor set prepartum_maternal_height =null where prepartum_maternal_height = 'not_applicable';
------------------------------------------------------------------------------------------
update public.hospitalization_labor set delivery_mode = 'cesarean section' where case_id in (53,74,79,96,249,261,37,176,270);

SELECT case_id, delivery_mode
FROM public.hospitalization_labor
WHERE case_id IN (53, 74, 79, 96, 249, 261, 37, 176, 270)
ORDER BY case_id;


------------------------------------------------------------------------------
--------------------To find the wrong entry records -------------
select hospital_systolic_blood_pressure, hospital_diastolic_blood_pressure
from public.hospitalization_labor
where cast(hospital_diastolic_blood_pressure as integer) > cast(hospital_systolic_blood_pressure as integer)
and hospital_diastolic_blood_pressure != 'not_applicable' and hospital_systolic_blood_pressure != 'not_applicable';

------------To update reverse entry systolic/disastolic record---------

update public.hospitalization_labor set hospital_systolic_blood_pressure = hospital_diastolic_blood_pressure, hospital_diastolic_blood_pressure = hospital_systolic_blood_pressure
where cast(hospital_diastolic_blood_pressure as integer) > cast(hospital_systolic_blood_pressure as integer)
and hospital_diastolic_blood_pressure != 'not_applicable' and hospital_systolic_blood_pressure != 'not_applicable';

--------------------------------------------------------------------------------------------

update public.hospitalization_labor set hospital_systolic_blood_pressure= null
where hospital_systolic_blood_pressure='not_applicable'

------------------------------------------------------------------------------
update public.hospitalization_labor set hospital_diastolic_blood_pressure= null
where hospital_diastolic_blood_pressure='not_applicable'

---------------------------------------public.patient_history----------------------------------------
----color_ethnicity
ALTER TABLE public.patient_history

ALTER COLUMN color_ethnicity SET DATA TYPE VARCHAR

USING color_ethnicity::VARCHAR;

----- change to given as data dictionalry

UPDATE public.patient_history
SET color_ethnicity = CASE

    WHEN color_ethnicity = '0' THEN 'white'

    WHEN color_ethnicity = '1' THEN 'Black'

	WHEN color_ethnicity = '2' THEN 'Brown'

    WHEN color_ethnicity = '3' THEN 'Asian'

    ELSE color_ethnicity -- Optional: keep existing value if it's not '0' or '1'

END

WHERE color_ethnicity IN ('0', '1','2','3');

-------------------------------------------------------
-- 1st step, Alter table to change the data type since it was integer
ALTER TABLE public.patient_history
ALTER COLUMN current_bmi_according_who TYPE varchar(100)
USING current_bmi_according_who::varchar(100);

UPDATE public.patient_history
SET current_bmi_according_who = CASE
    WHEN current_bmi_according_who = '0' AND current_bmi < 18.5 THEN 'Underweight'
    WHEN current_bmi_according_who = '1' AND current_bmi >= 18.5 AND current_bmi <= 24.9 THEN 'Normal weight'
    WHEN current_bmi_according_who = '2' AND current_bmi >= 25 AND current_bmi <= 29.9 THEN 'Overweight'
    WHEN current_bmi_according_who = '3' AND current_bmi >= 30 THEN 'Obese'
    ELSE current_bmi_according_who -- Optional: keep existing value if it doesn't match conditions
END
WHERE current_bmi_according_who IN ('0', '1', '2', '3');


UPDATE public.patient_history
SET current_bmi_according_who = CASE
    WHEN current_bmi < 18.5 THEN 'Underweight'
    WHEN current_bmi  between 18.5 and 24.9 THEN 'Normal weight'
    WHEN current_bmi between 25 and 29.9 THEN 'Overweight'
	WHEN current_bmi between 29.9 and 39.9 THEN 'Obese'
    WHEN current_bmi > 40  THEN 'Extremely obese'
END

-- you can get same value as bmi_according_who then change it to 'normal weight'
UPDATE public.patient_history
SET current_bmi_according_who = bmi_according_who
WHERE case_id = 157;  

UPDATE public.patient_history
SET current_bmi_according_who = 'normal weight'
WHERE case_id = 157;

-- check that  updated particular record
SELECT *
FROM public.patient_history
WHERE case_id = 157 ;

UPDATE public.patient_history
SET current_bmi_according_who = 'normal weight'
WHERE case_id = 157;


-- Column:miscarriage
-- Update the `miscarriage` column to decode the values
UPDATE hospitalization_labor
SET miscarriage = 
    CASE 
        WHEN miscarriage IN (1,2,3) THEN 1
        ELSE miscarriage  
    END;


-------------Converting Chronic_diabetes values for rows with values 888 and 88888 to null --------

UPDATE hospitalization_labor
SET chronic_diabetes = CASE
WHEN chronic_diabetes IS NULL THEN NULL
WHEN chronic_diabetes IN ('888', '88,888.00') THEN NULL
ELSE chronic_diabetes
END;

SELECT chronic_diabetes, case_id FROM hospitalization_labor WHERE chronic_diabetes in ('888', '88,888.00')

SELECT chronic_diabetes FROM hospitalization_labor

SELECT * FROM hospitalization_labor

----------converting current_maternal_weight_3rd_tri weight of case_id 237 to 99.9 from 999kg and not_applicable to null----------------------------------------------

UPDATE patient_history
SET current_maternal_weight_3rd_tri = CASE 
	WHEN current_maternal_weight_3rd_tri IS NULL THEN NULL
	WHEN current_maternal_weight_3rd_tri = 'not_applicable' THEN NULL
	WHEN current_maternal_weight_3rd_tri = '999' THEN '99.9'
	ELSE current_maternal_weight_3rd_tri
END;
	
SELECT current_maternal_weight_3rd_tri FROM patient_history WHERE case_id = '237'
select * from patient_history

--------------------------Run after team 5----------------------------------------------------------	
--------------------------rename column hight_at_inclusion from patient_history table-----------------------------------------------------------------
ALTER TABLE patient_history
RENAME COLUMN hight_at_inclusion TO maternal_height_at_inclusion;

--------------------------rename firt_trimester_hemoglobin to first_trimester_hemoglobin from maternal_lab-----------------------------------------------------------------
ALTER TABLE maternal_lab
RENAME COLUMN firt_trimester_hemoglobin TO first_trimester_hemoglobin;

-----------------------------Maternal_Lab Table -all not_applicable are converted to null--------------------------------------
-- SELECT * FROM Maternal_Lab
	
-- UPDATE maternal_lab
-- SET   
-- 	second_trimester_hematocrit = NULLIF(second_trimester_hematocrit, 'not_applicable'),
-- 	third_trimester_hematocrit = NULLIF(third_trimester_hematocrit, 'not_applicable'),
-- 	second_trimester_hemoglobin = NULLIF(second_trimester_hemoglobin, 'not_applicable'),
-- 	third_trimester_hemoglobin = NULLIF(third_trimester_hemoglobin, 'not_applicable'),
-- 	second_tri_fasting_blood_glucose = NULLIF(second_tri_fasting_blood_glucose, 'not_applicable'),
-- 	third_tri_fasting_blood_glucose = NULLIF(third_tri_fasting_blood_glucose, 'not_applicable'),
-- 	"1st_hour_ogtt75_1st_tri" = NULLIF("1st_hour_ogtt75_1st_tri", 'not_applicable'),
-- 	"1st_hour_ogtt75_2tri" = NULLIF("1st_hour_ogtt75_2tri", 'not_applicable'),
-- 	"1st_hour_ogtt75_3tri" = NULLIF("1st_hour_ogtt75_3tri", 'not_applicable'),
-- 	"2nd_hour_ogtt_1tri" = NULLIF("2nd_hour_ogtt_1tri", 'not_applicable'),
-- 	"2nd_hour_ogtt75_2tri" = NULLIF("2nd_hour_ogtt75_2tri", 'not_applicable'),
-- 	"2nd_hour_ogtt_3tri" = NULLIF("2nd_hour_ogtt_3tri", 'not_applicable'),
-- 	right_systolic_blood_pressure = NULLIF(right_systolic_blood_pressure, 'not_applicable'),
-- 	right_diastolic_blood_pressure = NULLIF(right_diastolic_blood_pressure, 'not_applicable'),
-- 	left_systolic_blood_pressure = NULLIF(left_systolic_blood_pressure , 'not_applicable'),
-- 	left_diastolic_blood_pressure = NULLIF(left_diastolic_blood_pressure, 'not_applicable');
-------------end----------




-------------Converting Chronic_diabetes values for rows with values 888 and 88888 to null --------

-- UPDATE hospitalization_labor
-- SET chronic_diabetes = CASE
-- WHEN chronic_diabetes IS NULL THEN NULL
-- WHEN chronic_diabetes IN ('888', '88,888.00') THEN NULL
-- ELSE chronic_diabetes
-- END;

-- SELECT chronic_diabetes, case_id FROM hospitalization_labor WHERE chronic_diabetes in ('888', '88,888.00')
-- SELECT chronic_diabetes FROM hospitalization_labor
-- 	SELECT * FROM hospitalization_labor

-- ----------converting current_maternal_weight_3rd_tri weight of case_id 237 to 99.9 from 999kg and not_applicable to null----------------------------------------------

-- UPDATE patient_history
-- SET current_maternal_weight_3rd_tri = CASE 
-- 	WHEN current_maternal_weight_3rd_tri IS NULL THEN NULL
-- 	WHEN current_maternal_weight_3rd_tri = 'not_applicable' THEN NULL
-- 	WHEN current_maternal_weight_3rd_tri = '999' THEN '99.9'
-- 	ELSE current_maternal_weight_3rd_tri
-- END;
	
-- SELECT current_maternal_weight_3rd_tri FROM patient_history WHERE case_id = '237'
-- select * from patient_history

-- --------------------------Run after team 5----------------------------------------------------------	
-- --------------------------rename column hight_at_inclusion from patient_history table-----------------------------------------------------------------
-- ALTER TABLE patient_history
-- RENAME COLUMN hight_at_inclusion TO maternal_height_at_inclusion;

-- --------------------------rename firt_trimester_hemoglobin to first_trimester_hemoglobin from maternal_lab-----------------------------------------------------------------
-- ALTER TABLE maternal_lab
-- RENAME COLUMN firt_trimester_hemoglobin TO first_trimester_hemoglobin;

-- -----------------------------Maternal_Lab Table -all not_applicable are converted to null--------------------------------------
SELECT * FROM Maternal_Lab

	SELECT * FROM Maternal_Lab
	
UPDATE maternal_lab
SET
second_trimester_hematocrit = CASE 
WHEN second_trimester_hematocrit::TEXT = 'not_applicable' THEN NULL
ELSE second_trimester_hematocrit END,
third_trimester_hematocrit = CASE
WHEN third_trimester_hematocrit::TEXT = 'not_applicable' THEN NULL
ELSE third_trimester_hematocrit END,
second_trimester_hemoglobin = CASE
WHEN second_trimester_hemoglobin::TEXT = 'not_applicable' THEN NULL
ELSE second_trimester_hemoglobin END,
third_trimester_hemoglobin = CASE
WHEN third_trimester_hemoglobin::TEXT = 'not_applicable' THEN NULL
ELSE third_trimester_hemoglobin END;


UPDATE maternal_lab
SET	
	second_tri_fasting_blood_glucose = NULLIF(second_tri_fasting_blood_glucose, 'not_applicable'),
	third_tri_fasting_blood_glucose = NULLIF(third_tri_fasting_blood_glucose, 'not_applicable'),
	"1st_hour_ogtt75_1st_tri" = NULLIF("1st_hour_ogtt75_1st_tri", 'not_applicable'),
	"1st_hour_ogtt75_2tri" = NULLIF("1st_hour_ogtt75_2tri", 'not_applicable'),
	"1st_hour_ogtt75_3tri" = NULLIF("1st_hour_ogtt75_3tri", 'not_applicable'),
	"2nd_hour_ogtt_1tri" = NULLIF("2nd_hour_ogtt_1tri", 'not_applicable'),
	"2nd_hour_ogtt75_2tri" = NULLIF("2nd_hour_ogtt75_2tri", 'not_applicable'),
	"2nd_hour_ogtt_3tri" = NULLIF("2nd_hour_ogtt_3tri", 'not_applicable'),
	right_systolic_blood_pressure = NULLIF(right_systolic_blood_pressure, 'not_applicable'),
	right_diastolic_blood_pressure = NULLIF(right_diastolic_blood_pressure, 'not_applicable'),
	left_systolic_blood_pressure = NULLIF(left_systolic_blood_pressure , 'not_applicable'),
	left_diastolic_blood_pressure = NULLIF(left_diastolic_blood_pressure, 'not_applicable');
	

---------end-------

/*-----------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------

List of Columns to transform
1. first_trimester_hematocrit
2. second_trimester_hematocrit, second_trimester_hemoglobin
3. third_trimester_hematocrit
4. first_trimester_hemoglobin
5. third_trimester_hemoglobin
6. tobacco_use
7. tobacco_use_in_months
8. tobacco_quantity_by_day
9. alcohol_use
10. alcohol_quantity_milliliters
11. alcohol_preference
12. gestational_diabetes_mellitus_pregnancy
13. apgar_1st_min
14. apgar_5th_min
15. cesarean_section_reason
16. hiv_1tri
17. syphilis_1tri  
18. c_hepatitis_1tri
*/

--1. first_trimester_hematocrit

-- Step 1: Impute first_trimester_hematocrit for case_ids:19, 38, 42, 61, 170, 228, 258, 265, 273, 281
   --from firt_trimester_hemoglobin.


SELECT case_id,
	   first_trimester_hematocrit,
	   first_trimester_hemoglobin
FROM maternal_lab
WHERE first_trimester_hematocrit IS NULL
AND first_trimester_hemoglobin IS NOT NULL;

/*
"case_id"	"first_trimester_hematocrit"	"first_trimester_hemoglobin"
	19												10.9
	38												12.0
	42												13.4
	170												11.9
	228												11.8
	265												11.4
	281												12.2
	61												13.2
	258												12.4
	273												12.1
*/

UPDATE maternal_lab
SET first_trimester_hematocrit = first_trimester_hemoglobin * 3
WHERE first_trimester_hematocrit IS NULL
AND first_trimester_hemoglobin IS NOT NULL;

--UPDATE 10 Query returned successfully

SELECT case_id,
	   first_trimester_hematocrit,
	   first_trimester_hemoglobin
FROM maternal_lab
WHERE case_id IN (19, 38, 42, 61, 170, 228, 258, 265, 273, 281);

/*
"case_id"	"first_trimester_hematocrit"	"first_trimester_hemoglobin"
	19					32.7						10.9
	38					36.0						12.0
	42					40.2						13.4
	170					35.7						11.9
	228					35.4						11.8
	265					34.2						11.4
	281					36.6						12.2
	61					39.6						13.2
	258					37.2						12.4
	273					36.3						12.1
*/

---------------------------------
--2. second_trimester_hematocrit

/*
Step 1: Replace not_applicable to NULL for second_trimester_hematocrit, second_trimester_hemoglobin
Step 2: Change data type to NUMERIC(5,1) for second_trimester_hematocrit, second_trimester_hemoglobin
Step 3: Impute second_trimester_hematocrit for 
   case_ids: 44, 77, 80, 150, 153, 180, 195, 199, 208, 224, 242
   from second_trimester_hemoglobin.
Step 4: Case id 216 has 11.9 value which may be a data entry error
  because second_trimester_hemoglobin is (11.9).
  Hematocrit~ 3*Hemoglobin (verified with our dataset as well)
*/

SELECT * FROM maternal_lab;

--Step 1: Replace not_applicable to NULL for second_trimester_hematocrit, second_trimester_hemoglobin

SELECT case_id, 
	   second_trimester_hematocrit, 
	   second_trimester_hemoglobin
FROM maternal_lab
WHERE second_trimester_hematocrit='not_applicable'
OR second_trimester_hemoglobin = 'not_applicable';

--Already taken care of by team 4
select second_trimester_hematocrit,second_trimester_hemoglobin from 
maternal_lab where case_id IN (115,142);

/*
"second_trimester_hematocrit"	"second_trimester_hemoglobin"
	
*/


--Step 2: Change data type to NUMERIC(5,1) for second_trimester_hematocrit, second_trimester_hemoglobin

ALTER TABLE maternal_lab
ALTER COLUMN second_trimester_hematocrit TYPE NUMERIC(5,1) USING second_trimester_hematocrit::NUMERIC(5,1);

--ALTER TABLE Query returned successfully

ALTER TABLE maternal_lab
ALTER COLUMN second_trimester_hemoglobin TYPE NUMERIC(5,1) USING second_trimester_hemoglobin::NUMERIC(5,1);

--ALTER TABLE Query returned successfully

-- Step 3: Impute second_trimester_hematocrit for 
   --case_ids: 44, 77, 80, 150, 153, 180, 195, 199, 208, 224, 242
   --from second_trimester_hemoglobin.
   
SELECT case_id,
	   second_trimester_hematocrit,
	   second_trimester_hemoglobin
FROM maternal_lab
WHERE second_trimester_hematocrit IS NULL
AND second_trimester_hemoglobin IS NOT NULL;

/*
"case_id"	"second_trimester_hematocrit"	"second_trimester_hemoglobin"
	44													"10.5"
	77													"10.9"
	80													"13"
	153													"12.7"
	180													"10.9"
	195													"10.4"
	199													"10.2"
	208													"12.8"
	224													"12"
	150													"13.7"
	242													"12.8"
*/

UPDATE maternal_lab
SET second_trimester_hematocrit = second_trimester_hemoglobin * 3
WHERE second_trimester_hematocrit IS NULL
AND second_trimester_hemoglobin IS NOT NULL;

--UPDATE 11 Query returned successfully

SELECT case_id,
	   second_trimester_hematocrit,
	   second_trimester_hemoglobin
FROM maternal_lab
WHERE case_id IN (44, 77, 80, 150, 153, 180, 195, 199, 208, 224, 242);

/*
"case_id"	"second_trimester_hematocrit"	"second_trimester_hemoglobin"
	77				32.7							10.9
	44				31.5							10.5
	80				39.0							13.0
	153				38.1							12.7
	180				32.7							10.9
	195				31.2							10.4
	199				30.6							10.2
	208				38.4							12.8
	224				36.0							12.0
	150				41.1							13.7
	242				38.4							12.8
*/

--Step 4: Case id 216 has 11.9 value which may be a data entry error
  --because second_trimester_hemoglobin is (11.9).
  --Hematocrit~ 3*Hemoglobin (verified with our dataset as well)
  
SELECT case_id,
	   second_trimester_hematocrit,
	   second_trimester_hemoglobin 
FROM maternal_lab
WHERE case_id= 216;

/*
"case_id"	"second_trimester_hematocrit"	"second_trimester_hemoglobin"
	216					11.9						11.9
*/

UPDATE maternal_lab
SET second_trimester_hematocrit = second_trimester_hemoglobin * 3
WHERE case_id= 216;

--UPDATE 1 Query returned successfully

SELECT case_id,
	   second_trimester_hematocrit,
	   second_trimester_hemoglobin 
FROM maternal_lab
WHERE case_id= 216;

/*
"case_id"	"second_trimester_hematocrit"	"second_trimester_hemoglobin"
	216					35.7							11.9
*/
--------------------------------
--3. third_trimester_hematocrit
/*
Step 1: Replace not_applicable to NULL for third_trimester_hematocrit, third_trimester_hemoglobin
Step 2: Change data type to NUMERIC(5,1) for second_trimester_hematocrit, second_trimester_hemoglobin
Step 3: Impute third_trimester_hematocrit for 
        case_ids: 12, 153, 208 from second_trimester_hemoglobin.
*/

--Step 1: Replace not_applicable to NULL for third_trimester_hematocrit, third_trimester_hemoglobin

SELECT case_id, 
	   third_trimester_hematocrit, 
	   third_trimester_hemoglobin
FROM maternal_lab
WHERE third_trimester_hematocrit='not_applicable'
OR third_trimester_hemoglobin = 'not_applicable';

--Already taken care of by team 4

/*
"third_trimester_hematocrit"	"third_trimester_hemoglobin"
	
*/


--Step 2: Change data type to NUMERIC(5,1) for second_trimester_hematocrit, second_trimester_hemoglobin

ALTER TABLE maternal_lab
ALTER COLUMN third_trimester_hematocrit TYPE NUMERIC(5,1) USING third_trimester_hematocrit::NUMERIC(5,1);

--ALTER TABLE Query returned successfully

ALTER TABLE maternal_lab
ALTER COLUMN third_trimester_hemoglobin TYPE NUMERIC(5,1) USING third_trimester_hemoglobin::NUMERIC(5,1);

--ALTER TABLE Query returned successfully

-- Step 3: Impute third_trimester_hematocrit for 
   --case_ids: 12, 153, 208 from second_trimester_hemoglobin.
   
SELECT case_id,
	   third_trimester_hematocrit,
	   third_trimester_hemoglobin
FROM maternal_lab
WHERE third_trimester_hematocrit IS NULL
AND third_trimester_hemoglobin IS NOT NULL;

/*
"case_id"	"third_trimester_hematocrit"	"third_trimester_hemoglobin"
	12													9.8
	153													12.5
	208													12.4
*/

UPDATE maternal_lab
SET third_trimester_hematocrit = third_trimester_hemoglobin * 3
WHERE third_trimester_hematocrit IS NULL
AND third_trimester_hemoglobin IS NOT NULL;

--UPDATE 3 Query returned successfully

SELECT case_id,
	   third_trimester_hematocrit,
	   third_trimester_hemoglobin
FROM maternal_lab
WHERE case_id IN (12, 153, 208);

/*
"case_id"	"third_trimester_hematocrit"	"third_trimester_hemoglobin"
	12				29.4							9.8
	153				37.5							12.5
	208				37.2							12.4
*/

-------------------------
--4. first_trimester_hemoglobin

/*
Step 1: For case_id: 108 Values in first_trimester_hematocrit we can impute first_trimester_hemoglobin 
  from that value.
*/  

SELECT first_trimester_hemoglobin FROM
maternal_lab

--Step 2: For case_id: 108 Values in first_trimester_hematocrit we can impute first_trimester_hemoglobin 
  --from that value.
  
SELECT case_id,
	   first_trimester_hematocrit,
	   first_trimester_hemoglobin
FROM maternal_lab
WHERE first_trimester_hematocrit IS NOT NULL
AND first_trimester_hemoglobin IS NULL;

/*
"case_id"	"first_trimester_hematocrit"	"first_trimester_hemoglobin"
	108				48.7	
*/

UPDATE maternal_lab
SET first_trimester_hemoglobin = first_trimester_hematocrit / 3
WHERE first_trimester_hematocrit IS NOT NULL
AND first_trimester_hemoglobin IS NULL;

--UPDATE 1 Query returned successfully

SELECT case_id,
	   first_trimester_hematocrit,
	   first_trimester_hemoglobin
FROM maternal_lab
WHERE case_id=108;

/*
"case_id"	"first_trimester_hematocrit"	"first_trimester_hemoglobin"
	108					48.7						16.2
*/
----------------
--5. third_trimester_hemoglobin

--Step 1: Case id 177 the value in third_trimester_hemoglobin is 121 that may be a data entry error 
  --because in third_trimester_hematocrit the value is 37 that is nothing but 12.1 * 3.  
  --so that value can be replaced to 12.1
  

SELECT case_id,
	   third_trimester_hematocrit,
	   third_trimester_hemoglobin
FROM maternal_lab
WHERE case_id=177;

/*
"case_id"	"third_trimester_hematocrit"	"third_trimester_hemoglobin"
	177					37.0						121.0
*/

UPDATE maternal_lab
SET third_trimester_hemoglobin=12.1
WHERE case_id=177; 

--UPDATE 1 Query returned successfully

SELECT case_id,third_trimester_hematocrit,
	   third_trimester_hemoglobin
FROM maternal_lab
WHERE case_id=177;

/*
"case_id"	"third_trimester_hematocrit"	"third_trimester_hemoglobin"
	177					37.0						12.1
*/

-----------------------
--6. tobacco_use  -- no change as we decided not to replace 0 and 1.
----------------------
--7. tobacco_use_in_months

--Step 1: Replace not_applicable to 0. Because tobacco_use is 0.
--Step 2: Change data type to numeric(5,0).

--Step 1: Replace not_applicable to 0. Because tobacco_use is 0.

SELECT case_id, tobacco_use_in_months
FROM health_risk_fetus
WHERE tobacco_use_in_months = 'not_applicable';

/*
Successfully run. Total query runtime: 99 msec.
219 rows affected.
*/

UPDATE health_risk_fetus
SET tobacco_use_in_months= 0
WHERE tobacco_use_in_months = 'not_applicable';

--UPDATE 219 Query returned successfully

SELECT case_id, tobacco_use_in_months
FROM health_risk_fetus
WHERE tobacco_use_in_months = 'not_applicable';

/*
Successfully run. Total query runtime: 82 msec.
0 rows affected.
*/

SELECT tobacco_use_in_months FROM health_risk_fetus;

--Step 2: Change data type to numeric(5,0).

ALTER TABLE health_risk_fetus
ALTER COLUMN tobacco_use_in_months TYPE NUMERIC(5,0) USING tobacco_use_in_months::NUMERIC(5,0);

--ALTER TABLE Query returned successfully

------------------------
--8. tobacco_quantity_by_day

--Step 1: Replace not_applicable to 0. Because tobacco_use is 0.
--Step 2: Change data type to numeric.

--Step 1: Replace not_applicable to 0. Because tobacco_use is 0.

SELECT case_id, tobacco_quantity_by_day
FROM health_risk_fetus
WHERE tobacco_quantity_by_day = 'not_applicable';

/*
Successfully run. Total query runtime: 99 msec.
219 rows affected.
*/

UPDATE health_risk_fetus
SET tobacco_quantity_by_day= 0
WHERE tobacco_quantity_by_day = 'not_applicable';

--UPDATE 219 Query returned successfully

SELECT case_id, tobacco_quantity_by_day
FROM health_risk_fetus
WHERE tobacco_quantity_by_day = 'not_applicable';

/*
Successfully run. Total query runtime: 82 msec.
0 rows affected.
*/

--Step 2: Change data type to numeric.

ALTER TABLE health_risk_fetus
ALTER COLUMN tobacco_quantity_by_day TYPE NUMERIC(5,0) USING tobacco_quantity_by_day::NUMERIC(5,0);

--ALTER TABLE Query returned successfully

----------------
--9. alcohol_use  -- no change as we decided not to replace 0 and 1.
----------------

--10. alcohol_quantity_milliliters

--Step 1: Replace not_applicable to 0 because alcohol use is No.
--Step 2: Replace no_answer to blank.
--Step 3: Remove comma 
--Step 4: Change data type to integer.

--Step 1: Replace not_applicable to 0 because alcohol use is No.

SELECT case_id, alcohol_quantity_milliliters
FROM health_risk_fetus
WHERE alcohol_quantity_milliliters = 'not_applicable';

/*
Successfully run. Total query runtime: 99 msec.
226 rows affected.
*/

UPDATE health_risk_fetus
SET alcohol_quantity_milliliters= 0
WHERE alcohol_quantity_milliliters = 'not_applicable';

--UPDATE 226 Query returned successfully

SELECT case_id, alcohol_quantity_milliliters
FROM health_risk_fetus
WHERE alcohol_quantity_milliliters = 'not_applicable';

/*
Successfully run. Total query runtime: 82 msec.
0 rows affected.
*/

--Step 2: Replace no_answer to blank.

SELECT case_id, alcohol_quantity_milliliters
FROM health_risk_fetus
WHERE alcohol_quantity_milliliters = 'no_answer';

/*
"case_id"	"alcohol_quantity_milliliters"
	75			"no_answer"
	101			"no_answer"
*/

UPDATE health_risk_fetus
SET alcohol_quantity_milliliters= 0
WHERE alcohol_quantity_milliliters = 'no_answer';

--UPDATE 2 Query returned successfully

SELECT case_id, alcohol_quantity_milliliters
FROM health_risk_fetus
WHERE alcohol_quantity_milliliters = 'no_answer';

/*
Successfully run. Total query runtime: 82 msec.
0 rows affected.
*/

--Step 3: Remove comma 

SELECT case_id, alcohol_quantity_milliliters
FROM health_risk_fetus;


UPDATE health_risk_fetus
SET alcohol_quantity_milliliters = REPLACE(alcohol_quantity_milliliters, ',' ,'');
--UPDATE 272

--Step 4: Change data type to integer.

ALTER TABLE health_risk_fetus
ALTER COLUMN alcohol_quantity_milliliters TYPE NUMERIC(5,0) 
USING alcohol_quantity_milliliters::NUMERIC(5,0);

--ALTER TABLE Query returned successfully
---------------------
--11. alcohol_preference

--Step 1: Replace not_applicable to no_alcohol_use
--Step 2: Replace numerical to categorical.

--Step 1: Replace not_applicable to no_alcohol_use

SELECT case_id, alcohol_preference
FROM health_risk_fetus
WHERE alcohol_preference = 'not_applicable'
AND alcohol_use=0;

/*
Successfully run. Total query runtime: 99 msec.
226 rows affected.
*/

UPDATE health_risk_fetus
SET alcohol_preference= 'no_alcohol_use'
WHERE alcohol_preference = 'not_applicable'
AND alcohol_use=0;

--UPDATE 226 Query returned successfully

SELECT case_id, alcohol_preference
FROM health_risk_fetus
WHERE alcohol_preference = 'not_applicable';

/*
Successfully run. Total query runtime: 82 msec.
0 rows affected.
*/

--Step 2: Replace numerical to categorical.

SELECT alcohol_preference,count(case_id)
FROM health_risk_fetus
GROUP BY alcohol_preference;

/*
"alcohol_preference"	"count" 
"no_alcohol_use"		226						
						3
"0"						36
"1"						7
*/

UPDATE health_risk_fetus
SET alcohol_preference = CASE
WHEN alcohol_preference = '0' THEN 'fermented'
WHEN alcohol_preference = '1' Then 'distilled'
ELSE alcohol_preference
END;

--UPDATE 272 Query returned successfully

SELECT alcohol_preference,count(case_id)
FROM health_risk_fetus
GROUP BY alcohol_preference;

/*
"alcohol_preference"	"count"
"fermented"					36
"no_alcohol_use"			226
							3
"distilled"					7
*/
----------------
--12. gestational_diabetes_mellitus_pregnancy

/*
As per our understanding if disease_diagnosed_during_pregnancy column have 
(Has + DMG, DMG, DMG, Has + DMG, DMG, DMG) then gestational_diabetes_mellitus_pregnancy as 1. 
We could see if chronic_diabetes is 1 then gestational_diabetes_mellitus_pregnancy also 1 but it should be 0.
Planning to replace the numerical values into DM, GDM for better clarification.  
Step 1: change data type to Text 
Step 2: If chronic_diabetes is 1 then replace gestational_diabetes_mellitus_pregnancy value to DM.
Step 3: If disease_diagnosed_during_pregnancy column have (Has + DMG, DMG, DMG, Has + DMG, DMG, DMG) 
   then replace gestational_diabetes_mellitus_pregnancy value as GDM.
Step 4: For case_id 137 gestational_diabetes_mellitus_pregnancy is 1, 
   he dont have chronic diabetes so replacing 1 to GDM 
Step 5: Rename column name as hospital_DM_status
Step 6: Replace 0 to no_diabetes
*/

--Step 1: change data type to Text 
SELECT gestational_diabetes_mellitus
FROM health_risk_fetus;

ALTER TABLE health_risk_fetus
ALTER COLUMN gestational_diabetes_mellitus TYPE VARCHAR(255);

--ALTER TABLE Query returned successfully

--Step 2: If chronic_diabetes is 1 then replace gestational_diabetes_mellitus_pregnancy value to DM.

SELECT hl.case_id
FROM hospitalization_labor hl
JOIN health_risk_fetus hrf
ON hl.case_id=hrf.case_id
WHERE chronic_diabetes = '1';

/*
Successfully run. Total query runtime: 66 msec.
18 rows affected.
*/

UPDATE health_risk_fetus
SET gestational_diabetes_mellitus = 'DM'
WHERE case_id IN (SELECT hl.case_id
FROM hospitalization_labor hl
JOIN health_risk_fetus hrf
ON hl.case_id=hrf.case_id
WHERE chronic_diabetes = '1');

--UPDATE 18 Query returned successfully

--Step 3: If disease_diagnose_during_pregnancy column have 
--(Has + DMG, DMG, DMG, Has + DMG, DMG, DMG) then replace gestational_diabetes_mellitus_pregnancy 
--value as GDM.

SELECT hrf.case_id, gestational_diabetes_mellitus
FROM health_risk_fetus hrf 
JOIN hospitalization_labor hl
ON hrf.case_id=hl.case_id
AND disease_diagnose_during_pregnancy LIKE '%DMG%';

/*
"case_id"	"gestational_diabetes_mellitus"
	142			"1"
	71			"1"
	119			"1"
	195			"1"
	231			"1"
	234			"1"
*/

UPDATE health_risk_fetus
SET gestational_diabetes_mellitus = 'GDM'
WHERE case_id IN (SELECT hrf.case_id
FROM health_risk_fetus hrf 
JOIN hospitalization_labor hl
ON hrf.case_id=hl.case_id
AND disease_diagnose_during_pregnancy LIKE '%DMG%');

--UPDATE 6 Query returned successfully 


SELECT hl.case_id, gestational_diabetes_mellitus, 
       chronic_diabetes,disease_diagnose_during_pregnancy
FROM hospitalization_labor hl
JOIN health_risk_fetus hrf
ON hl.case_id=hrf.case_id
WHERE gestational_diabetes_mellitus = '1';

/*
"case_id"	"gestational_diabetes_mellitus"	"chronic_diabetes"	"disease_diagnose_during_pregnancy"
	137						"1"						" "
*/
 
--Step 4: For case_id 137 gestational_diabetes_mellitus_pregnancy is 1, 
 --he dont have chronic diabetes so replacing 1 to GDM 
 
UPDATE health_risk_fetus
SET gestational_diabetes_mellitus = 'GDM'
WHERE case_id = 137;

--UPDATE 1 Query returned successfully

--Step 5: Rename column name as hospital_DM_status

ALTER TABLE health_risk_fetus
RENAME COLUMN gestational_diabetes_mellitus TO hospital_dm_status;

--ALTER TABLE Query returned successfully

SELECT hospital_dm_status, count(case_id)
FROM health_risk_fetus
GROUP BY hospital_dm_status;

/*
"hospital_dm_status"	"count"
						  61
	"GDM"				  7
	"DM"	              18
	"0"	                  186
*/

--Step 6: Replace 0 to no_diabetes

SELECT hl.case_id,diabetes_mellitus_dm_reported,diabetes_mellitus_disease_gap, hospital_dm_status
FROM health_risk_fetus hrf JOIN hospitalization_labor hl
ON hrf.case_id=hl.case_id
JOIN patient_history ph
ON ph.case_id= hl.case_id
WHERE hospital_dm_status = '0'
AND diabetes_mellitus_dm_reported = 1;

/*
"case_id"	"diabetes_mellitus_dm_reported"	"diabetes_mellitus_disease_gap"	"hospital_dm_status"
	10				1								"1"								"0"
	151				1								"1"								"0"
	171				1								"1"								"0"
	264				1								"1"								"0"
	282				1								"1"								"0"
*/

SELECT hl.case_id,diabetes_mellitus_dm_reported,
	   diabetes_mellitus_disease_gap, 
	   hospital_dm_status, 
	   chronic_diabetes
FROM health_risk_fetus hrf JOIN hospitalization_labor hl
ON hrf.case_id=hl.case_id
JOIN patient_history ph
ON ph.case_id= hl.case_id
WHERE hospital_dm_status IS NULL;

/*Successfully run. Total query runtime: 97 msec.
61 rows affected.*/

UPDATE health_risk_fetus
SET hospital_dm_status = 'no_diabetes'
WHERE hospital_dm_status = '0';

--UPDATE 186 Query returned successfully

SELECT hospital_dm_status, count(case_id)
FROM health_risk_fetus
GROUP BY hospital_dm_status;

/*
"hospital_dm_status"	"count"
						  61
	"DM"				  18
	"GDM"				  7
	"no_diabetes"		  186
*/

-------------------
--13. apgar_1st_min

/*
For case id: 176 the value 99 looks typo because as per 5ht minute the data is 10 so it could be 9. 
Step 1: Replace 99 to 9 for case_id: 176.
*/

SELECT case_id, apgar_1st_min
FROM hospitalization_labor
WHERE apgar_1st_min = 99;

/*
"case_id"	"apgar_1st_min"
	176			99
*/

UPDATE hospitalization_labor
SET apgar_1st_min = 9
WHERE apgar_1st_min = 99;

--UPDATE 1 Query returned successfully 

SELECT case_id, apgar_1st_min
FROM hospitalization_labor
WHERE case_id=176;

/*
"case_id"	"apgar_1st_min"
	176			"9"
*/
---------------
--14. apgar_5th_min

/*
For case id : 224 1st minute is 9 and 5th is blank and we could see the baby delivery mode 
is vaginal without episiotomy and weight also normal and theres is no birth related complications 
so can we replace blank with 9 as per 1st minute. also we confirmed all other case_ids in which 
1st minute is 9, 5th minute is either 9 or 10.
Step 1: Replace blank to 9 for case_id: 224
*/

SELECT case_id, apgar_1st_min, apgar_5th_min
FROM hospitalization_labor
WHERE apgar_5th_min IS NULL
AND apgar_1st_min IS NOT NULL;

/*
"case_id"	"apgar_1st_min"	"apgar_5th_min"
	224				9	
*/


UPDATE hospitalization_labor
SET apgar_5th_min = 9
WHERE apgar_5th_min IS NULL
AND apgar_1st_min IS NOT NULL;

--UPDATE 1 Query returned successfully

SELECT case_id, apgar_5th_min
FROM hospitalization_labor
WHERE case_id=224;

/*
"case_id"	"apgar_5th_min"
	224			9
*/
-------------
--15. cesarean_section_reason

/*
Replaced 8 and 12 with proper reason. 
Step 1: For case_id:46 there is no_answer as per delivery mode it needs to replace with blank 
        because of vaginal delivery. AS we are changing all not_applicable to not_C_Section.
Step 2: For case_id: 107 the value is 8 as per delivery_mode column the value should be not_C_Section.
Step 3: For case_id: 17 the value is 12 but the delivery_mode is 5(C-Section) we cant assume a reason, 
        So it can be change to blank. 
Step 4: Replace not_applicable to 'not_C_Section'
Step 5: For case_id: 102,167 is not C-Section as per delivery_mode column. so replace null with 
        'not_C_Section'
Step 6: Replace ' ' with null for case_id: 146,150,137,155
Step 7: Replace 'eletiva' to 'planned C-Section'
Step 8: Replace 'acute fetal distress' to 'NRFS'
Step 9: Replace 'Nonreassuring fetal status (NRFS)' to 'NRFS'
*/

--Step 1: For case_id:46 there is no_answer as per delivery mode it needs to replace with 'not_C_Section' 
        --because of vaginal delivery. AS we are changing all not_applicable to not_C_Section.
--Step 2: For case_id: 107 the value is 8 as per delivery_mode column the value should be not_C_Section.

SELECT case_id, cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE case_id IN (46,107,17);

/*
"case_id"	"cesarean_section_reason"	"delivery_mode"
	17				"12"				"cesarean section"
	107				"8"					"vaginal forcipe"
	46				"no_answer"			"vaginal without episiotomy"
*/

SELECT case_id, cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason IN ('no_answer','8');

UPDATE hospitalization_labor
SET cesarean_section_reason = 'not_C_Section'
WHERE cesarean_section_reason IN ('no_answer','8');

--UPDATE 2 Query returned successfully


--Step 3: For case_id: 17 the value is 12 but the delivery_mode is 5(C-Section) we cant assume a reason, 
        --So it can be change to blank. 
		
UPDATE hospitalization_labor
SET cesarean_section_reason = NULL
WHERE case_id=17;

--UPDATE 1 Query returned successfully

--Step 4: Replace not_applicable to 'not_C_Section'

SELECT cesarean_section_reason, count(case_id)
FROM hospitalization_labor
GROUP BY cesarean_section_reason
ORDER BY cesarean_section_reason;

SELECT cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason = 'not_applicable';

/*
Successfully run. Total query runtime: 127 msec.
145 rows affected.
*/

UPDATE hospitalization_labor
SET cesarean_section_reason = 'not_C_Section'
WHERE cesarean_section_reason = 'not_applicable';

--UPDATE 145 Query returned successfully

--Step 5: For case_id: 102,167 is not C-Section. can replace null with 'not_C_Section'

SELECT case_id, cesarean_section_reason,delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason IS NULL
AND delivery_mode IS NOT NULL ;

/*
"case_id"	"cesarean_section_reason"	"delivery_mode"
17										"cesarean section"
18										"cesarean section"
102										"vaginal without episiotomy"
167										"vaginal without episiotomy"
200										"cesarean section"
72										"cesarean section"
*/

UPDATE hospitalization_labor
SET cesarean_section_reason = 'not_C_Section'
WHERE case_id IN(102,167);

--UPDATE 2 Query returned successfully

SELECT case_id, cesarean_section_reason,delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason IS NULL
AND delivery_mode IS NOT NULL;

/*
"case_id"	"cesarean_section_reason"	"delivery_mode"
17		"cesarean section"
18		"cesarean section"
200		"cesarean section"
72		"cesarean section"
*/

--Step 6: Replace ' ' with null for case_id: 146,150,137,155
SELECT case_id, cesarean_section_reason,delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason = ' ';

/*
Successfully run. Total query runtime: 98 msec.
63 rows affected.	
*/

UPDATE hospitalization_labor
SET cesarean_section_reason = NULL
WHERE cesarean_section_reason = ' ';

--UPDATE 63 Query returned successfully

SELECT count(case_id),cesarean_section_reason
FROM hospitalization_labor
GROUP BY cesarean_section_reason
ORDER BY count(case_id) DESC;

/*
"count"	"cesarean_section_reason"
149	"not_C_Section"
69	
14	"cephalopelvic disproportion"
13	"Nonreassuring fetal status (NRFS)"
7	"unsuccessful induction"
6	"previous cesarean section"
6	"breech presentation"
2	"fetal growth retardation"
1	"eletiva"
1	"placentae detachment"
1	"previa"
1	"fetal macrosomia "
1	"maternal acute hypertension"
1	"acute fetal distress"
*/

--Step 7: Replace 'eletiva' to 'planned C-Section'

SELECT case_id, cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason='eletiva';

UPDATE hospitalization_labor
SET cesarean_section_reason = 'planned C-Section'
WHERE cesarean_section_reason='eletiva';

--UPDATE 1 Query returned successfully

--Step 8: Replace 'acute fetal distress' to 'NRFS'

SELECT case_id, cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason='acute fetal distress';

UPDATE hospitalization_labor
SET cesarean_section_reason = 'NRFS'
WHERE cesarean_section_reason='acute fetal distress';

--UPDATE 1 Query returned successfully

--Step 9: Replace 'Nonreassuring fetal status (NRFS)' to 'NRFS'

SELECT case_id, cesarean_section_reason, delivery_mode
FROM hospitalization_labor
WHERE cesarean_section_reason='Nonreassuring fetal status (NRFS)';

UPDATE hospitalization_labor
SET cesarean_section_reason = 'NRFS'
WHERE cesarean_section_reason= 'Nonreassuring fetal status (NRFS)';

--UPDATE 13 Query returned successfully

SELECT count(case_id),cesarean_section_reason
FROM hospitalization_labor
GROUP BY cesarean_section_reason
ORDER BY count(case_id) DESC;

/*
"count"	"cesarean_section_reason"
149		"not_C_Section"
14		"cephalopelvic disproportion"
14		"NRFS"
69	
7		"unsuccessful induction"
6		"previous cesarean section"
6		"breech presentation"
2		"fetal growth retardation"
1		"maternal acute hypertension"
1		"previa"
1		"planned C-Section"
1		"placentae detachment"
1		"fetal macrosomia "
*/


------------------------------------------------------------------------------------------
--16. hiv_1tri

--Step 1: Replace not_applicable to blank
--Step 2: Change data type to integer.

--Step 1: Replace not_applicable to blank

SELECT * FROM Health_Risk_Fetus;

SELECT case_id, hiv_1tri
FROM Health_Risk_Fetus
WHERE hiv_1tri = 'not_applicable';

/*
"case_id"	"hiv_1tri"
1			"not_applicable"
*/

UPDATE Health_Risk_Fetus 
SET hiv_1tri = NULL
WHERE case_id =1;

--UPDATE 1 Query returned successfully 

SELECT case_id, hiv_1tri
FROM Health_Risk_Fetus
WHERE hiv_1tri = 'not_applicable';

/*
Successfully run. Total query runtime: 112 msec.
0 rows affected.
*/

--Step 2: Change data type to integer.

ALTER TABLE Health_Risk_Fetus
ALTER COLUMN hiv_1tri TYPE NUMERIC(5,0) USING hiv_1tri::NUMERIC(5,0);

--ALTER TABLE Query returned successfully
-------------------
--17. syphilis_1tri  

--Step 1: Replace not_applicable to blank
--Step 2: Change data type to integer.


--Step 1: Replace not_applicable to blank

SELECT case_id, syphilis_1tri
FROM Health_Risk_Fetus
WHERE syphilis_1tri = 'not_applicable';

/*
"case_id"	"syphilis_1tri"
171			"not_applicable"
172			"not_applicable"
174			"not_applicable"
176			"not_applicable"
*/

UPDATE Health_Risk_Fetus 
SET syphilis_1tri = NULL
WHERE case_id IN (171,172,174,176);

--UPDATE 4 Query returned successfully 

SELECT case_id, syphilis_1tri
FROM Health_Risk_Fetus
WHERE case_id IN (171,172,174,176);

SELECT case_id, syphilis_1tri
FROM Health_Risk_Fetus
WHERE syphilis_1tri = 'not_applicable';

/*
Successfully run. Total query runtime: 112 msec.
0 rows affected.
*/

--Step 2: Change data type to integer.

ALTER TABLE Health_Risk_Fetus
ALTER COLUMN syphilis_1tri TYPE NUMERIC(5,0) USING syphilis_1tri::NUMERIC(5,0);

--ALTER TABLE Query returned successfully
-------------------
--18. c_hepatitis_1tri

--Step 1: Replace not_applicable to blank
--Step 2: Change data type to integer.

--Step 1: Replace not_applicable to blank

SELECT case_id, c_hepatitis_1tri
FROM Health_Risk_Fetus
WHERE c_hepatitis_1tri = 'not_applicable';

/*
"case_id"	"c_hepatitis_1tri"
123				"not_applicable"
*/

UPDATE Health_Risk_Fetus 
SET c_hepatitis_1tri = NULL
WHERE case_id = 123;

--UPDATE 1 Query returned successfully 

SELECT case_id, c_hepatitis_1tri
FROM Health_Risk_Fetus
WHERE case_id = 123;


SELECT case_id, c_hepatitis_1tri
FROM Health_Risk_Fetus
WHERE c_hepatitis_1tri = 'not_applicable';

/*
Successfully run. Total query runtime: 112 msec.
0 rows affected.
*/

--Step 2: Change data type to integer.

ALTER TABLE Health_Risk_Fetus
ALTER COLUMN c_hepatitis_1tri TYPE NUMERIC(5,0) USING c_hepatitis_1tri::NUMERIC(5,0);

--ALTER TABLE Query returned successfully

--------------Team 6------------------

-----------------------------TRANSFORMATIONS OF TEAM6---------------------------------------------------------------------------
-----------Changing the value of mothers_hospital_stay from null to 3 for case_id=92,18,137,150-------

UPDATE Hospitalization_labor
SET mothers_hospital_stay=3
WHERE case_id in (92,18,137,150);

SELECT mothers_hospital_stay FROM hospitalization_labor WHERE case_id IN (92,18,137,150)
------------------------------------------------------------------------------------------------
----------For ID 9 we have the value of periumbilical_visceral_fat and 
-- periumbilical_total_fat. so, by the formula periumbilical_total_fat we are finding the 
-- value of periumbilical_subcutanous_fat
UPDATE Maternal_Fat
SET periumbilical_subcutanous_fat=(CAST(periumbilical_total_fat AS NUMERIC) -
     							CAST(periumbilical_visceral_fat AS NUMERIC))
WHERE case_id=9

SELECT periumbilical_subcutanous_fat FROM Maternal_Fat WHERE case_id=9
------------------------------------------------------------------------------------------
-----Replacing not_applicable with null for column periumbilical_subcutanous_fat and 
-- periumbilical_visceral_fat
UPDATE Maternal_Fat
SET periumbilical_subcutanous_fat=NULLIF(periumbilical_subcutanous_fat,'not_applicable'),
	periumbilical_visceral_fat=NULLIF(periumbilical_visceral_fat,'not_applicable')

SELECT periumbilical_subcutanous_fat, periumbilical_visceral_fat FROM maternal_fat

-----------------------------------------------------------------------------------------

-------Additional Transformation steps Team 1 ---------

-----Renaming the column
ALTER TABLE hospitalization_labor
    RENAME COLUMN expected_weight_for_the_newborn TO newborn_expected_weight;
ALTER TABLE hospitalization_labor
    RENAME COLUMN thoracic_perimeter_newborn TO newborn_thoracic_perimeter;
------------------
SELECT * FROM hospitalization_labor;

SELECT weight_fetal_percentile 
FROM hospitalization_labor 
WHERE weight_fetal_percentile = 'Not_Applicable' ;

UPDATE hospitalization_labor
SET
	chronic_diabetes = REPLACE(chronic_diabetes, ',', '');
	
	
Select chronic_diabetes
from  hospitalization_labor

SELECT
	p.case_id,
	p.diabetes_mellitus_dm_reported,
	p.diabetes_mellitus_disease_gap,
	p.diabetes_mellitus_treatment,
	h.chronic_diabetes
FROM
	patient_history p
	JOIN hospitalization_labor h ON p.case_id = h.case_id
WHERE
	 h.chronic_diabetes = '1'
	 --p.diabetes_mellitus_treatment = '1'
	 
-------------------------
ALTER TABLE "hospitalization_labor"
	ALTER COLUMN "fetal_weight_at_ultrasound" type numeric(6,2) USING "fetal_weight_at_ultrasound"::numeric(6,2),
	ALTER COLUMN "prepartum_maternal_weight" type numeric(5,2) USING "prepartum_maternal_weight"::numeric(5,2),
	ALTER COLUMN "hospital_systolic_blood_pressure" type numeric(5,0) USING "hospital_systolic_blood_pressure"::numeric(5,0),
	ALTER COLUMN "hospital_diastolic_blood_pressure" type numeric(5,0)USING "hospital_diastolic_blood_pressure"::numeric(5,0),
	ALTER COLUMN "chronic_diseases" type numeric(5,0) USING "chronic_diseases"::numeric(5,0) ,
	ALTER COLUMN "newborn_height" type numeric(5,1) USING "newborn_height"::numeric(5,1),
	ALTER COLUMN "newborn_head_circumference" type numeric(5,1) USING "newborn_head_circumference"::numeric(5,1),
	ALTER COLUMN "chronic_diabetes" type numeric(7,2) USING "chronic_diabetes"::numeric(7,2);
	
-----------Replacing the , from some valuesin the column ----------------------------------------------

UPDATE hospitalization_labor
SET
	fetal_weight_at_ultrasound = REPLACE(fetal_weight_at_ultrasound, ',', '');

-------------------------REPLACING Values mpercentile 25-50 to percentile 25-50-------------------------------------------------------------

SELECT weight_fetal_percentile FROM hospitalization_labor
WHERE weight_fetal_percentile = 'mpercentile 25-50';

UPDATE hospitalization_labor
SET
	weight_fetal_percentile = REPLACE(weight_fetal_percentile, 'mpercentile 25-50', 'percentile 25-50');

SELECT weight_fetal_percentile FROM hospitalization_labor
WHERE weight_fetal_percentile = 'percentile 25-50';

SELECT * FROM hospitalization_labor;
-------------------------------------------------------------------------------------------------------

 ------------------------Transformations  - Team 7----------------------------------------------------

     -----------------checked the nutritional table for cleanup--------------------

select * from pregnancy_nutrition order by case_id asc; /* doesn't need any clean up */

select * from health_risk_fetus order by case_id asc;

select * from hospitalization_labor 

--------updated drug preference column 0 to No, 1-marjuana, 2-crack, 3-cocaine, 4-marijuana plus cocaine--------
----------updated drugs_years_use,drugs_during_pregnancy columns no_applicable to null------
	
update health_risk_fetus
	set
drugs_preference = case
	WHEN drugs_preference = '0' THEN 'No'
    WHEN drugs_preference = '1' THEN 'marijuana'
	 WHEN drugs_preference = '2' THEN 'crack'
	 WHEN drugs_preference = '3' THEN 'cocaine'
	 WHEN drugs_preference = '4' THEN 'marijuana plus cocaine'
	else null
	end,
	drugs_years_use = case
	WHEN drugs_years_use = 'not_applicable' THEN NULL
  	else drugs_years_use
	end,
	drugs_during_pregnancy  = case
	WHEN drugs_during_pregnancy = 'not_applicable' THEN NULL
  	else drugs_during_pregnancy 
	end;

--------Changed the drugs_years_use, drugs_during_pregnancy datatype from varchar to numeric --------

ALTER TABLE health_risk_fetus
ALTER COLUMN drugs_years_use type numeric(5,0) using drugs_years_use::numeric(5,0),
ALTER COLUMN drugs_during_pregnancy type numeric(5,0) using drugs_during_pregnancy::numeric(5,0);


--------Changed the diabetes_mellitus_disease_gap datatype from varchar to numeric --------

select  case_id, diabetes_mellitus_dm_reported,diabetes_mellitus_disease_gap from patient_history where diabetes_mellitus_dm_reported = 1 order by case_id asc;

select ph.case_id, chronic_diabetes, diabetes_mellitus_disease_gap from patient_history ph 
	join public.hospitalization_labor hl on ph.case_id = hl.case_id where hl.chronic_diabetes = '1' order by case_id asc;

select chronic_diabetes from public.hospitalization_labor where chronic_diabetes is null

select diabetes_mellitus_disease_gap from patient_history where diabetes_mellitus_disease_gap is null

ALTER TABLE patient_history 
ALTER COLUMN diabetes_mellitus_disease_gap type numeric(5,0) using diabetes_mellitus_disease_gap::numeric(5,0);

==========================================================================================================================================================
--Create Maternal_Health_Tbl_bkp one more staging table
CREATE Table Maternal_Health_Tbl_bkp
(
case_id INTEGER,
age_years_old   INTEGER,
color_ethnicity  varchar(100),
hypertension_past_reported  INTEGER,
hypertension_past_treatment  varchar(100),
diabetes_mellitus_dm_reported INTEGER,  
diabetes_mellitus_disease_gap varchar(100),
diabetes_mellitus_treatment varchar(100),
tobacco_use INTEGER,
tobacco_use_in_months   varchar(100),
tobacco_quantity_by_day varchar(100),
alcohol_use INTEGER,
alcohol_quantity_milliliters varchar(100),  
alcohol_preference  varchar(100),
drugs_preference    varchar(100),
drugs_years_use  varchar(100),
drugs_during_pregnancy  varchar(100),
past_newborn_1_weight   varchar(100),
gestational_age_past_newborn_1  varchar(100),
past_newborn_2_weight   varchar(100),
gestational_age_past_newborn_2  varchar(100),
past_newborn_3_weight   varchar(100),
gestational_age_past_newborn_3  varchar(100),
past_newborn_4_weight   varchar(100),
gestational_age_past_4_newborn  varchar(100),
breakfast_meal  INTEGER,
morning_snack   INTEGER,
lunch_meal  INTEGER,
afternoon_snack INTEGER,
meal_dinner INTEGER,
supper_meal INTEGER,
bean    INTEGER,
fruits  INTEGER,
vegetables  INTEGER,
embedded_food INTEGER,  
pasta   INTEGER,
cookies INTEGER,
right_systolic_blood_pressure   varchar(100),
right_diastolic_blood_pressure  varchar(100),
left_systolic_blood_pressure    varchar(100),
left_diastolic_blood_pressure   varchar(100),
periumbilical_subcutanous_fat   varchar(100),
periumbilical_visceral_fat  varchar(100),
periumbilical_total_fat NUMERIC(5,0),      --   whole numerbers
preperitoneal_subcutaneous_fat NUMERIC(5,1),
preperitoneal_visceral_fat NUMERIC(5,1),
gestational_age_at_inclusion    NUMERIC(5,1),
fetal_weight_at_ultrasound  varchar(100),
weight_fetal_percentile varchar(100),
past_pregnancies_number NUMERIC(5,0),
miscarriage NUMERIC(5,0),
first_trimester_hematocrit  NUMERIC(5,1),
second_trimester_hematocrit varchar(100),
third_trimester_hematocrit varchar(100),
first_trimester_hemoglobin   NUMERIC(5,1),   ---  1 decimal
second_trimester_hemoglobin  varchar(100),
third_trimester_hemoglobin  varchar(100),
first_tri_fasting_blood_glucose NUMERIC(5,0),   --   no decimal
second_tri_fasting_blood_glucose varchar(100),
third_tri_fasting_blood_glucose varchar(100),
"1st_hour_ogtt75_1st_tri" varchar(100),
"1st_hour_ogtt75_2tri"    varchar(100),
"1st_hour_ogtt75_3tri"    varchar(100),
"2nd_hour_ogtt_1tri"  varchar(100),
"2nd_hour_ogtt75_2tri"    varchar(100),
"2nd_hour_ogtt_3tri"  varchar(100),
hiv_1tri    varchar(100),
syphilis_1tri   varchar(100),
c_hepatitis_1tri    varchar(100),
prepregnant_weight  varchar(100),
prepregnant_bmi varchar(100),
bmi_according_who varchar(100),
current_maternal_weight_1st_tri varchar(100),
current_maternal_weight_2nd_tri varchar(100),
current_maternal_weight_3rd_tri varchar(100),
maternal_weight_at_inclusion NUMERIC(5,2),    --- 2 decimal places
hight_at_inclusion NUMERIC(5,2),
current_bmi NUMERIC(5,2),
current_bmi_according_who NUMERIC(5,0),
ultrasound_gestational_age  NUMERIC(5,1),
maternal_brachial_circumference NUMERIC(5,1),
circumference_maternal_calf NUMERIC(5,1),
maternal_neck_circumference NUMERIC(5,1),
maternal_hip_circumference  NUMERIC(5,1),
maternal_waist_circumference NUMERIC(5,1),
mean_tricciptal_skinfold    NUMERIC(5,1),
mean_subscapular_skinfold   NUMERIC(5,1),
mean_supra_iliac_skin_fold  NUMERIC(5,1),
gestational_age_at_birth    NUMERIC(5,1),    -- 1 decimal place
prepartum_maternal_weight   varchar(100),
prepartum_maternal_heigh    varchar(100),
delivery_mode  NUMERIC(5,0),    
cesarean_section_reason  varchar(100),
hospital_systolic_blood_pressure varchar(100),
hospital_diastolic_blood_pressure   varchar(100),
hospital_hypertension   NUMERIC(5,0),    -- whole number
preeclampsia_record_pregnancy   NUMERIC(5,0),
gestational_diabetes_mellitus   NUMERIC(5,0),
chronic_diabetes    varchar(100),
chronic_diseases    varchar(100),
disease_diagnose_during_pregnancy   varchar(100),
treatment_disease_pregnancy  varchar(100),
number_prenatal_appointments NUMERIC(5,0),  
expected_weight_for_the_newborn varchar(100),
newborn_weight varchar(100),
newborn_height  varchar(100),
newborn_head_circumference  varchar(100),
thoracic_perimeter_newborn  NUMERIC(5,1),
meconium_labor  NUMERIC(5,0),
apgar_1st_min   NUMERIC(5,0),    ---whole numbers
apgar_5th_min   NUMERIC(5,0),
pediatric_resuscitation_maneuvers NUMERIC(5,0),
newborn_intubation NUMERIC(5,0),
newborn_airway_aspiration   NUMERIC(5,0),
mothers_hospital_stay NUMERIC(5,0)
);

--Click Export/Import on Maternal_Health_Tbl_bkp table using pgAdmin utility to load the data 
--from original dataset
--select  the filepath where the observations(original dataset file given by organizers) file is stored in your system

select * from Maternal_Health_Tbl_bkp;

SELECT gestational_age_at_birth
FROM Maternal_Health_Tbl_bkp;  

SELECT gestational_age_at_birth
FROM hospitalization_labor;

ALTER TABLE maternal_health_tbl
ALTER COLUMN gestational_age_at_birth TYPE NUMERIC(5,1) ;

UPDATE maternal_health_tbl
SET gestational_age_at_birth = Maternal_Health_Tbl_bkp.gestational_age_at_birth
FROM Maternal_Health_Tbl_bkp
WHERE maternal_health_tbl.case_id = Maternal_Health_Tbl_bkp.case_id;

ALTER TABLE hospitalization_labor
ALTER COLUMN gestational_age_at_birth TYPE NUMERIC(5,1) ;

UPDATE hospitalization_labor
SET gestational_age_at_birth = Maternal_Health_Tbl_bkp.gestational_age_at_birth
FROM Maternal_Health_Tbl_bkp
WHERE hospitalization_labor.case_id = Maternal_Health_Tbl_bkp.case_id;


--After run the above code refresh PBI



--disease_diagnose_during_pregnancy

--Step 1: Replace 0 to blank.

SELECT disease_diagnose_during_pregnancy, count(case_id)
FROM hospitalization_labor
WHERE disease_diagnose_during_pregnancy = '0'
GROUP BY disease_diagnose_during_pregnancy;

/*
"disease_diagnose_during_pregnancy"	"count"
	"0"									1
*/

UPDATE hospitalization_labor
SET disease_diagnose_during_pregnancy = NULL
WHERE disease_diagnose_during_pregnancy = '0';

--UPDATE 150 Query returned successfully

SELECT count(case_id),disease_diagnose_during_pregnancy 
FROM hospitalization_labor
GROUP BY disease_diagnose_during_pregnancy;

/*
1	"VDRL +"                               -- Syphilis 
1	"asthma and depression"                -- Asthma and Depression
1	"asthma"                               -- Asthma
2	"depression"                           -- Depression
2	"Has"                                  -- Hypertension
1	"itu"                                  -- UTI
1	"HAS"                                  -- Hypertension
1	"Gestational thrombocytopenia and gestational hypothyroidism and NT"  -- Gest. Thrombocytopenia and Gest. Hypothyroidism and NT 
1	"HAS na baixa hospitalar"             -- Hypertension
1	"HAS +DMG"                            -- Hypertension and GDM
1	"hypothyroidism and syphilis"         -- Hypothyroidism and Syphilis
1	"hepatitis c"                         -- Hepatitis C
1	"ischemic stroke without sequelae"    -- Stroke
1	"lactose intolerance"                 -- Lactose Intolerance
1	"asthma and bronchitis and pre-eclampsia" -- Asthma and Bronchitis and Pre-eclampsia
3	"ITU"                                     -- UTI
152											  -- NULL
1	"bronchitis, itu"                         -- Bronchitis and UTI
1	"Asthma"                                  -- Asthma
6	" "               						  -- NULL          
1	"Depression"							  -- Depression
1	"hepatitis b and ITU"					  -- Hepatitis B and UTI
1	"not_applicable+CX20"                     -- NULL
1	"thb"									  -- Thalassemia
1	"colestase"								  -- Cholestasis 
1	"anxiety"								  -- Anxiety
1	"DM"									  -- DM
1	"depression + ITU"                        -- Depression and UTI
1	"Has + DMG"								  -- Hypertension and GDM
1	"depression and glaucoma and alcoholism"  -- Depression and Glaucoma and Alcoholism
1	"HIV"									  -- HIV
1	"endocardite"							  -- Endocarditis 
1	"Has secundária"						  -- Hypertension
1	"gestational hypothyroidism"			  -- Gest. Hypothyroidism
2	"pre-eclampsia"							  -- Pre-eclampsia
3	"hypothyroidism" 						  -- Hypothyroidism
1	"Pyelonephritis + depression"             -- Depression and UTI
1	"hyperthyroidism"						  -- Hyperthyroidism
2	"has"									  -- Hypertension
1	"Strepto + ITU"							  -- UTI
1	"Pre-eclampsia and has gestational"       -- Pre-eclampsia and Gest. Hypertension
1	"syphilis"								  -- Syphilis
4	"DMG"								      -- GDM
1	"Cognitive deficit - depression + HAS Gestation" -- CD and Depression and Gest. Hypertension
*/


UPDATE hospitalization_labor
SET disease_diagnose_during_pregnancy = CASE
WHEN disease_diagnose_during_pregnancy = 'VDRL +' THEN 'Syphilis'
WHEN disease_diagnose_during_pregnancy = 'asthma and depression' THEN 'Asthma, Depression'
WHEN disease_diagnose_during_pregnancy = 'asthma' THEN 'Asthma' 
WHEN disease_diagnose_during_pregnancy = 'depression' THEN 'Depression'
WHEN disease_diagnose_during_pregnancy = 'Has' THEN 'Hypertension'
WHEN disease_diagnose_during_pregnancy = 'itu' THEN 'UTI'
WHEN disease_diagnose_during_pregnancy = 'HAS' THEN 'Hypertension'
WHEN disease_diagnose_during_pregnancy = 'Gestational thrombocytopenia and gestational hypothyroidism and NT' THEN 'Gest. Thrombocytopenia, Gest. Hypothyroidism, NT'
WHEN disease_diagnose_during_pregnancy = 'HAS na baixa hospitalar' THEN 'Hypertension'
WHEN disease_diagnose_during_pregnancy = 'HAS +DMG' THEN 'Hypertension, GDM'
WHEN disease_diagnose_during_pregnancy = 'hypothyroidism and syphilis' THEN 'Hypothyroidism, Syphilis'
WHEN disease_diagnose_during_pregnancy = 'hepatitis c' THEN 'Hepatitis C'
WHEN disease_diagnose_during_pregnancy = 'ischemic stroke without sequelae' THEN 'Stroke' 
WHEN disease_diagnose_during_pregnancy = 'lactose intolerance' THEN 'Lactose Intolerance'
WHEN disease_diagnose_during_pregnancy = 'asthma and bronchitis and pre-eclampsia' THEN 'Asthma, Bronchitis, Pre-eclampsia'
WHEN disease_diagnose_during_pregnancy = 'ITU' THEN 'UTI' 
WHEN disease_diagnose_during_pregnancy = 'bronchitis, itu' THEN 'Bronchitis, UTI'
WHEN disease_diagnose_during_pregnancy = ' ' THEN NULL 
WHEN disease_diagnose_during_pregnancy = 'hepatitis b and ITU' THEN 'Hepatitis B, UTI'
WHEN disease_diagnose_during_pregnancy = 'not_applicable+CX20' THEN NULL
WHEN disease_diagnose_during_pregnancy = 'thb' THEN 'Thalassemia'
WHEN disease_diagnose_during_pregnancy = 'colestase' THEN 'Cholestasis'
WHEN disease_diagnose_during_pregnancy = 'anxiety' THEN 'Depression'
WHEN disease_diagnose_during_pregnancy = 'depression + ITU' THEN 'Depression, UTI'
WHEN disease_diagnose_during_pregnancy = 'Has + DMG' THEN 'Hypertension, GDM'
WHEN disease_diagnose_during_pregnancy = 'depression and glaucoma and alcoholism' THEN 'Depression, Glaucoma, Alcoholism'
WHEN disease_diagnose_during_pregnancy = 'endocardite' THEN 'Endocarditis'
WHEN disease_diagnose_during_pregnancy = 'Has secundária' THEN 'Hypertension'
WHEN disease_diagnose_during_pregnancy = 'gestational hypothyroidism' THEN 'Gest. Hypothyroidism'
WHEN disease_diagnose_during_pregnancy = 'pre-eclampsia' THEN 'Pre-eclampsia'
WHEN disease_diagnose_during_pregnancy = 'hypothyroidism' THEN 'Hypothyroidism'
WHEN disease_diagnose_during_pregnancy = 'Pyelonephritis + depression' THEN 'Depression, UTI'
WHEN disease_diagnose_during_pregnancy = 'hyperthyroidism' THEN 'Hyperthyroidism'
WHEN disease_diagnose_during_pregnancy = 'has' THEN 'Hypertension'
WHEN disease_diagnose_during_pregnancy = 'Strepto + ITU' THEN 'UTI'
WHEN disease_diagnose_during_pregnancy = 'Pre-eclampsia and has gestational' THEN 'Pre-eclampsia, Gest. Hypertension'
WHEN disease_diagnose_during_pregnancy = 'syphilis' THEN 'Syphilis'
WHEN disease_diagnose_during_pregnancy = 'DMG' THEN 'GDM' 
WHEN disease_diagnose_during_pregnancy = 'Cognitive deficit - depression + HAS Gestation' THEN 'Cognitive deficit, Depression, Gest. Hypertension'
END;

--UPDATE 211 Query returned successfully

SELECT count(case_id),disease_diagnose_during_pregnancy 
FROM hospitalization_labor
GROUP BY disease_diagnose_during_pregnancy
ORDER BY count(case_id) DESC;

/*
164	
7	"Hypertension"
5	"UTI"
4	"GDM"
3	"Hypothyroidism"
2	"Syphilis"
2	"Hypertension, GDM"
2	"Depression, UTI"
2	"Pre-eclampsia"
3	"Depression"
1	"Endocarditis"
1	"Hyperthyroidism"
1	"Hypothyroidism, Syphilis"
1	"Lactose Intolerance"
1	"Anxiety"
1	"Pre-eclampsia, Gest. Hypertension"
1	"Hepatitis C"
1	"Hepatitis B, UTI"
1	"Stroke"
1	"Cognitive deficit, Depression, Gest. Hypertension"
1	"Asthma, Bronchitis, Pre-eclampsia"
1	"Asthma"
1	"Gest. Thrombocytopenia, Gest. Hypothyroidism, NT"
1	"Bronchitis, UTI"
1	"Asthma, Depression"
1	"Depression, Glaucoma, Alcoholism"
1	"Cholestasis"
1	"Thalassemia"
*/
------------------------
--treatment_disease_pregnancy

--Step 1: Replace 0,45 to blank for case_id: 125.

SELECT treatment_disease_pregnancy, count(case_id)
FROM hospitalization_labor
WHERE treatment_disease_pregnancy IN ('0','45')
GROUP BY treatment_disease_pregnancy;


UPDATE hospitalization_labor
SET treatment_disease_pregnancy = NULL
WHERE treatment_disease_pregnancy IN ('0','45');

--UPDATE 2 Query returned successfully

SELECT count(case_id),treatment_disease_pregnancy 
FROM hospitalization_labor
GROUP BY treatment_disease_pregnancy
ORDER BY count(case_id) DESC;

--We faced challenges to replace not_applicable to no_disease_diagnosed
--when disease_diagnose_during_pregnancy also not_applicable
-- but we already replaced not_applicable in disease_diagnose_during_pregnancy to null 
--so take data from staging table to finish this step.


UPDATE hospitalization_labor
SET treatment_disease_pregnancy = 'no_disease_diagnosed'
WHERE case_id IN(
SELECT case_id
FROM maternal_health_tbl  --staging table
WHERE disease_diagnose_during_pregnancy = 'not_applicable'
AND treatment_disease_pregnancy = 'not_applicable');

--UPDATE 144 Query returned successfully

--Step 2: Replace not_applicable to NULL when disease_diagnose_during_pregnancy is NOT NULL

SELECT case_id, disease_diagnose_during_pregnancy, treatment_disease_pregnancy
FROM hospitalization_labor
WHERE treatment_disease_pregnancy = 'not_applicable'
AND disease_diagnose_during_pregnancy IS NOT NULL;

/*
"case_id"	"disease_diagnose_during_pregnancy"			"treatment_disease_pregnancy"
81			"Syphilis"										"not_applicable"
10			"Asthma and Depression"							"not_applicable"
42			"Gest. Thrombocytopenia and Gest. Hypothyroidism and NT"	"not_applicable"
22			"Pre-eclampsia"									"not_applicable"
174			"Hypertension"									"not_applicable"
70			"Pre-eclampsia and Gest. Hypertension"			"not_applicable"
182			"Pre-eclampsia"									"not_applicable"
*/

UPDATE hospitalization_labor
SET treatment_disease_pregnancy = NULL
WHERE treatment_disease_pregnancy = 'not_applicable'
AND disease_diagnose_during_pregnancy IS NOT NULL;

--UPDATE 7 Query returned successfully

--Step 4: Replace ' ' to NULL when disease_diagnose_during_pregnancy is NULL

SELECT count(case_id),treatment_disease_pregnancy 
FROM hospitalization_labor
GROUP BY treatment_disease_pregnancy
ORDER BY count(case_id) DESC;

SELECT case_id,treatment_disease_pregnancy,disease_diagnose_during_pregnancy 
FROM hospitalization_labor
WHERE treatment_disease_pregnancy = ' ';

/*
"case_id"	"treatment_disease_pregnancy"	"disease_diagnose_during_pregnancy"
146	" "	
227	" "	
84	" "	
150	" "	
137	" "	
155	" "	
92	" "	
18	" "	
*/

UPDATE hospitalization_labor
SET treatment_disease_pregnancy = NULL
WHERE treatment_disease_pregnancy = ' ';

--UPDATE 8 Query returned successfully

SELECT count(case_id),treatment_disease_pregnancy, disease_diagnose_during_pregnancy
FROM hospitalization_labor
GROUP BY treatment_disease_pregnancy,disease_diagnose_during_pregnancy
ORDER BY treatment_disease_pregnancy;

/*
"count"	"treatment_disease_pregnancy"
147	"no_disease_diagnosed"
31	
6	'medicamento' THEN 'medication'
4	'diet'
3	'Medicamento' THEN 'medication'
3	'fluoxetina' THEN 'fluoxetine'     -- Depression
3	'Sem tto' THEN 'Without treatment'
3	"medication"
2	'sim' THEN 'yes'  
1	'Sem TTo' THEN 'Without treatment'
1	'aspirina' THEN 'aspirin'        -- Stroke
1	'insulina' THEN 'insulin'        -- DM
1	'Metildopa' THEN 'methyldopa'     -- hypertension
1	'ac valproico,' THEN 'valproic acid'
1	'Fluxetina' THEN 'fluoxetine'   
1	'metformina' THEN 'metformin'   -- type 2 diabetes medicine
1	'tapazol' THEN 'Tapazole'       --hyperthyroidism 
1	'predinisolona' THEN 'prednisolone'   -Asthma
*/

UPDATE hospitalization_labor
SET treatment_disease_pregnancy= CASE
WHEN treatment_disease_pregnancy='medicamento' THEN 'medication'
WHEN treatment_disease_pregnancy='Medicamento' THEN 'medication'
WHEN treatment_disease_pregnancy='fluoxetina' THEN 'fluoxetine'
WHEN treatment_disease_pregnancy='Sem tto' THEN 'Without treatment'
WHEN treatment_disease_pregnancy='sim' THEN 'With treatment'
WHEN treatment_disease_pregnancy='Sem TTo' THEN 'Without treatment'
WHEN treatment_disease_pregnancy='aspirina' THEN 'aspirin'
WHEN treatment_disease_pregnancy='insulina' THEN 'insulin'
WHEN treatment_disease_pregnancy='Metildopa' THEN 'methyldopa'
WHEN treatment_disease_pregnancy='ac valproico,' THEN 'valproic acid'
WHEN treatment_disease_pregnancy='Fluxetina' THEN 'fluoxetine'
WHEN treatment_disease_pregnancy='metformina' THEN 'metformin'
WHEN treatment_disease_pregnancy='tapazol' THEN 'Tapazole'
WHEN treatment_disease_pregnancy='predinisolona' THEN 'prednisolone'
END;


--UPDATE 211 Query returned successfully

SELECT count(case_id),treatment_disease_pregnancy
FROM hospitalization_labor
GROUP BY treatment_disease_pregnancy
ORDER BY count(case_id) DESC;

/*
"count"	"treatment_disease_pregnancy"
144	"no_disease_diagnosed"
41	
9	"medication"
4	"Without treatment"
4	"fluoxetine"
2	"With treatment"
1	"insulin"
1	"aspirin"
1	"prednisolone"
1	"metformin"
1	"methyldopa"
1	"Tapazole"
1	"valproic acid"
*/






