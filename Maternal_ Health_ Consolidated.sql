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