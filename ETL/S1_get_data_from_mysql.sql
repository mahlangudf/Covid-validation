



  
SELECT 
   adssid
 , name_Id10017
 , Sname_Id10018
 , villageid
 , dwelling
 , CASE WHEN fieldworker = '1' THEN '7248'
		WHEN fieldworker = '2' THEN '2992'
		WHEN fieldworker = '4' THEN '3746'
		WHEN fieldworker = '5' THEN '7335'							 
		ELSE fieldworker END fieldworker
 , NULL FW_Name_Id10010
 , interview_date_Id10012
 , CASE WHEN start_Id10011 IS NULL THEN CAST(begintime AS TIME) ELSE CAST(start_Id10011 AS TIME) END AS start_Id10011
 , CASE WHEN suitable_repondent_Id10013 = '1' THEN 'Y' 
		WHEN suitable_repondent_Id10013 = '2' THEN 'N'
		ELSE suitable_repondent_Id10013 END AS suitable_repondent_Id10013
 , Respondent_name_Id10007
 , CASE WHEN Reason = '1' THEN 'Refusal'
		WHEN Reason = '2' THEN 'Out_migration'
		WHEN Reason = '3' THEN 'Double_count'
		WHEN Reason = '4' THEN 'Done'
		WHEN Reason = '5' THEN 'Alive'
		WHEN Reason = '6' THEN 'Untraceable'
		WHEN Reason = '7' THEN 'X'
		ELSE Reason END AS Reason
 , Reason_other AS Reason_other
 , CASE WHEN relationship_to_deceased_Id10008 = '1' THEN 'parent'
		WHEN relationship_to_deceased_Id10008 = '2' THEN 'child'
		WHEN relationship_to_deceased_Id10008 = '3' THEN 'family_member'
		WHEN relationship_to_deceased_Id10008 = '4' THEN 'friend'
		WHEN relationship_to_deceased_Id10008 = '5' THEN 'health_worker'
		WHEN relationship_to_deceased_Id10008 = '6' THEN 'public_official'
		WHEN relationship_to_deceased_Id10008 = '7' THEN 'another_relationship'
		WHEN relationship_to_deceased_Id10008 = '8' THEN 'No_Relation'
		WHEN relationship_to_deceased_Id10008 = '9' THEN 'Spouse'
		WHEN relationship_to_deceased_Id10008 = '10' THEN 'Father'
		WHEN relationship_to_deceased_Id10008 = '11' THEN 'Mother'
		WHEN relationship_to_deceased_Id10008 = '12' THEN 'GrandMother'
		WHEN relationship_to_deceased_Id10008 = '13' THEN 'other'
		ELSE relationship_to_deceased_Id10008 END AS relationship_to_deceased_Id10008
    
 , Relationship_other

 , CASE WHEN LiveWith_Id10009 = '1' THEN 'Y' 
        WHEN LiveWith_Id10009 = '2' THEN 'N' ELSE LiveWith_Id10009 END AS LiveWith_Id10009

 , CASE WHEN same_dwelling = '1' THEN 'Y' 
        WHEN same_dwelling = '2' THEN 'N' ELSE same_dwelling END AS same_dwelling
 , resp_village
 , CASE WHEN resp_dob = 'RF' THEN NULL --'refuse to give date of birth'
		ELSE resp_dob END AS resp_dob
 , CASE WHEN resp_sex = '1' THEN 'F'
		WHEN resp_sex = '2' THEN 'M'
		ELSE resp_sex END AS  resp_sex
 , SAID_Id10073
 , CASE WHEN Sex_Id10019 = '1' THEN 'F'
		WHEN Sex_Id10019 = '2' THEN 'M'
		ELSE Sex_Id10019 END AS Sex_Id10019
 , DoB_Id10021_1
 , DoB_Id10021
 , DoD_Id10023_1
 , DoD_Id10023
 , YearDeath_Id10024
 , ageInYears
 , age_group
 , Age_DWMY AS Age_DWMY
 , CASE WHEN [WeekDay] = '1' THEN 'Mon'
		WHEN [WeekDay] = '2' THEN 'Teu'
		WHEN [WeekDay] = '3' THEN 'Wed'
		WHEN [WeekDay] = '4' THEN 'Thu'
		WHEN [WeekDay] = '5' THEN 'Fri'
		WHEN [WeekDay] = '6' THEN 'Sat'
		WHEN [WeekDay] = '7' THEN 'Sun'
		ELSE [WeekDay] END AS [WeekDay]
 , refugee refugee
 , Mother_Id10062
 , Father_Id10061
 , CASE WHEN Marital_Id10059 = '1' THEN 'F'
		WHEN Marital_Id10059 = '2' THEN 'I'
		WHEN Marital_Id10059 = '3' THEN 'D'
		WHEN Marital_Id10059 = '4' THEN 'W'
		WHEN Marital_Id10059 = '5' THEN 'S'
		ELSE Marital_Id10059 END AS Marital_Id10059
 , CASE WHEN nationality_Id10052 = '1' THEN 'South Africa'
		WHEN nationality_Id10052 = '2' THEN 'Zimbabwean'
		WHEN nationality_Id10052 = '3' THEN 'Mozambiquean'
		WHEN nationality_Id10052 = '4' THEN 'Other'							   
		ELSE nationality_Id10052 END AS nationality_Id10052
 , other_Id10052_2
 , CASE WHEN Ethnicity_Id10053 = '1' THEN 'Tsonga'
		WHEN Ethnicity_Id10053 = '2' THEN 'Swati'
		WHEN Ethnicity_Id10053 = '3' THEN 'Pedi'
		WHEN Ethnicity_Id10053 = '4' THEN 'Venda'
		WHEN Ethnicity_Id10053 = '5' THEN 'Zulu'	
		WHEN Ethnicity_Id10053 = '6' THEN 'Xhosa'
		WHEN Ethnicity_Id10053 = '7' THEN 'Other'						   
		ELSE Ethnicity_Id10053 END AS Ethnicity_Id10053
		
 , other_Id10053_2
 , CASE WHEN birth_Place_Id10054 = '1' THEN 'Hospital'
		WHEN birth_Place_Id10054 = '2' THEN 'Clinic'
		WHEN birth_Place_Id10054 = '3' THEN 'Home'
		WHEN birth_Place_Id10054 = '4' THEN 'Other'								   						   
		ELSE birth_Place_Id10054 END AS birth_Place_Id10054

 , Other_Id10054_2 Other_Id10054_2
 , usual_res_Id10055
 , normal_res_Id10056
 , CASE WHEN Economic_act_Id10065 = '1' THEN 'F'
		WHEN Economic_act_Id10065 = '2' THEN 'I'
		WHEN Economic_act_Id10065 = '3' THEN 'N'
		WHEN Economic_act_Id10065 = '4' THEN 'S'	
		WHEN Economic_act_Id10065 = '5' THEN 'P'	
		WHEN Economic_act_Id10065 = '6' THEN 'O'						   						   
		ELSE Economic_act_Id10065 END Economic_act_Id10065
 ,  Other_Id10065 Other_Id10065
 , CASE WHEN Occupation_Id10066 = '1' THEN 'Farm work'
		WHEN Occupation_Id10066 = '2' THEN 'Domestic work'
		WHEN Occupation_Id10066 = '3' THEN 'Construction work'
		WHEN Occupation_Id10066 = '4' THEN 'Security work'	
		WHEN Occupation_Id10066 = '5' THEN 'Cleaning work'	
		WHEN Occupation_Id10066 = '6' THEN 'Small business owner'
		WHEN Occupation_Id10066 = '7' THEN 'Mine work'
		WHEN Occupation_Id10066 = '8' THEN 'Teacher'
		WHEN Occupation_Id10066 = '9' THEN 'Traditional healer'	
		WHEN Occupation_Id10066 = '10' THEN 'Health sector (formal)'	
		WHEN Occupation_Id10066 = '11' THEN 'Game farm'	
		WHEN Occupation_Id10066 = '12' THEN 'Driver'
		WHEN Occupation_Id10066 = '13' THEN 'Skilled worker'
		WHEN Occupation_Id10066 = '14' THEN 'Cook/chef/catering'	
		WHEN Occupation_Id10066 = '15' THEN 'Unskilled worker'	
		WHEN Occupation_Id10066 = '16' THEN 'Artisan'
		WHEN Occupation_Id10066 = '17' THEN 'Waiter/barman'
		WHEN Occupation_Id10066 = '18' THEN 'Informal selling'
		WHEN Occupation_Id10066 = '19' THEN 'Small business assistant'	
		WHEN Occupation_Id10066 = '20' THEN 'Clerical and office work'	
		WHEN Occupation_Id10066 = '21' THEN 'Cattle herder'	
		WHEN Occupation_Id10066 = '22' THEN 'Sewing, hairdresser, baker,brewer'
		WHEN Occupation_Id10066 = '23' THEN 'Police, soldier, fireman'
		WHEN Occupation_Id10066 = '24' THEN 'Petrol attendant'	
		WHEN Occupation_Id10066 = '25' THEN 'Timber, sawmill, poles'	
		WHEN Occupation_Id10066 = '27' THEN 'Fieldworker'
		WHEN Occupation_Id10066 = '28' THEN 'Art, craft, photo, fashion design'
		WHEN Occupation_Id10066 = '29' THEN 'Senior administrator'	
		WHEN Occupation_Id10066 = '30' THEN 'Priest'	
		WHEN Occupation_Id10066 = '31' THEN 'Unknown'	
		WHEN Occupation_Id10066 = '32' THEN 'Other'							   						   
		ELSE Occupation_Id10066 END AS Occupation_Id10066
		
 , Other_id10066
 , CASE WHEN where_died_Id10058 = '1' THEN '+'
	    WHEN where_died_Id10058 = '2' THEN 'E'
		WHEN where_died_Id10058 = '3' THEN 'H'
		WHEN where_died_Id10058 = '4' THEN 'T'
		WHEN where_died_Id10058 = '5' THEN 'O'
		ELSE where_died_Id10058 END where_died_Id10058

 , CASE WHEN Wet_seas_Id10004 = '1' THEN 'Y' 
        WHEN Wet_seas_Id10004 = '2' THEN 'N' ELSE Wet_seas_Id10004 END AS Wet_seas_Id10004

 , CASE WHEN dry_seas_Id10004 = '1' THEN 'Y' 
        WHEN dry_seas_Id10004 = '2' THEN 'N' ELSE dry_seas_Id10004 END AS dry_seas_Id10004

 , CASE WHEN death_form_Id10462 = '1' THEN 'Y' 
        WHEN death_form_Id10462 = '2' THEN 'N' ELSE death_form_Id10462 END AS death_form_Id10462

 , CASE WHEN dod_cert_Id10463 = '1' THEN 'Y' 
        WHEN dod_cert_Id10463 = '2' THEN 'N' ELSE dod_cert_Id10463 END AS dod_cert_Id10463
 , CASE WHEN RegDoD_Id10071 = 'DK' THEN CAST(NULL AS varchar)
        ELSE CAST(RegDoD_Id10071 AS varchar) END AS RegDoD_Id10071
 , DeathFormLocation
 , DeathCertNo_Id10070
 , place_reg_Id10072
 , immediate_cause_Id10464
 , RegCause
 , UndlCause
 , Narrative_Id10476
 , FamCause1
 , FamCause2
 , CASE WHEN narrative_1_Id10477 = '1' THEN 'Chronic_kidney_disease'
		WHEN narrative_1_Id10477 = '2' THEN 'Dialysis'
		WHEN narrative_1_Id10477 = '3' THEN 'Fever'
		WHEN narrative_1_Id10477 = '4' THEN 'Heart_attack'
		WHEN narrative_1_Id10477 = '5' THEN 'Heart_problem'
		WHEN narrative_1_Id10477 = '6' THEN 'Jaundice'
		WHEN narrative_1_Id10477 = '7' THEN 'Liver_failure'
		WHEN narrative_1_Id10477 = '8' THEN 'Malaria'
		WHEN narrative_1_Id10477 = '9' THEN 'Pneumonia'
		WHEN narrative_1_Id10477 = '10' THEN 'Renal_kidney_failure'
		WHEN narrative_1_Id10477 = '11' THEN 'Suicide'
		WHEN narrative_1_Id10477 = '12' THEN 'None'
		ELSE narrative_1_Id10477 END AS narrative_1_Id10477
		
 , CASE WHEN narrative_2_Id10478 = '1' THEN 'Abdomen'
		WHEN narrative_2_Id10478 = '2' THEN 'Cancer'
		WHEN narrative_2_Id10478 = '3' THEN 'Dehydration'
		WHEN narrative_2_Id10478 = '4' THEN 'Dengue'
		WHEN narrative_2_Id10478 = '5' THEN 'Diarrhea'
		WHEN narrative_2_Id10478 = '6' THEN 'Fever'	
		WHEN narrative_2_Id10478 = '7' THEN 'Heart_problem'
		WHEN narrative_2_Id10478 = '8' THEN 'Jaundice'
		WHEN narrative_2_Id10478 = '9' THEN 'Pneumonia'
		WHEN narrative_2_Id10478 = '10' THEN 'Rash'
		WHEN narrative_2_Id10478 = '11' THEN 'None'					 
		ELSE narrative_2_Id10478 END AS narrative_2_Id10478
 , CASE WHEN narrative_3_Id10479 = '1' THEN 'asphyxia'
		WHEN narrative_3_Id10479 = '2' THEN 'incubator'
		WHEN narrative_3_Id10479 = '3' THEN 'lung_problem'
		WHEN narrative_3_Id10479 = '4' THEN 'incubator'
		WHEN narrative_3_Id10479 = '5' THEN 'preterm_delevery'
		WHEN narrative_3_Id10479 = '6' THEN 'respiratory_distrss'
		WHEN narrative_3_Id10479 = '7' THEN 'None'
		ELSE narrative_3_Id10479 END AS narrative_3_Id10479
 , OtherRemarks
 , CASE WHEN immediate_cod_duration_Id10465 = 'DK' THEN 9998
		ELSE immediate_cod_duration_Id10465 END AS immediate_cod_duration_Id10465
 , CASE WHEN duration1 = '1' THEN 'H'
		WHEN duration1 = '2' THEN 'D'
		WHEN duration1 = '3' THEN 'W'
		WHEN duration1 = '4' THEN 'M'
		WHEN duration1 = '5' THEN 'Y'
		ELSE duration1 END AS duration1
 , antecedent_cod1_from_certificate_Id10466
 , CASE WHEN antecedent_cod1_duration_Id10467 = 'DK' THEN 9998
		ELSE antecedent_cod1_duration_Id10467 END AS antecedent_cod1_duration_Id10467
 , CASE WHEN duration2 = '1' THEN 'H'
		WHEN duration2 = '2' THEN 'D'
		WHEN duration2 = '3' THEN 'W'
		WHEN duration2 = '4' THEN 'M'
		WHEN duration2 = '5' THEN 'Y'
		ELSE duration2 END AS duration2
 , antecedent_cod2_from_certificate_Id10468
 , CASE WHEN duration_3_Id10469 = 'DK' THEN 9998
		ELSE duration_3_Id10469 END AS duration_3_Id10469
 , CASE WHEN duration3 = '1' THEN 'H'
		WHEN duration3 = '2' THEN 'D'
		WHEN duration3 = '3' THEN 'W'
		WHEN duration3 = '4' THEN 'M'
		WHEN duration3 = '5' THEN 'Y'
		ELSE duration3 END AS duration3
 , antecedent_cod3_from_certificate_Id10470
 , CASE WHEN antecedent_cod3_duration_Id10471 = 'DK' THEN 9998
		ELSE antecedent_cod3_duration_Id10471 END AS antecedent_cod3_duration_Id10471
 , CASE WHEN duration4 = '1' THEN 'H'
		WHEN duration4 = '2' THEN 'D'
		WHEN duration4 = '3' THEN 'W'
		WHEN duration4 = '4' THEN 'M'
		WHEN duration4 = '5' THEN 'Y'
		ELSE duration4 END AS duration4
 , ContrCause_Id10472
 , CASE WHEN contributing_cod_duration_Id10473 = 'DK' THEN 9998
		ELSE contributing_cod_duration_Id10473 END AS contributing_cod_duration_Id10473
 , CASE WHEN duration5 = '1' THEN 'H'
		WHEN duration5 = '2' THEN 'D'
		WHEN duration5 = '3' THEN 'W'
		WHEN duration5 = '4' THEN 'M'
		WHEN duration5 = '5' THEN 'Y'
		ELSE duration5 END AS duration5
 , CASE WHEN cried_Id10104 = '1' THEN 'Y' 
        WHEN cried_Id10104 = '2' THEN 'N' ELSE cried_Id10104 END AS cried_Id10104

 , CASE WHEN cry_immed_Id10105 = '1' THEN 'Y' 
        WHEN cry_immed_Id10105 = '2' THEN 'N' ELSE cry_immed_Id10105 END AS cry_immed_Id10105
 , CASE WHEN min_cry_Id10106 = 'DK' THEN 9998
		ELSE min_cry_Id10106 END AS min_cry_Id10106

 ,CASE WHEN stop_cry_Id10107 = '1' THEN 'Y' 
        WHEN stop_cry_Id10107 = '2' THEN 'N' ELSE stop_cry_Id10107 END AS stop_cry_Id10107
,CASE WHEN hrs_death_Id10108 = 'DK' THEN 9998
	  ELSE hrs_death_Id10108 END AS hrs_death_Id10108

,CASE WHEN baby_move_Id10109 = '1' THEN 'Y' 
        WHEN baby_move_Id10109 = '2' THEN 'N' ELSE baby_move_Id10109 END AS baby_move_Id10109

, CASE WHEN baby_breath_Id10110 = '1' THEN 'Y' 
        WHEN baby_breath_Id10110 = '2' THEN 'N' ELSE baby_breath_Id10110 END AS baby_breath_Id10110

 , CASE WHEN baby_br_Id10111 = '1' THEN 'Y' 
        WHEN baby_br_Id10111 = '2' THEN 'N' ELSE baby_br_Id10111 END AS baby_br_Id10111

, CASE WHEN breath_prob_Id10112 = '1' THEN 'Y' 
        WHEN breath_prob_Id10112 = '2' THEN 'N' ELSE breath_prob_Id10112 END AS breath_prob_Id10112

 , CASE WHEN born_nobr_Id10113 = '1' THEN 'Y' 
        WHEN born_nobr_Id10113 = '2' THEN 'N' ELSE born_nobr_Id10113 END AS born_nobr_Id10113

 , CASE WHEN no_life_Id10114 = '1' THEN 'Y' 
        WHEN no_life_Id10114 = '2' THEN 'N' ELSE no_life_Id10114 END AS no_life_Id10114

 , CASE WHEN bruises_Id10115 = '1' THEN 'Y' 
        WHEN bruises_Id10115 = '2' THEN 'N' ELSE bruises_Id10115 END AS bruises_Id10115

 , CASE WHEN mushy_Id10116 = '1' THEN 'Y' 
        WHEN mushy_Id10116 = '2' THEN 'N' ELSE mushy_Id10116 END AS mushy_Id10116
 , CASE WHEN injury_Id10077 = '1' THEN 'Y'
		WHEN injury_Id10077 = '2' THEN 'N' ELSE injury_Id10077 END AS injury_Id10077

 , CASE WHEN traffic_sufffer_Id10079 = '1' THEN 'Y' 
        WHEN traffic_sufffer_Id10079 = '2' THEN 'N' ELSE traffic_sufffer_Id10079 END AS traffic_sufffer_Id10079
 
 , CASE WHEN traffic_accident_role_Id10080 = '1' THEN 'P'
		WHEN traffic_accident_role_Id10080 = '2' THEN 'C'
		WHEN traffic_accident_role_Id10080 = '3' THEN 'H'
		WHEN traffic_accident_role_Id10080 = '4' THEN 'M'
		WHEN traffic_accident_role_Id10080 = '5' THEN 'B'
		WHEN traffic_accident_role_Id10080 = '6' THEN 'O'											 						 
		ELSE traffic_accident_role_Id10080 END AS traffic_accident_role_Id10080

 , CASE WHEN traffc_counter_part_Id10081 = '1' THEN 'Y' 
        WHEN traffc_counter_part_Id10081 = '2' THEN 'N' ELSE traffc_counter_part_Id10081 END AS traffc_counter_part_Id10081
 , CASE WHEN counterpart = '1' THEN 'P'
		WHEN counterpart = '2' THEN 'S'
		WHEN counterpart = '3' THEN 'C'
		WHEN counterpart = '4' THEN 'H'
		WHEN counterpart = '5' THEN 'M'
		WHEN counterpart = '6' THEN 'B'
		WHEN counterpart = '7' THEN 'O'
		ELSE counterpart END AS counterpart
 , CASE WHEN traffic_accident_Occur = '1' THEN 'R'
		WHEN traffic_accident_Occur = '2' THEN 'U'
		WHEN traffic_accident_Occur = '3' THEN 'O'						 
		ELSE traffic_accident_Occur END AS traffic_accident_Occur
 , traffic_accidnt_occur_other AS traffic_accidnt_occur_other
 , CASE WHEN traffic_accident_time = '1' THEN 'D'
		WHEN traffic_accident_time = '2' THEN 'N'										 
		ELSE traffic_accident_time END AS traffic_accident_time
 
 , CASE WHEN traffic_road_Surface = '1' THEN 'D'
		WHEN traffic_road_Surface = '2' THEN 'T'										 
		ELSE traffic_road_Surface END AS traffic_road_Surface

 , CASE WHEN traffic_alchohol = '1' THEN 'Y' 
        WHEN traffic_alchohol = '2' THEN 'N' ELSE traffic_alchohol END AS traffic_alchohol
 , CASE WHEN traffic_deceased_not_driver = '1' THEN 'Y'
		WHEN traffic_deceased_not_driver = '2' THEN 'N' 
		ELSE traffic_deceased_not_driver END AS traffic_deceased_not_driver

 , CASE WHEN traffic_seatbelt = '1' THEN 'Y' 
        WHEN traffic_seatbelt = '2' THEN 'N' 
        ELSE traffic_seatbelt END AS traffic_seatbelt

 , CASE WHEN traffic_passe_seatbelts = '1' THEN 'Y' 
        WHEN traffic_passe_seatbelts = '2' THEN 'N' 
        ELSE traffic_passe_seatbelts END AS traffic_passe_seatbelts
        
 , CASE WHEN traffic_seatbelt_use_pattern = '1' THEN 'Always'
		WHEN traffic_seatbelt_use_pattern = '2' THEN 'Sometimes'
		WHEN traffic_seatbelt_use_pattern = '3' THEN 'Never'
		ELSE traffic_seatbelt_use_pattern END AS traffic_seatbelt_use_pattern
 
 , CASE WHEN traffic_vehi_age = '1' THEN 'N'
		WHEN traffic_vehi_age = '2' THEN 'B'	
		WHEN traffic_vehi_age = '3' THEN 'O'									 
		ELSE traffic_vehi_age END AS traffic_vehi_age
 , CASE WHEN traffic_license_age = '1' THEN 'N'
		WHEN traffic_license_age = '2' THEN 'B'	
		WHEN traffic_license_age = '3' THEN 'O'									 
		ELSE traffic_vehi_age END  AS traffic_license_age 

 , CASE WHEN traffic_died_atsite = '1' THEN 'Y' 
        WHEN traffic_died_atsite = '2' THEN 'N' ELSE traffic_died_atsite END AS traffic_died_atsite
 , CASE WHEN traffic_hours_days_afterdeath = 'DK' THEN 9998
		ELSE traffic_hours_days_afterdeath END AS traffic_hours_days_afterdeath
 , CASE WHEN traffic_hours_days_after = '1' THEN 'S'
		WHEN traffic_hours_days_after = '2' THEN 'M'
		WHEN traffic_hours_days_after = '3' THEN 'H'																		 
		ELSE traffic_hours_days_after END AS traffic_hours_days_after

 , CASE WHEN o_trans_Id10082 = '1' THEN 'Y' 
        WHEN o_trans_Id10082 = '2' THEN 'N' ELSE o_trans_Id10082 END AS o_trans_Id10082

 , CASE WHEN fall_Id10083 = '1' THEN 'Y' 
        WHEN fall_Id10083 = '2' THEN 'N' ELSE fall_Id10083 END AS fall_Id10083

 , CASE WHEN poison_Id10084 = '1' THEN 'Y' 
        WHEN poison_Id10084 = '2' THEN 'N' ELSE poison_Id10084 END AS poison_Id10084

 , CASE WHEN drown_Id10085 = '1' THEN 'Y' 
        WHEN drown_Id10085 = '2' THEN 'N' ELSE drown_Id10085 END AS drown_Id10085

 , CASE WHEN vemon_suffer_from_Id10086 = '1' THEN 'Y' 
        WHEN vemon_suffer_from_Id10086 = '2' THEN 'N' ELSE vemon_suffer_from_Id10086 END AS vemon_suffer_from_Id10086

 , CASE WHEN animal_Id10087 = '1' THEN 'Y' 
        WHEN animal_Id10087 = '2' THEN 'N' ELSE animal_Id10087 END AS animal_Id10087
 , CASE WHEN animal_name_Id10088 = '1' THEN 'D'
		WHEN animal_name_Id10088 = '2' THEN 'S'
		WHEN animal_name_Id10088 = '3' THEN 'I'
		WHEN animal_name_Id10088 = '4' THEN 'O'
		ELSE animal_name_Id10088 END AS animal_name_Id10088
 , other_animal_id10088 AS other_animal_id10088

 , CASE WHEN fire_Id10089 = '1' THEN 'Y' 
        WHEN fire_Id10089 = '2' THEN 'N' ELSE fire_Id10089 END AS fire_Id10089

 , CASE WHEN assault_Id10090 = '1' THEN 'Y' 
        WHEN assault_Id10090 = '2' THEN 'N' ELSE assault_Id10090 END AS assault_Id10090

 , CASE WHEN firearm_Id10091 = '1' THEN 'Y' 
        WHEN firearm_Id10091 = '2' THEN 'N' ELSE firearm_Id10091 END AS firearm_Id10091

 , CASE WHEN stab_Id10092 = '1' THEN 'Y' 
        WHEN stab_Id10092 = '2' THEN 'N' ELSE stab_Id10092 END AS stab_Id10092

 , CASE WHEN struck = '1' THEN 'Y' 
        WHEN struck = '2' THEN 'N' ELSE struck END AS struck

 , CASE WHEN machinery = '1' THEN 'Y' 
        WHEN machinery = '2' THEN 'N' ELSE machinery END AS machinery

 , CASE WHEN suicide = '1' THEN 'Y' 
        WHEN suicide = '2' THEN 'N' ELSE suicide END AS suicide

 , CASE WHEN strangled_Id10093 = '1' THEN 'Y' 
        WHEN strangled_Id10093 = '2' THEN 'N' ELSE strangled_Id10093 END AS strangled_Id10093

 , CASE WHEN blunt_force_Id10094 = '1' THEN 'Y' 
        WHEN blunt_force_Id10094 = '2' THEN 'N' ELSE blunt_force_Id10094 END AS blunt_force_Id10094

 , CASE WHEN force_Id10095 = '1' THEN 'Y' 
        WHEN force_Id10095 = '2' THEN 'N' ELSE force_Id10095 END AS force_Id10095

 , CASE WHEN electrocution_Id10096 = '1' THEN 'Y' 
        WHEN electrocution_Id10096 = '2' THEN 'N' ELSE electrocution_Id10096 END AS electrocution_Id10096

 , CASE WHEN other_injury_Id10097 = '1' THEN 'Y' 
        WHEN other_injury_Id10097 = '2' THEN 'N' ELSE other_injury_Id10097 END AS other_injury_Id10097

 , CASE WHEN accidental_Id10098 = '1' THEN 'Y' 
        WHEN accidental_Id10098 = '2' THEN 'N' ELSE accidental_Id10098 END AS accidental_Id10098

 , CASE WHEN self_infect_Id10099 = '1' THEN 'Y' 
        WHEN self_infect_Id10099 = '2' THEN 'N' ELSE self_infect_Id10099 END AS self_infect_Id10099

 , CASE WHEN inflict_Id10100 = '1' THEN 'Y' 
        WHEN inflict_Id10100 = '2' THEN 'N' ELSE inflict_Id10100 END AS inflict_Id10100
 , CASE WHEN assault_decea_drink_alcho = '1' THEN 'Y' 
        WHEN assault_decea_drink_alcho = '2' THEN 'N' ELSE assault_decea_drink_alcho END AS assault_decea_drink_alcho

 , CASE WHEN assault_attacker_drink_alco = '1' THEN 'Y' 
        WHEN assault_attacker_drink_alco = '2' THEN 'N' ELSE assault_attacker_drink_alco END AS assault_attacker_drink_alco
 , CASE WHEN assault_cause = '1' THEN 'S'
		WHEN assault_cause = '2' THEN 'G'
		WHEN assault_cause = '3' THEN 'F'
		WHEN assault_cause = '4' THEN 'O'
		ELSE assault_cause END AS assault_cause
 , CASE WHEN assault_injr_caused_by = '1' THEN 'D'
		WHEN assault_injr_caused_by = '2' THEN 'P'
		WHEN assault_injr_caused_by = '3' THEN 'S'
		WHEN assault_injr_caused_by = '4' THEN 'L'
		WHEN assault_injr_caused_by = '5' THEN 'O'
		ELSE assault_injr_caused_by END AS assault_injr_caused_by
 
 , CASE WHEN assault_was_violence = '1' THEN 'D'
		WHEN assault_was_violence = '2' THEN 'P'
		WHEN assault_was_violence = '3' THEN 'S'
		WHEN assault_was_violence = '4' THEN 'L'
		WHEN assault_was_violence = '5' THEN 'O'
		ELSE assault_was_violence END AS assault_was_violence
		
 , other_assault_was_violence
 , assault_injury_bodypart
 , CASE WHEN assault_relation_attacker = '1' THEN 'P'
		WHEN assault_relation_attacker = '2' THEN 'F'
		WHEN assault_relation_attacker = '3' THEN 'N'
		WHEN assault_relation_attacker = '4' THEN 'R'
		WHEN assault_relation_attacker = '5' THEN 'S'
		ELSE assault_relation_attacker END AS assault_relation_attacker

 , CASE WHEN assault_died_atsite = '1' THEN 'Y' 
        WHEN assault_died_atsite = '2' THEN 'N' ELSE assault_died_atsite END AS assault_died_atsite
 , CASE WHEN assault_died_atsite_DH = 'DK' THEN 9998
		ELSE assault_died_atsite_DH END AS assault_died_atsite_DH
 , CASE WHEN assault_died_atsite_num = '1' THEN 'H'
		WHEN assault_died_atsite_num = '2' THEN 'D'
		WHEN assault_died_atsite_num = '3' THEN 'W'
		WHEN assault_died_atsite_num = '4' THEN 'M'
		WHEN assault_died_atsite_num = '5' THEN 'Y'
		ELSE assault_died_atsite_num END AS assault_died_atsite_num

 , CASE WHEN suicide_prev_treat_mental = '1' THEN 'Y' 
        WHEN suicide_prev_treat_mental = '2' THEN 'N' ELSE suicide_prev_treat_mental END AS suicide_prev_treat_mental

 , CASE WHEN suicide_curr_treat_mental = '1' THEN 'Y' 
        WHEN suicide_curr_treat_mental = '2' THEN 'N' ELSE suicide_curr_treat_mental
         END AS suicide_curr_treat_mental

 , CASE WHEN suicide_traum_event = '1' THEN 'Y' 
        WHEN suicide_traum_event = '2' THEN 'N' ELSE suicide_traum_event END AS suicide_traum_event
 ,suicide_traum_event_descr AS suicide_traum_event_descr

 , CASE WHEN suicide_prev_suic_attempt = '1' THEN 'Y' 
        WHEN suicide_prev_suic_attempt = '2' THEN 'N' ELSE suicide_prev_suic_attempt END AS suicide_prev_suic_attempt

 , CASE WHEN suicide_fam_hist_Mental = '1' THEN 'Y' 
        WHEN suicide_fam_hist_Mental = '2' THEN 'N' ELSE suicide_fam_hist_Mental END AS suicide_fam_hist_Mental

 , CASE WHEN suicide_died_atsite = '1' THEN 'Y' 
        WHEN suicide_died_atsite = '2' THEN 'N' ELSE suicide_died_atsite END AS suicide_died_atsite
 , CASE WHEN suicide_died_DH = 'DK' THEN 9998
		ELSE Suicide_died_DH END AS Suicide_died_DH
 , CASE WHEN suicide_died_num = '1' THEN 'H' 
		WHEN suicide_died_num = '2' THEN 'D'
		WHEN suicide_died_num = '3' THEN 'W'
		WHEN suicide_died_num = '4' THEN 'M'
		WHEN suicide_died_num = '5' THEN 'Y'
		ELSE suicide_died_num END AS suicide_died_num
 ,CASE WHEN illness_1_days_Id10351 = 'DK' THEN 9998
	   ELSE illness_1_days_Id10351 END AS illness_1_days_Id10351
 ,CASE WHEN illness_1_yrs_Id10352 = 'DK' THEN 9998
		ELSE illness_1_yrs_Id10352 END AS illness_1_yrs_Id10352
 , CASE WHEN ill_duration = 'DK' THEN 9998
		ELSE ill_duration END AS ill_duration
 , CASE WHEN ill_duration_num_1 = 'DK' THEN '9998'
		WHEN ill_duration_num_1 = '1' THEN 'D'
		WHEN ill_duration_num_1 = '2' THEN 'W'
		WHEN ill_duration_num_1 = '3' THEN 'M'
		ELSE ill_duration_num_1 END AS ill_duration_num_1
 , CASE WHEN ill_duration_num_2 = 'DK' THEN '9998'
		WHEN ill_duration_num_2 = '1' THEN 'D'
		WHEN ill_duration_num_2 = '2' THEN 'W'
		WHEN ill_duration_num_2 = '3' THEN 'M'
		ELSE ill_duration_num_2 END AS ill_duration_num_2
 , CASE WHEN ill_duration_num_3 = 'DK' THEN '9998'
		WHEN ill_duration_num_3 = '1' THEN 'D'
		WHEN ill_duration_num_3 = '2' THEN 'W'
		ELSE ill_duration_num_3 END AS ill_duration_num_3

 , CASE WHEN sudden_Id10123 = '1' THEN 'Y' 
        WHEN sudden_Id10123 = '2' THEN 'N' ELSE sudden_Id10123 END AS sudden_Id10123

 , CASE WHEN Devel_Id10408 = '1' THEN 'Y' 
        WHEN Devel_Id10408 = '2' THEN 'N' ELSE Devel_Id10408 END AS Devel_Id10408


 , CASE WHEN tuber_Id10125 = '1' THEN 'Y' 
        WHEN tuber_Id10125 = '2' THEN 'N' ELSE tuber_Id10125 END AS tuber_Id10125

 , CASE WHEN hiv_pos_Id10126 = '1' THEN 'Y' 
        WHEN hiv_pos_Id10126 = '2' THEN 'N' ELSE hiv_pos_Id10126 END AS hiv_pos_Id10126

 , CASE WHEN Hiv_aids_Id10127 = '1' THEN 'Y' 
        WHEN Hiv_aids_Id10127 = '2' THEN 'N' ELSE Hiv_aids_Id10127 END AS Hiv_aids_Id10127

 , CASE WHEN malaria_Id10128 = '1' THEN 'Y' 
        WHEN malaria_Id10128 = '2' THEN 'N' ELSE malaria_Id10128 END AS malaria_Id10128

 , CASE WHEN malarneg_Id10129 = '1' THEN 'Y' 
        WHEN malarneg_Id10129 = '2' THEN 'N' ELSE malarneg_Id10129 END AS malarneg_Id10129

 , CASE WHEN dengue_fever_Id10130 = '1' THEN 'Y' 
        WHEN dengue_fever_Id10130 = '2' THEN 'N' ELSE dengue_fever_Id10130 END AS dengue_fever_Id10130

 , CASE WHEN measles_Id10131 = '1' THEN 'Y' 
        WHEN measles_Id10131 = '2' THEN 'N' ELSE measles_Id10131 END AS measles_Id10131

 , CASE WHEN hypert_Id10132 = '1' THEN 'Y' 
        WHEN hypert_Id10132 = '2' THEN 'N' ELSE hypert_Id10132 END AS hypert_Id10132

 , CASE WHEN heart_dis_Id10133 = '1' THEN 'Y' 
        WHEN heart_dis_Id10133 = '2' THEN 'N' ELSE heart_dis_Id10133 END AS heart_dis_Id10133

 , CASE WHEN diabetes_Id10134 = '1' THEN 'Y' 
        WHEN diabetes_Id10134 = '2' THEN 'N' ELSE diabetes_Id10134 END AS diabetes_Id10134

 , CASE WHEN asthma_Id10135 = '1' THEN 'Y' 
        WHEN asthma_Id10135 = '2' THEN 'N' ELSE asthma_Id10135 END AS asthma_Id10135

 , CASE WHEN epilepsy_Id10136 = '1' THEN 'Y' 
        WHEN epilepsy_Id10136 = '2' THEN 'N' ELSE epilepsy_Id10136 END AS epilepsy_Id10136

 , CASE WHEN cancer_Id10137 = '1' THEN 'Y' 
        WHEN cancer_Id10137 = '2' THEN 'N' ELSE cancer_Id10137 END AS cancer_Id10137

 , CASE WHEN copd_Id10138 = '1' THEN 'Y' 
        WHEN copd_Id10138 = '2' THEN 'N' ELSE copd_Id10138 END AS copd_Id10138

 , CASE WHEN dement_Id10139 = '1' THEN 'Y' 
        WHEN dement_Id10139 = '2' THEN 'N' ELSE dement_Id10139 END AS dement_Id10139

 , CASE WHEN depress_Id10140 = '1' THEN 'Y' 
        WHEN depress_Id10140 = '2' THEN 'N' ELSE depress_Id10140 END AS depress_Id10140

 , CASE WHEN mental_ill = '1' THEN 'Y' 
        WHEN mental_ill = '2' THEN 'N' ELSE mental_ill END AS mental_ill

 , CASE WHEN sickle_cell_Id10142 = '1' THEN 'Y' 
        WHEN sickle_cell_Id10142 = '2' THEN 'N' ELSE sickle_cell_Id10142 END AS sickle_cell_Id10142

 , CASE WHEN kidney_dis_Id10143 = '1' THEN 'Y' 
        WHEN kidney_dis_Id10143 = '2' THEN 'N' ELSE kidney_dis_Id10143 END AS kidney_dis_Id10143

 , CASE WHEN liver_dis_Id10144 = '1' THEN 'Y' 
        WHEN liver_dis_Id10144 = '2' THEN 'N' ELSE liver_dis_Id10144 END AS liver_dis_Id10144

 , CASE WHEN stroke_Id10141 = '1' THEN 'Y' 
        WHEN stroke_Id10141 = '2' THEN 'N' ELSE stroke_Id10141 END AS stroke_Id10141
 , CASE WHEN stroke_occ = '1' THEN 'R'
		WHEN stroke_occ = '2' THEN 'L'
		ELSE stroke_occ END AS stroke_occ
		

 , CASE WHEN stroke_num_YND = '1' THEN 'Y' 
        WHEN stroke_num_YND = '2' THEN 'N' ELSE stroke_num_YND END AS stroke_num_YND
 , stroke_num

 , CASE WHEN stroke_treat = '1' THEN 'Y' 
        WHEN stroke_treat = '2' THEN 'N' ELSE stroke_treat END AS stroke_treat
  ,treat_type AS treat_type
  ,stroke_loc AS stroke_loc
  ,stroke_tim AS stroke_tim

 , CASE WHEN aspirin = '1' THEN 'Y' 
        WHEN aspirin = '2' THEN 'N' ELSE aspirin END AS aspirin

  ,Final_Symptoms_instruction AS Final_Symptoms_instruction

 , CASE WHEN fever_Id10147 = '1' THEN 'Y' 
        WHEN fever_Id10147 = '2' THEN 'N' ELSE fever_Id10147 END AS fever_Id10147
 , CASE WHEN fever_dur_DW_Id10148 = '1' THEN 'H'
		WHEN fever_dur_DW_Id10148 = '2' THEN 'D'
		WHEN fever_dur_DW_Id10148 = '3' THEN 'M'
		WHEN fever_dur_DW_Id10148 = '4' THEN 'Y'
		ELSE fever_dur_DW_Id10148 END AS fever_dur_DW_Id10148
 , CASE WHEN Fever_dur_num_Id10148 = 'DK' THEN 9998
		ELSE Fever_dur_num_Id10148  END AS Fever_dur_num_Id10148 

 , CASE WHEN fever_todeath_Id10149 = '1' THEN 'Y' 
        WHEN fever_todeath_Id10149 = '2' THEN 'N' ELSE fever_todeath_Id10149 END AS fever_todeath_Id10149
 , how_cousevere_Id10150
 , CASE WHEN fever_pattern_Id10151 = '1' THEN 'C'
		WHEN fever_pattern_Id10151 = '2' THEN 'O'
		WHEN fever_pattern_Id10151 = '3' THEN 'N'
		ELSE fever_pattern_Id10151 END AS fever_pattern_Id10151

 , CASE WHEN night_sw_Id10152 = '1' THEN 'Y' 
        WHEN night_sw_Id10152 = '2' THEN 'N' ELSE night_sw_Id10152 END AS night_sw_Id10152

 , CASE WHEN covid_test = '1' THEN 'Y'
		WHEN covid_test = '2' THEN 'N'
		ELSE covid_test END AS covid_test
  , CASE WHEN covid_test_results = '1' THEN 'positive'	
		 WHEN covid_test_results = '2' THEN 'negative'
		 WHEN covid_test_results = '3' THEN 'unclear'
		 WHEN covid_test_results = '4' THEN 'Don''t know'
		 WHEN covid_test_results = '5' THEN 'Refuse to answer'
		 ELSE covid_test_results END AS covid_test_results	
  , CASE WHEN extreme_fatigue = '1' THEN 'Y'
		 WHEN extreme_fatigue = '2' THEN 'N'
		 ELSE extreme_fatigue END AS extreme_fatigue	
  , CASE WHEN loss_smell_taste = '1' THEN 'Y'
		 WHEN loss_smell_taste = '2' THEN 'N'
		 ELSE loss_smell_taste END AS loss_smell_taste
  , CASE WHEN covid_contact = '1' THEN 'Y'
		 WHEN covid_contact = '2' THEN 'N'
		 ELSE covid_contact END AS covid_contact	
  , CASE WHEN covid_hotspot = '1' THEN 'Y'
		 WHEN covid_hotspot = '2' THEN 'N'
		 ELSE covid_hotspot END AS covid_hotspot	
		 
 , CASE WHEN cough_Id10153 = '1' THEN 'Y' 
        WHEN cough_Id10153 = '2' THEN 'N' ELSE cough_Id10153 END AS cough_Id10153
 , CASE WHEN cough_dur_DW_Id10154 = '1' THEN 'H'
		WHEN cough_dur_DW_Id10154 = '2' THEN 'D'
		WHEN cough_dur_DW_Id10154 = '3' THEN 'M'
		WHEN cough_dur_DW_Id10154 = '4' THEN 'Y'
		ELSE cough_dur_DW_Id10154 END AS cough_dur_DW_Id10154
 , CASE WHEN cough_dur_num_Id10154 = 'DK' THEN 9998
		ELSE cough_dur_num_Id10154 END AS cough_dur_num_Id10154
 , CASE WHEN pr_cough_Id10155 = '1' THEN 'Y' 
        WHEN pr_cough_Id10155 = '2' THEN 'N' ELSE pr_cough_Id10155 END AS pr_cough_Id10155

 , CASE WHEN cough_severe_Id10156 = '1' THEN 'Y' 
        WHEN cough_severe_Id10156 = '2' THEN 'N' ELSE cough_severe_Id10156 END AS cough_severe_Id10156

 , CASE WHEN bl_cough_Id10157 = '1' THEN 'Y' 
        WHEN bl_cough_Id10157 = '2' THEN 'N' ELSE bl_cough_Id10157 END AS bl_cough_Id10157

 , CASE WHEN whoop_Id10158 = '1' THEN 'Y' 
        WHEN whoop_Id10158 = '2' THEN 'N' ELSE whoop_Id10158 END AS whoop_Id10158

 , CASE WHEN breath_Id10159 = '1' THEN 'Y' 
        WHEN breath_Id10159 = '2' THEN 'N' ELSE breath_Id10159 END AS breath_Id10159
 , CASE WHEN breath_num_Id10161 = 'DK' THEN 9998
		ELSE breath_num_Id10161 END AS breath_num_Id10161
 , CASE WHEN breath_DW = '1' THEN 'H'
		WHEN breath_DW = '2' THEN 'D'
		WHEN breath_DW = '3' THEN 'M'
		WHEN breath_DW = '4' THEN 'Y'
		ELSE breath_DW END AS breath_DW
		
 , CASE WHEN continuos_Id10165 = '1' THEN 'C'
		WHEN continuos_Id10165 = '2' THEN 'O'
		ELSE continuos_Id10165 END AS continuos_Id10165

 , CASE WHEN Rapid_br_Id10166 = '1' THEN 'Y' 
        WHEN Rapid_br_Id10166 = '2' THEN 'N' ELSE Rapid_br_Id10166 END AS Rapid_br_Id10166
 , CASE WHEN Rapid_dur_num_Id10167 = 'DK' THEN 9998
		ELSE  Rapid_dur_num_Id10167 END AS  Rapid_dur_num_Id10167
 , CASE WHEN Rapid_dur_DW = '1' THEN 'H'
		WHEN Rapid_dur_DW = '2' THEN 'D'
		WHEN Rapid_dur_DW = '3' THEN 'M'
		WHEN Rapid_dur_DW = '4' THEN 'Y'
		ELSE Rapid_dur_DW END AS Rapid_dur_DW

 , CASE WHEN br_less_Id10168 = '1' THEN 'Y' 
        WHEN br_less_Id10168 = '2' THEN 'N' ELSE br_less_Id10168 END AS br_less_Id10168
 , CASE WHEN br_dur_num_Id10169 = 'DK' THEN 9998
		ELSE br_dur_num_Id10169 END AS br_dur_num_Id10169
 , CASE WHEN br_dur_DW_Id10169 = '1' THEN 'H'
		WHEN br_dur_DW_Id10169 = '2' THEN 'D'
		WHEN br_dur_DW_Id10169 = '3' THEN 'M'
		WHEN br_dur_DW_Id10169 = '4' THEN 'Y'
		ELSE br_dur_DW_Id10169 END AS br_dur_DW_Id10169

 , CASE WHEN exert_br_Id10170 = '1' THEN 'Y' 
        WHEN exert_br_Id10170 = '2' THEN 'N' ELSE exert_br_Id10170 END AS exert_br_Id10170

 , CASE WHEN lying_br_Id10171 = '1' THEN 'Y' 
        WHEN lying_br_Id10171 = '2' THEN 'N' ELSE lying_br_Id10171 END AS lying_br_Id10171

 , CASE WHEN chest_in_Id10172 = '1' THEN 'Y' 
        WHEN chest_in_Id10172 = '2' THEN 'N' ELSE chest_in_Id10172 END AS chest_in_Id10172
 
 , CASE WHEN Wheeze_Id10173 = '1' THEN 'S'
		WHEN Wheeze_Id10173 = '2' THEN 'G'
		WHEN Wheeze_Id10173 = '3' THEN 'W'
		WHEN Wheeze_Id10173 = '4' THEN 'N'
		ELSE Wheeze_Id10173 END AS Wheeze_Id10173
 
 , CASE WHEN ch_pain_Id10174 = '1' THEN 'Y' 
        WHEN ch_pain_Id10174 = '2' THEN 'N' ELSE ch_pain_Id10174 END AS ch_pain_Id10174

 , CASE WHEN severe_ch_pain_Id10175 = '1' THEN 'Y' 
        WHEN severe_ch_pain_Id10175 = '2' THEN 'N' ELSE severe_ch_pain_Id10175 END AS severe_ch_pain_Id10175
 , CASE WHEN days_chpain_Id10176 = 'DK' THEN 9998
		ELSE days_chpain_Id10176 END AS days_chpain_Id10176

 , CASE WHEN diarr_Id10181 = '1' THEN 'Y' 
        WHEN diarr_Id10181 = '2' THEN 'N' ELSE diarr_Id10181 END AS diarr_Id10181
 , CASE WHEN diarr_dur_num_Id10182 = 'DK' THEN 9998
		ELSE diarr_dur_num_Id10182 END AS diarr_dur_num_Id10182
 , CASE WHEN diarr_dur_DW_Id10182 = '1' THEN 'H'
		WHEN diarr_dur_DW_Id10182 = '2' THEN 'D'
		WHEN diarr_dur_DW_Id10182 = '3' THEN 'M'
		WHEN diarr_dur_DW_Id10182 = '4' THEN 'Y'
		ELSE diarr_dur_DW_Id10182 END AS diarr_dur_DW_Id10182
 , CASE WHEN howmany_stools_Id10183 = 'DK' THEN 9998
		ELSE howmany_stools_Id10183 END AS howmany_stools_Id10183
 , CASE WHEN stool_todeath_num_Id10184 = 'DK' THEN 9998
		ELSE stool_todeath_num_Id10184 END AS stool_todeath_num_Id10184
		
 , CASE WHEN stool_todeath_DW_Id10184 = '1' THEN 'H'
		WHEN stool_todeath_DW_Id10184 = '2' THEN 'D'
		WHEN stool_todeath_DW_Id10184 = '3' THEN 'M'
		WHEN stool_todeath_DW_Id10184 = '4' THEN 'Y'
		ELSE stool_todeath_DW_Id10184 END AS stool_todeath_DW_Id10184

 , CASE WHEN liquid_stool_Id10185 = '1' THEN 'Y' 
        WHEN liquid_stool_Id10185 = '2' THEN 'N' ELSE liquid_stool_Id10185 END AS liquid_stool_Id10185

 , CASE WHEN bl_diarr_Id10186 = '1' THEN 'Y' 
        WHEN bl_diarr_Id10186 = '2' THEN 'N' ELSE bl_diarr_Id10186 END AS bl_diarr_Id10186

 , CASE WHEN blood_stools_Id10187 = '1' THEN 'Y' 
        WHEN blood_stools_Id10187 = '2' THEN 'N' ELSE blood_stools_Id10187 END AS blood_stools_Id10187

 , CASE WHEN vomiting_Id10188 = '1' THEN 'Y' 
        WHEN vomiting_Id10188 = '2' THEN 'N' ELSE vomiting_Id10188 END AS vomiting_Id10188

 , CASE WHEN vomit_to_death_Id10189 = '1' THEN 'Y' 
        WHEN vomit_to_death_Id10189 = '2' THEN 'N' ELSE vomit_to_death_Id10189 END AS vomit_to_death_Id10189
 , CASE WHEN vomit_todeath_Id10190 = 'DK' THEN 9998
		ELSE vomit_todeath_Id10190 END AS vomit_todeath_Id10190

 , CASE WHEN bl_vomit_Id10191 = '1' THEN 'Y' 
        WHEN bl_vomit_Id10191 = '2' THEN 'N' ELSE bl_vomit_Id10191 END AS bl_vomit_Id10191

 , CASE WHEN black_vomit_Id10192 = '1' THEN 'Y' 
        WHEN black_vomit_Id10192 = '2' THEN 'N' ELSE black_vomit_Id10192 END AS black_vomit_Id10192

 , CASE WHEN abdom_Id10193 = '1' THEN 'Y' 
        WHEN abdom_Id10193 = '2' THEN 'N' ELSE abdom_Id10193 END AS abdom_Id10193

 , CASE WHEN bely_pain_Id10194 = '1' THEN 'Y' 
        WHEN bely_pain_Id10194 = '2' THEN 'N' ELSE bely_pain_Id10194 END AS bely_pain_Id10194

 , CASE WHEN abd_pain_Id10195 = '1' THEN 'Y' 
        WHEN abd_pain_Id10195 = '2' THEN 'N' ELSE abd_pain_Id10195 END AS abd_pain_Id10195

 , CASE WHEN abd_pain_sever_ID10197 = '1' THEN 'Y' 
        WHEN abd_pain_sever_ID10197 = '2' THEN 'N' ELSE abd_pain_sever_ID10197 END AS abd_pain_sever_ID10197
 , CASE WHEN abd_dur_DW_id10197 = 'DK' THEN 9998
		ELSE abd_dur_DW_id10197 END AS abd_dur_DW_id10197
 
 , CASE WHEN abd_dur_num_id10197 = '1' THEN 'H'
		WHEN abd_dur_num_id10197 = '2' THEN 'D'
		WHEN abd_dur_num_id10197 = '3' THEN 'M'
		WHEN abd_dur_num_id10197 = '4' THEN 'Y'
		ELSE abd_dur_num_id10197 END AS abd_dur_num_id10197
		
 , CASE WHEN pain_abd_Id10199 = '1' THEN 'Y'
		WHEN pain_abd_Id10199 = '2' THEN 'N'
		ELSE pain_abd_Id10199 END AS pain_abd_Id10199

 , CASE WHEN swe_abd_Id10200 = '1' THEN 'Y' 
        WHEN swe_abd_Id10200 = '2' THEN 'N' ELSE swe_abd_Id10200 END AS swe_abd_Id10200
 , CASE WHEN hw_long_prod_Id10201 = 'DK' THEN 9998
		ELSE hw_long_prod_Id10201 END AS hw_long_prod_Id10201
 , CASE WHEN pro_abd_dur_Id10202 = '1' THEN 'D'
		WHEN pro_abd_dur_Id10202 = '2' THEN 'W'
		WHEN pro_abd_dur_Id10202 = '3' THEN 'M'
		ELSE pro_abd_dur_Id10202 END AS pro_abd_dur_Id10202
		
 , CASE WHEN protruding_belly_Id10203 = '1' THEN 'R'
		WHEN protruding_belly_Id10203 = '2' THEN 'S'
		ELSE protruding_belly_Id10203 END AS protruding_belly_Id10203

 , CASE WHEN abd_mass_Id10204 = '1' THEN 'Y' 
        WHEN abd_mass_Id10204 = '2' THEN 'N' ELSE abd_mass_Id10204 END AS abd_mass_Id10204
 , CASE WHEN mass_dur_num_Id10205 = 'DK' THEN 9998
		ELSE mass_dur_num_Id10205 END AS mass_dur_num_Id10205
 , CASE WHEN mass_dur_DW = '1' THEN 'D'
		WHEN mass_dur_DW = '2' THEN 'W'
		WHEN mass_dur_DW = '3' THEN 'M'
		ELSE mass_dur_DW END AS mass_dur_DW

 , CASE WHEN headache_Id10207 = '1' THEN 'Y' 
        WHEN headache_Id10207 = '2' THEN 'N' ELSE headache_Id10207 END AS headache_Id10207

 , CASE WHEN stiff_neck_Id10208 = '1' THEN 'Y' 
        WHEN stiff_neck_Id10208 = '2' THEN 'N' ELSE stiff_neck_Id10208 END AS stiff_neck_Id10208
 , CASE WHEN stiff_dur_DW_Id10209 = 'DK' THEN 9998
		ELSE stiff_dur_DW_Id10209 END AS stiff_dur_DW_Id10209
 , CASE WHEN Stiff_dur_num = '1' THEN 'H'
		WHEN Stiff_dur_num = '2' THEN 'D'
		WHEN Stiff_dur_num = '3' THEN 'M'
		WHEN Stiff_dur_num = '4' THEN 'Y'
		ELSE Stiff_dur_num END AS Stiff_dur_num

 , CASE WHEN paineck_Id10210 = '1' THEN 'Y' 
        WHEN paineck_Id10210 = '2' THEN 'N' ELSE paineck_Id10210 END AS paineck_Id10210
        
 , CASE WHEN hmany_paineck_num_Id10211 = 'DK' THEN 9998
		ELSE hmany_paineck_num_Id10211 END AS hmany_paineck_num_Id10211
		
 , CASE WHEN hmany_paineck_DW_Id10211 = '1' THEN 'H'
		WHEN hmany_paineck_DW_Id10211 = '2' THEN 'D'
		WHEN hmany_paineck_DW_Id10211 = '3' THEN 'M'
		WHEN hmany_paineck_DW_Id10211 = '4' THEN 'Y'
		ELSE hmany_paineck_DW_Id10211 END AS hmany_paineck_DW_Id10211

 , CASE WHEN men_con_Id10212 = '1' THEN 'Y' 
        WHEN men_con_Id10212 = '2' THEN 'N' ELSE men_con_Id10212 END AS men_con_Id10212
 , CASE WHEN con_dur_DW_Id10213 = 'DK' THEN 9998
		ELSE con_dur_DW_Id10213 END AS con_dur_DW_Id10213
 , CASE WHEN con_dur_num_Id10214 = '1' THEN 'H' 
		WHEN con_dur_num_Id10214 = '2' THEN 'D'
		WHEN con_dur_num_Id10214 = '3' THEN 'M'
        WHEN con_dur_num_Id10214 = '4' THEN 'Y' ELSE con_dur_num_Id10214 END AS con_dur_num_Id10214

 , CASE WHEN uncon = '1' THEN 'Y' 
        WHEN uncon = '2' THEN 'N' ELSE uncon END AS uncon

 , CASE WHEN coma_Id10215 = '1' THEN 'Y' 
        WHEN coma_Id10215 = '2' THEN 'N' ELSE coma_Id10215 END AS coma_Id10215
 , CASE WHEN howmany_uncon_Id10216 = 'DK' THEN 9998
		ELSE howmany_uncon_Id10216 END AS howmany_uncon_Id10216

 , CASE WHEN co_ons_Id10217 = '1' THEN 'Y' 
        WHEN co_ons_Id10217 = '2' THEN 'N' ELSE co_ons_Id10217 END AS co_ons_Id10217

 , CASE WHEN uncon_todeath_Id10218 = '1' THEN 'Y' 
        WHEN uncon_todeath_Id10218 = '2' THEN 'N' ELSE uncon_todeath_Id10218 END AS uncon_todeath_Id10218

 , CASE WHEN convul_Id10219 = '1' THEN 'Y' 
        WHEN convul_Id10219 = '2' THEN 'N' ELSE convul_Id10219 END AS convul_Id10219

 , CASE WHEN conv_Id10220 = '1' THEN 'Y' 
        WHEN conv_Id10220 = '2' THEN 'N' ELSE conv_Id10220 END AS conv_Id10220
 , CASE WHEN convul_dur_DW_Id10221 = 'DK' THEN 9998
		ELSE convul_dur_DW_Id10221 END AS convul_dur_DW_Id10221
 , CASE WHEN convul_dur_num = '1' THEN 'H'
		WHEN convul_dur_num = '2' THEN 'D'
		WHEN convul_dur_num = '3' THEN 'M'
		WHEN convul_dur_num = '4' THEN 'Y'
		ELSE convul_dur_num END AS convul_dur_num

 , CASE WHEN unc_conv_Id10222 = '1' THEN 'Y' 
        WHEN unc_conv_Id10222 = '2' THEN 'N' ELSE unc_conv_Id10222 END AS unc_conv_Id10222
 , desc_conv

 , CASE WHEN first_conv = '1' THEN 'Y' 
        WHEN first_conv = '2' THEN 'N' ELSE first_conv END AS first_conv
 , CASE WHEN conv_num = 'DK' THEN 9998
		ELSE conv_num END AS conv_num
 , CASE WHEN conv_dur_num = 'DK' THEN 9998
		ELSE conv_dur_num END AS conv_dur_num
 , CASE WHEN conv_dur_DW = '1' THEN 'H'
		WHEN conv_dur_DW = '2' THEN 'D'
		WHEN conv_dur_DW = '3' THEN 'M'
		WHEN conv_dur_DW = '4' THEN 'Y'
		ELSE conv_dur_DW END AS conv_dur_DW
 , [when] AS [when]
 , CASE WHEN cry = '1' THEN 'Y' 
        WHEN cry = '2' THEN 'N' ELSE cry END AS cry

 , CASE WHEN unc_mov = '1' THEN 'Y' 
        WHEN unc_mov = '2' THEN 'N' ELSE unc_mov END AS unc_mov

 , CASE WHEN stiff = '1' THEN 'Y' 
        WHEN stiff = '2' THEN 'N' ELSE stiff END AS stiff

 , CASE WHEN app_stiff = '1' THEN 'Y' 
        WHEN app_stiff = '2' THEN 'N' ELSE app_stiff END AS app_stiff

 , CASE WHEN cl_hand = '1' THEN 'Y' 
        WHEN cl_hand = '2' THEN 'N' ELSE cl_hand END AS cl_hand

 , CASE WHEN cl_jaw = '1' THEN 'Y' 
        WHEN cl_jaw = '2' THEN 'N' ELSE cl_jaw END AS cl_jaw

 , CASE WHEN uri_dur = '1' THEN 'Y' 
        WHEN uri_dur = '2' THEN 'N' ELSE uri_dur END AS uri_dur

 , CASE WHEN def_dur = '1' THEN 'Y' 
        WHEN def_dur = '2' THEN 'N' ELSE def_dur END AS def_dur

 , CASE WHEN bit_tong = '1' THEN 'Y' 
        WHEN bit_tong = '2' THEN 'N' ELSE bit_tong END AS bit_tong

 , CASE WHEN froth = '1' THEN 'Y' 
        WHEN froth = '2' THEN 'N' ELSE froth END AS froth

 , CASE WHEN epilepsy_was = '1' THEN 'Y' 
        WHEN epilepsy_was = '2' THEN 'N' ELSE epilepsy_was END AS epilepsy_was
 ,CASE WHEN ep_dur_MY = 'DK' THEN 9998
	  ELSE ep_dur_MY END AS ep_dur_MY
 ,CASE WHEN ep_dur_num = '1' THEN 'D'
	   WHEN ep_dur_num = '2' THEN 'M'
	  WHEN ep_dur_num = '3' THEN 'Y'
	  ELSE ep_dur_num END AS ep_dur_num
 ,CASE WHEN type_seiz = '1' THEN 'G'
	   WHEN type_seiz = '2' THEN 'S'
	   WHEN type_seiz = '3' THEN 'I'
	   ELSE type_seiz END AS type_seiz

 , CASE WHEN seiz_prev = '1' THEN 'Y' 
        WHEN seiz_prev = '2' THEN 'N' ELSE seiz_prev END AS seiz_prev


 , CASE WHEN epi_treat = '1' THEN 'Y' 
        WHEN epi_treat = '2' THEN 'N' ELSE epi_treat END AS epi_treat

 ,CASE WHEN treat_loc = '1' THEN 'H'
	   WHEN treat_loc = '2' THEN 'E'
	   WHEN treat_loc = '3' THEN 'C'
	   ELSE treat_loc END AS treat_loc

 , CASE WHEN cur_treat = '1' THEN 'Y' 
        WHEN cur_treat = '2' THEN 'N' ELSE cur_treat END AS cur_treat

  , CASE WHEN ab_behav = '1' THEN 'Y' 
        WHEN ab_behav = '2' THEN 'N' ELSE ab_behav END AS ab_behav


  , CASE WHEN learn_diff = '1' THEN 'Y' 
        WHEN learn_diff = '2' THEN 'N' ELSE learn_diff END AS learn_diff


  , CASE WHEN wittness = '1' THEN 'Y' 
        WHEN wittness = '2' THEN 'N' ELSE wittness END AS wittness

  , CASE WHEN die_dur = '1' THEN 'Y' 
        WHEN die_dur = '2' THEN 'N' ELSE die_dur END AS die_dur

   , CASE WHEN die_night = '1' THEN 'Y' 
        WHEN die_night = '2' THEN 'N' ELSE die_night END AS die_night


   , CASE WHEN die_water = '1' THEN 'Y' 
        WHEN die_water = '2' THEN 'N' ELSE die_water END AS die_water


 , CASE WHEN die_burn = '1' THEN 'Y' 
        WHEN die_burn = '2' THEN 'N' ELSE die_burn END AS die_burn


 , CASE WHEN die_fall = '1' THEN 'Y' 
        WHEN die_fall = '2' THEN 'N' ELSE die_fall END AS die_fall

 , CASE WHEN uri_pro_Id10223 = '1' THEN 'Y' 
        WHEN uri_pro_Id10223 = '2' THEN 'N' ELSE uri_pro_Id10223 END AS uri_pro_Id10223

 , CASE WHEN uri_ret_Id10224 = '1' THEN 'Y' 
        WHEN uri_ret_Id10224 = '2' THEN 'N' ELSE uri_ret_Id10224 END AS uri_ret_Id10224

 , CASE WHEN exc_uri_Id10225 = '1' THEN 'Y' 
        WHEN exc_uri_Id10225 = '2' THEN 'N' ELSE exc_uri_Id10225 END AS exc_uri_Id10225

 , CASE WHEN uri_haem_Id10226 = '1' THEN 'Y' 
        WHEN uri_haem_Id10226 = '2' THEN 'N' ELSE uri_haem_Id10226 END AS uri_haem_Id10226

 , CASE WHEN skin_id10116 = '1' THEN 'Y' 
        WHEN skin_id10116 = '2' THEN 'N' ELSE skin_id10116 END AS skin_id10116

 , CASE WHEN Skin_les_Id10227 = '1' THEN 'Y' 
        WHEN Skin_les_Id10227 = '2' THEN 'N' ELSE Skin_les_Id10227 END AS Skin_les_Id10227

 , CASE WHEN sores_Id10228 = '1' THEN 'Y' 
        WHEN sores_Id10228 = '2' THEN 'N' ELSE sores_Id10228 END AS sores_Id10228

 , CASE WHEN liquid_sores_Id10229 = '1' THEN 'Y' 
        WHEN liquid_sores_Id10229 = '2' THEN 'N' ELSE liquid_sores_Id10229 END AS liquid_sores_Id10229

 , CASE WHEN sk_feet_Id10230 = '1' THEN 'Y' 
        WHEN sk_feet_Id10230 = '2' THEN 'N' ELSE sk_feet_Id10230 END AS sk_feet_Id10230

 , CASE WHEN foot_ooze_Id10231 = '1' THEN 'Y' 
        WHEN foot_ooze_Id10231 = '2' THEN 'N' ELSE foot_ooze_Id10231 END AS foot_ooze_Id10231
 , CASE WHEN days_foot_ooze_Id10232 = 'DK' THEN 9998
		ELSE days_foot_ooze_Id10232 END AS days_foot_ooze_Id10232
 , CASE WHEN days_foot_ooze_DW = '1' THEN 'H'
		WHEN days_foot_ooze_DW = '2' THEN 'D'
		WHEN days_foot_ooze_DW = '3' THEN 'M'
		WHEN days_foot_ooze_DW = '4' THEN 'Y'
		ELSE days_foot_ooze_DW END AS days_foot_ooze_DW

 , CASE WHEN rash_Id10233 = '1' THEN 'Y' 
        WHEN rash_Id10233 = '2' THEN 'N' ELSE rash_Id10233 END AS rash_Id10233
 , CASE WHEN rash_dur_num_Id10234 = 'DK' THEN 9998
		ELSE rash_dur_num_Id10234 END AS rash_dur_num_Id10234
 , CASE WHEN rash_dur_DW = '1' THEN 'H'
		WHEN rash_dur_DW = '2' THEN 'D'
		WHEN rash_dur_DW = '3' THEN 'M'
		WHEN rash_dur_DW = '4' THEN 'Y'
		ELSE rash_dur_DW END AS rash_dur_DW
		
 , CASE WHEN rash_where_Id10235 = '1' THEN 'F'
		WHEN rash_where_Id10235 = '2' THEN 'T'
		WHEN rash_where_Id10235 = '3' THEN 'R'
		WHEN rash_where_Id10235 = '4' THEN 'E'
		ELSE rash_where_Id10235 END AS rash_where_Id10235

 , CASE WHEN measrash_Id10236 = '1' THEN 'Y' 
        WHEN measrash_Id10236 = '2' THEN 'N' ELSE measrash_Id10236 END AS measrash_Id10236

 , CASE WHEN herpes_Id10237 = '1' THEN 'Y' 
        WHEN herpes_Id10237 = '2' THEN 'N' ELSE herpes_Id10237 END AS herpes_Id10237

 , CASE WHEN is_skin_peeling_Id10238 = '1' THEN 'Y' 
        WHEN is_skin_peeling_Id10238 = '2' THEN 'N' ELSE is_skin_peeling_Id10238 END AS is_skin_peeling_Id10238

 , CASE WHEN black_skin_Id10239 = '1' THEN 'Y' 
        WHEN black_skin_Id10239 = '2' THEN 'N' ELSE black_skin_Id10239 END AS black_skin_Id10239

 , CASE WHEN skin_redness_Id10240 = '1' THEN 'Y' 
        WHEN skin_redness_Id10240 = '2' THEN 'N' ELSE skin_redness_Id10240 END AS skin_redness_Id10240

 , CASE WHEN bleed_todeath_Id10241 = '1' THEN 'Y' 
        WHEN bleed_todeath_Id10241 = '2' THEN 'N' ELSE bleed_todeath_Id10241 END AS bleed_todeath_Id10241

 , CASE WHEN bl_orif_Id10242 = '1' THEN 'Y' 
        WHEN bl_orif_Id10242 = '2' THEN 'N' ELSE bl_orif_Id10242 END AS bl_orif_Id10242

 , CASE WHEN wt_loss_Id10243 = '1' THEN 'Y' 
        WHEN wt_loss_Id10243 = '2' THEN 'N' ELSE wt_loss_Id10243 END AS wt_loss_Id10243

 , CASE WHEN wasting_Id10244 = '1' THEN 'Y' 
        WHEN wasting_Id10244 = '2' THEN 'N' ELSE wasting_Id10244 END AS wasting_Id10244

 , CASE WHEN or_cand_Id10245 = '1' THEN 'Y' 
        WHEN or_cand_Id10245 = '2' THEN 'N' ELSE or_cand_Id10245 END AS or_cand_Id10245

 , CASE WHEN rigidity_Id10246 = '1' THEN 'Y' 
        WHEN rigidity_Id10246 = '2' THEN 'N' ELSE rigidity_Id10246 END AS rigidity_Id10246

 , CASE WHEN swe_oth_Id10247 = '1' THEN 'Y' 
        WHEN swe_oth_Id10247 = '2' THEN 'N' ELSE swe_oth_Id10247 END AS swe_oth_Id10247
 , CASE WHEN days_puffiness_Id10248 = 'DK' THEN 9998
		ELSE days_puffiness_Id10248 END AS days_puffiness_Id10248

 , CASE WHEN Swe_legs_Id10249 = '1' THEN 'Y' 
        WHEN Swe_legs_Id10249 = '2' THEN 'N' ELSE Swe_legs_Id10249 END AS Swe_legs_Id10249
 , CASE WHEN swell_last_Id10250 = 'DK' THEN 9998
		ELSE swell_last_Id10250 END AS swell_last_Id10250

 , CASE WHEN feet_swell_Id10251 = '1' THEN 'Y' 
        WHEN feet_swell_Id10251 = '2' THEN 'N' ELSE feet_swell_Id10251 END AS feet_swell_Id10251

 , CASE WHEN puffiness_Id10252 = '1' THEN 'Y' 
        WHEN puffiness_Id10252 = '2' THEN 'N' ELSE puffiness_Id10252 END AS puffiness_Id10252

 , CASE WHEN swell_Id10253 = '1' THEN 'Y' 
        WHEN swell_Id10253 = '2' THEN 'N' ELSE swell_Id10253 END AS swell_Id10253

 , CASE WHEN swe_oral_Id10254 = '1' THEN 'Y' 
        WHEN swe_oral_Id10254 = '2' THEN 'N' ELSE swe_oral_Id10254 END AS swe_oral_Id10254


 , CASE WHEN swe_neck_Id10255 = '1' THEN 'Y' 
        WHEN swe_neck_Id10255 = '2' THEN 'N' ELSE swe_neck_Id10255 END AS swe_neck_Id10255

 , CASE WHEN swe_armp_Id10256 = '1' THEN 'Y' 
        WHEN swe_armp_Id10256 = '2' THEN 'N' ELSE swe_armp_Id10256 END AS swe_armp_Id10256

 , CASE WHEN swe_gen_Id10257 = '1' THEN 'Y' 
        WHEN swe_gen_Id10257 = '2' THEN 'N' ELSE swe_gen_Id10257 END AS swe_gen_Id10257

 , CASE WHEN paralysis_Id10258 = '1' THEN 'Y' 
        WHEN paralysis_Id10258 = '2' THEN 'N' ELSE paralysis_Id10258 END AS paralysis_Id10258

 , CASE WHEN paral_one_Id10259 = '1' THEN 'Y' 
        WHEN paral_one_Id10259 = '2' THEN 'N' ELSE paral_one_Id10259 END AS paral_one_Id10259
 
 , CASE WHEN body_paralysed_Id10260 = '1' THEN 'right_side'
		WHEN body_paralysed_Id10260 = '2' THEN 'left_side'
		WHEN body_paralysed_Id10260 = '3' THEN 'lower_part_of_body'
		WHEN body_paralysed_Id10260 = '4' THEN 'upper_part_of_body'
		WHEN body_paralysed_Id10260 = '5' THEN 'one_leg_only'
		WHEN body_paralysed_Id10260 = '6' THEN 'one_arm_only' 
		WHEN body_paralysed_Id10260 = '7' THEN 'whole_body'
		WHEN body_paralysed_Id10260 = '8' THEN 'other'
		ELSE body_paralysed_Id10260 END AS body_paralysed_Id10260

 , CASE WHEN diff_sw_Id10261 = '1' THEN 'Y' 
        WHEN diff_sw_Id10261 = '2' THEN 'N' ELSE diff_sw_Id10261 END AS diff_sw_Id10261
 , CASE WHEN days_diffswal_num_Id10262 = 'DK' THEN 9998
		ELSE days_diffswal_num_Id10262 END AS days_diffswal_num_Id10262
 , CASE WHEN days_diffswal_DW = '1' THEN 'H'
		WHEN days_diffswal_DW = '2' THEN 'D'
		WHEN days_diffswal_DW = '3' THEN 'M'
		WHEN days_diffswal_DW = '4' THEN 'Y'
		ELSE days_diffswal_DW END AS days_diffswal_DW
		
 , CASE WHEN diff_swall_Id10263 = '1' THEN 'S'
		WHEN diff_swall_Id10263 = '2' THEN 'L'
		WHEN diff_swall_Id10263 = '3' THEN 'B'
		ELSE diff_swall_Id10263 END AS diff_swall_Id10263

 , CASE WHEN pain_swall_Id10264 = '1' THEN 'Y' 
        WHEN pain_swall_Id10264 = '2' THEN 'N' ELSE pain_swall_Id10264 END AS pain_swall_Id10264

 , CASE WHEN yellow_Id10265 = '1' THEN 'Y' 
        WHEN yellow_Id10265 = '2' THEN 'N' ELSE yellow_Id10265 END AS yellow_Id10265
 , CASE WHEN days_yellow_num_Id10266 = 'DK' THEN 9998
		ELSE days_yellow_num_Id10266 END AS days_yellow_num_Id10266
 , CASE WHEN days_yellow_DW = '1' THEN 'H'
		WHEN days_yellow_DW = '2' THEN 'D'
		WHEN days_yellow_DW = '3' THEN 'M'
		WHEN days_yellow_DW = '4' THEN 'Y'
		ELSE days_yellow_DW END AS days_yellow_DW

 , CASE WHEN hair_Id10267 = '1' THEN 'Y' 
        WHEN hair_Id10267 = '2' THEN 'N' ELSE hair_Id10267 END AS hair_Id10267

 , CASE WHEN anaemia_Id10268 = '1' THEN 'Y' 
        WHEN anaemia_Id10268 = '2' THEN 'N' ELSE anaemia_Id10268 END AS anaemia_Id10268

 , CASE WHEN eye_sunk_Id10269 = '1' THEN 'Y' 
        WHEN eye_sunk_Id10269 = '2' THEN 'N' ELSE eye_sunk_Id10269 END AS eye_sunk_Id10269

 , CASE WHEN exc_drink_Id10270 = '1' THEN 'Y' 
        WHEN exc_drink_Id10270 = '2' THEN 'N' ELSE exc_drink_Id10270 END AS exc_drink_Id10270

 , CASE WHEN fed_d1_Id10271 = '1' THEN 'Y' 
        WHEN fed_d1_Id10271 = '2' THEN 'N' ELSE fed_d1_Id10271 END AS fed_d1_Id10271

 , CASE WHEN sucklenom_Id10272 = '1' THEN 'Y' 
        WHEN sucklenom_Id10272 = '2' THEN 'N' ELSE sucklenom_Id10272 END AS sucklenom_Id10272

 , CASE WHEN st_suck_Id10273 = '1' THEN 'Y' 
        WHEN st_suck_Id10273 = '2' THEN 'N' ELSE st_suck_Id10273 END AS st_suck_Id10273
 , CASE WHEN stop_sulking_num_Id10274 = 'DK' THEN 9998
		ELSE stop_sulking_num_Id10274 END AS stop_sulking_num_Id10274
 
 , CASE WHEN stop_sulking_DW = '1' THEN 'H'
		WHEN stop_sulking_DW = '2' THEN 'D'
		WHEN stop_sulking_DW = '3' THEN 'M'
		WHEN stop_sulking_DW = '4' THEN 'Y'
		ELSE stop_sulking_DW END AS stop_sulking_DW
		

 , CASE WHEN conv_d1_Id10275 = '1' THEN 'Y' 
        WHEN conv_d1_Id10275 = '2' THEN 'N' ELSE conv_d1_Id10275 END AS conv_d1_Id10275

 , CASE WHEN conv_d2_Id10276 = '1' THEN 'Y' 
        WHEN conv_d2_Id10276 = '2' THEN 'N' ELSE conv_d2_Id10276 END AS conv_d2_Id10276

 , CASE WHEN arch_b_Id10277 = '1' THEN 'Y' 
        WHEN arch_b_Id10277 = '2' THEN 'N' ELSE arch_b_Id10277 END AS arch_b_Id10277

 , CASE WHEN Font_hi_Id10278 = '1' THEN 'Y' 
        WHEN Font_hi_Id10278 = '2' THEN 'N' ELSE Font_hi_Id10278 END AS Font_hi_Id10278

 , CASE WHEN Font_lo_Id10279 = '1' THEN 'Y' 
        WHEN Font_lo_Id10279 = '2' THEN 'N' ELSE Font_lo_Id10279 END AS Font_lo_Id10279

 , CASE WHEN unresponsive_Id10281 = '1' THEN 'Y' 
        WHEN unresponsive_Id10281 = '2' THEN 'N' ELSE unresponsive_Id10281 END AS unresponsive_Id10281

 , CASE WHEN unw_d1_Id10282 = '1' THEN 'Y' 
        WHEN unw_d1_Id10282 = '2' THEN 'N' ELSE unw_d1_Id10282 END AS unw_d1_Id10282

 , CASE WHEN unw_d2_Id10283 = '1' THEN 'Y' 
        WHEN unw_d2_Id10283 = '2' THEN 'N' ELSE unw_d2_Id10283 END AS unw_d2_Id10283

 , CASE WHEN cold_Id10284 = '1' THEN 'Y' 
        WHEN cold_Id10284 = '2' THEN 'N' ELSE cold_Id10284 END AS cold_Id10284
 , CASE WHEN babydays_num_Id10285 = 'DK' THEN 9998
		ELSE babydays_num_Id10285 END AS babydays_num_Id10285
 ,CASE WHEN babydays_DW = '1' THEN 'H'
	   WHEN babydays_DW = '2' THEN 'D'
	   WHEN babydays_DW = '3' THEN 'M'
	   WHEN babydays_DW = '4' THEN 'Y'
	   ELSE babydays_DW END AS babydays_DW

 , CASE WHEN lethargic_Id10286 = '1' THEN 'Y' 
        WHEN lethargic_Id10286 = '2' THEN 'N' ELSE lethargic_Id10286 END AS lethargic_Id10286

 , CASE WHEN umbinf_Id10287 = '1' THEN 'Y' 
        WHEN umbinf_Id10287 = '2' THEN 'N' ELSE umbinf_Id10287 END AS umbinf_Id10287

 , CASE WHEN skin_ulcer_Id10288 = '1' THEN 'Y' 
        WHEN skin_ulcer_Id10288 = '2' THEN 'N' ELSE skin_ulcer_Id10288 END AS skin_ulcer_Id10288

 , CASE WHEN b_yellow_Id10289 = '1' THEN 'Y' 
        WHEN b_yellow_Id10289 = '2' THEN 'N' ELSE b_yellow_Id10289 END AS b_yellow_Id10289

 , CASE WHEN baby_healthy_Id10290 = '1' THEN 'Y' 
        WHEN baby_healthy_Id10290 = '2' THEN 'N' ELSE baby_healthy_Id10290 END AS baby_healthy_Id10290

 , CASE WHEN tuber_samehouse = '1' THEN 'Y' 
        WHEN tuber_samehouse = '2' THEN 'N' ELSE tuber_samehouse END AS tuber_samehouse

 , CASE WHEN sickly = '1' THEN 'Y' 
        WHEN sickly = '2' THEN 'N' ELSE sickly END AS sickly

 , CASE WHEN regress = '1' THEN 'Y' 
        WHEN regress = '2' THEN 'N' ELSE regress END AS regress

 , CASE WHEN bottlefed = '1' THEN 'Y' 
        WHEN bottlefed = '2' THEN 'N' ELSE bottlefed END AS bottlefed

 , CASE WHEN breastfed = '1' THEN 'Y' 
        WHEN breastfed = '2' THEN 'N' ELSE breastfed END AS breastfed

 , CASE WHEN swe_breast_Id10294 = '1' THEN 'Y' 
        WHEN swe_breast_Id10294 = '2' THEN 'N' ELSE swe_breast_Id10294 END AS swe_breast_Id10294

 , CASE WHEN breast_ulcers_Id10295 = '1' THEN 'Y' 
        WHEN breast_ulcers_Id10295 = '2' THEN 'N' ELSE breast_ulcers_Id10295 END AS breast_ulcers_Id10295

 , CASE WHEN menstruate_Id10296 = '1' THEN 'Y' 
        WHEN menstruate_Id10296 = '2' THEN 'N' ELSE menstruate_Id10296 END AS menstruate_Id10296

 , CASE WHEN vb_bet_Id10297 = '1' THEN 'Y' 
        WHEN vb_bet_Id10297 = '2' THEN 'N' ELSE vb_bet_Id10297 END AS vb_bet_Id10297

 , CASE WHEN vb_excessive_Id10298 = '1' THEN 'Y' 
        WHEN vb_excessive_Id10298 = '2' THEN 'N' ELSE vb_excessive_Id10298 END AS vb_excessive_Id10298

 , CASE WHEN vb_men_Id10299 = '1' THEN 'Y' 
        WHEN vb_men_Id10299 = '2' THEN 'N' ELSE vb_men_Id10299 END AS vb_men_Id10299

 , CASE WHEN vb_after_Id10300 = '1' THEN 'Y' 
        WHEN vb_after_Id10300 = '2' THEN 'N' ELSE vb_after_Id10300 END AS vb_after_Id10300

 , CASE WHEN vb_prior_death_Id10301 = '1' THEN 'Y' 
        WHEN vb_prior_death_Id10301 = '2' THEN 'N' ELSE vb_prior_death_Id10301 END AS vb_prior_death_Id10301

 , CASE WHEN period_overdue_Id10302 = '1' THEN 'Y' 
        WHEN period_overdue_Id10302 = '2' THEN 'N' ELSE period_overdue_Id10302 END AS period_overdue_Id10302
 ,CASE WHEN how_overdue_num_Id10303 = 'DK' THEN 9998
	  ELSE how_overdue_num_Id10303 END  AS how_overdue_num_Id10303
 ,CASE WHEN how_overdue_DW = '1' THEN 'H'
	   WHEN how_overdue_DW = '2' THEN 'D'
	   WHEN how_overdue_DW = '3' THEN 'M'
	   WHEN how_overdue_DW = '4' THEN 'Y'
	   ELSE how_overdue_DW END AS how_overdue_DW

 , CASE WHEN belly_pain_Id10304 = '1' THEN 'Y' 
        WHEN belly_pain_Id10304 = '2' THEN 'N' ELSE belly_pain_Id10304 END AS belly_pain_Id10304

 , CASE WHEN pregnant_Id10305 = '1' THEN 'Y' 
        WHEN pregnant_Id10305 = '2' THEN 'N' ELSE pregnant_Id10305 END AS pregnant_Id10305

 , CASE WHEN del_6wks_Id10306 = '1' THEN 'Y' 
        WHEN del_6wks_Id10306 = '2' THEN 'N' ELSE del_6wks_Id10306 END AS del_6wks_Id10306

 , CASE WHEN days_pregnant_Id10307 = '1' THEN 'Y' 
        WHEN days_pregnant_Id10307 = '2' THEN 'N' ELSE days_pregnant_Id10307 END AS days_pregnant_Id10307

 , CASE WHEN year_pregnant_Id10308 = '1' THEN 'Y' 
        WHEN year_pregnant_Id10308 = '2' THEN 'N' ELSE year_pregnant_Id10308 END AS year_pregnant_Id10308
 , CASE WHEN months_pregnant_Id10309 = 'DK' THEN '9998'
		ELSE CAST(months_pregnant_Id10309 AS varchar) END AS months_pregnant_Id10309
 , CASE WHEN months_pregnant_DW = '1' THEN 'H'
		WHEN months_pregnant_DW = '2' THEN 'D'
		WHEN months_pregnant_DW = '3' THEN 'M'
		WHEN months_pregnant_DW = '4' THEN 'Y'
		ELSE months_pregnant_DW END AS months_pregnant_DW

 , CASE WHEN Not_preg_Id10310 = '1' THEN 'Y' 
        WHEN Not_preg_Id10310 = '2' THEN 'N' ELSE Not_preg_Id10310 END AS Not_preg_Id10310

 , CASE WHEN die_labour_Id10312 = '1' THEN 'Y' 
        WHEN die_labour_Id10312 = '2' THEN 'N' ELSE die_labour_Id10312 END AS die_labour_Id10312

 , CASE WHEN Died_lab_Id10313 = '1' THEN 'Y' 
        WHEN Died_lab_Id10313 = '2' THEN 'N' ELSE Died_lab_Id10313 END AS Died_lab_Id10313


 , CASE WHEN death_24_Id10314 = '1' THEN 'Y' 
        WHEN death_24_Id10314 = '2' THEN 'N' ELSE death_24_Id10314 END AS death_24_Id10314


 , CASE WHEN child_birth_Id10315 = '1' THEN 'Y' 
        WHEN child_birth_Id10315 = '2' THEN 'N' ELSE child_birth_Id10315 END AS child_birth_Id10315


 , CASE WHEN baby_al_Id10316 = '1' THEN 'Y' 
        WHEN baby_al_Id10316 = '2' THEN 'N' ELSE baby_al_Id10316 END AS baby_al_Id10316

 , CASE WHEN multip_Id10317 = '1' THEN 'Y' 
        WHEN multip_Id10317 = '2' THEN 'N' ELSE multip_Id10317 END AS multip_Id10317

 , CASE WHEN beast_fd_Id10318 = '1' THEN 'Y' 
        WHEN beast_fd_Id10318 = '2' THEN 'N' ELSE beast_fd_Id10318 END AS beast_fd_Id10318
 , CASE WHEN num_birth_Id10319 = 'DK' THEN '9998'
		ELSE CAST(num_birth_Id10319 AS varchar) END AS num_birth_Id10319

 , CASE WHEN cs_prev_Id10320 = '1' THEN 'Y' 
        WHEN cs_prev_Id10320 = '2' THEN 'N' ELSE cs_prev_Id10320 END AS cs_prev_Id10320

 , CASE WHEN bpr_preg_Id10321 = '1' THEN 'Y' 
        WHEN bpr_preg_Id10321 = '2' THEN 'N' ELSE bpr_preg_Id10321 END AS bpr_preg_Id10321

 , CASE WHEN disch_sm_Id10322 = '1' THEN 'Y' 
        WHEN disch_sm_Id10322 = '2' THEN 'N' ELSE disch_sm_Id10322 END AS disch_sm_Id10322

 , CASE WHEN fit_preg_Id10323 = '1' THEN 'Y' 
        WHEN fit_preg_Id10323 = '2' THEN 'N' ELSE fit_preg_Id10323 END AS fit_preg_Id10323

 , CASE WHEN vis_bl_Id10324 = '1' THEN 'Y' 
        WHEN vis_bl_Id10324 = '2' THEN 'N' ELSE vis_bl_Id10324 END AS vis_bl_Id10324

 , CASE WHEN Bleed_Id10325 = '1' THEN 'Y' 
        WHEN Bleed_Id10325 = '2' THEN 'N' ELSE Bleed_Id10325 END AS Bleed_Id10325

 , CASE WHEN e_bleed_Id10326 = '1' THEN 'Y' 
        WHEN e_bleed_Id10326 = '2' THEN 'N' ELSE e_bleed_Id10326 END AS e_bleed_Id10326

 , CASE WHEN s_bleed_Id10327 = '1' THEN 'Y' 
        WHEN s_bleed_Id10327 = '2' THEN 'N' ELSE s_bleed_Id10327 END AS s_bleed_Id10327
 
 , CASE WHEN d_bleed_Id10328 = '1' THEN  'Y'
		WHEN d_bleed_Id10328 = '2' THEN 'N'
		ELSE d_bleed_Id10328 END AS d_bleed_Id10328
 
 , CASE WHEN p_bleed_Id10329 = '1' THEN 'Y'
		WHEN p_bleed_Id10329 = '2' THEN 'N'
		ELSE p_bleed_Id10329 END AS p_bleed_Id10329
 
 , CASE WHEN placenta_r_Id10330 = '1' THEN 'Y'
		WHEN placenta_r_Id10330 = '2' THEN 'N'
		ELSE placenta_r_Id10330 END AS placenta_r_Id10330
 
 , CASE WHEN baby_pos_Id10331 = '1' THEN 'N'
		WHEN baby_pos_Id10331 = '2' THEN 'Y'
		ELSE baby_pos_Id10331 END AS baby_pos_Id10331
 
 , CASE WHEN hours_labour_Id10332 = 'DK' THEN 9998
		ELSE hours_labour_Id10332 END AS hours_labour_Id10332

 , CASE WHEN term_att_Id10333 = '1' THEN 'Y' 
        WHEN term_att_Id10333 = '2' THEN 'N' ELSE term_att_Id10333 END AS term_att_Id10333

 , CASE WHEN abort_Id10334 = '1' THEN 'Y' 
        WHEN abort_Id10334 = '2' THEN 'N' ELSE abort_Id10334 END AS abort_Id10334

 , CASE WHEN die_abortion_Id10335 = '1' THEN 'Y' 
        WHEN die_abortion_Id10335 = '2' THEN 'N' ELSE die_abortion_Id10335 END AS die_abortion_Id10335

 , CASE WHEN weeks_abortion_Id10336 = '1' THEN 'Y' 
        WHEN weeks_abortion_Id10336 = '2' THEN 'N' ELSE weeks_abortion_Id10336 END AS weeks_abortion_Id10336
 , CASE WHEN Born_loc_Id10337 = '1' THEN '+'
		WHEN Born_loc_Id10337 = '2' THEN 'E'
		WHEN Born_loc_Id10337 = '3' THEN 'H'
		WHEN Born_loc_Id10337 = '4' THEN 'T'
		WHEN Born_loc_Id10337 = '5' THEN 'O'
		ELSE Born_loc_Id10337 END AS Born_loc_Id10337

 , CASE WHEN Del_fac_id10337 = '1' THEN 'Y' 
        WHEN Del_fac_id10337 = '2' THEN 'N' ELSE Del_fac_id10337 END AS Del_fac_id10337

 , CASE WHEN Del_home_id10337 = '1' THEN 'Y' 
        WHEN Del_home_id10337 = '2' THEN 'N' ELSE Del_home_id10337 END AS Del_home_id10337

 , CASE WHEN Del_else_id10360 = '1' THEN 'Y' 
        WHEN Del_else_id10360 = '2' THEN 'N' ELSE Del_else_id10360 END AS Del_else_id10360
 , CASE WHEN prof_ass_Id10338 = '1' THEN 'Y'
		WHEN prof_ass_Id10338 = '2' THEN 'N'
		ELSE prof_ass_Id10338 END AS prof_ass_Id10338
 , CASE WHEN who_delivered_Id10339 = '1' THEN 'traditional_healer'
		WHEN who_delivered_Id10339 = '2' THEN 'homeopath'
		WHEN who_delivered_Id10339 = '3' THEN 'religious_leader'
		WHEN who_delivered_Id10339 = '4' THEN 'government_hospital'
		WHEN who_delivered_Id10339 = '5' THEN 'grvenHlth_orClinic'
		WHEN who_delivered_Id10339 = '6' THEN 'provate_hospital'
		WHEN who_delivered_Id10339 = '7' THEN 'community_based'
		WHEN who_delivered_Id10339 = '8' THEN 'trained_birth_attendent'
		WHEN who_delivered_Id10339 = '9' THEN 'private_phsician'
		WHEN who_delivered_Id10339 = '10' THEN 'relative_friend'
		WHEN who_delivered_Id10339 = '11' THEN 'pharmacy'
		WHEN who_delivered_Id10339 = '12' THEN 'None'
		ELSE who_delivered_Id10339 END AS who_delivered_Id10339
		
 , CASE WHEN born_trans = '1' THEN 'W'
		WHEN born_trans = '2' THEN 'B'
		WHEN born_trans = '3' THEN 'T'
		WHEN born_trans = '4' THEN 'I'
		WHEN born_trans = '5' THEN 'E'
		WHEN born_trans = '6' THEN 'A'
		WHEN born_trans = '7' THEN 'O'
		ELSE born_trans END AS born_trans
		
 , born_trans_other

 , CASE WHEN hyster_Id10340 = '1' THEN 'Y' 
        WHEN hyster_Id10340 = '2' THEN 'N' ELSE hyster_Id10340 END AS hyster_Id10340
 , CASE WHEN del_norm_Id10342 = '1' THEN 'Y'
		WHEN del_norm_Id10342 = '2' THEN 'N'
		ELSE del_norm_Id10342 END AS del_norm_Id10342
 , CASE WHEN Del_ass_Id10343 = '1' THEN 'Y'
		WHEN Del_ass_Id10343 = '2' THEN 'N'
		ELSE Del_ass_Id10343 END AS Del_ass_Id10343
 ,CASE WHEN Del_cs_Id10344 = '1' THEN 'Y'
	   WHEN Del_cs_Id10344 = '2' THEN 'N'
	   ELSE Del_cs_Id10344 END AS Del_cs_Id10344
 , CASE WHEN mon_early_Id10347 = '1' THEN 'Y'
		WHEN mon_early_Id10347 = '2' THEN 'N'
		ELSE mon_early_Id10347 END AS mon_early_Id10347
 , CASE WHEN Trans_nar = '1' THEN 'Y' 
		WHEN Trans_nar = '2' THEN 'N'
		ELSE Trans_nar END AS Trans_nar
 , Imp_nar

 , CASE WHEN ANC_care = '1' THEN 'Y' 
        WHEN ANC_care = '2' THEN 'N' ELSE ANC_care END AS ANC_care
 , CASE WHEN ANC_attendence = 'DK' THEN 9998
		ELSE ANC_attendence END AS ANC_attendence
 , CASE WHEN ANCfirst_visit = 'DK' THEN 9998
		ELSE ANCfirst_visit END AS ANCfirst_visit
 , CASE WHEN pmtct = '1' THEN 'Y'
		WHEN pmtct = '2' THEN 'N'
		ELSE pmtct END AS pmtct

 , CASE WHEN preg_alc = '1' THEN 'Y' 
        WHEN preg_alc = '2' THEN 'N' ELSE preg_alc END AS preg_alc

 , CASE WHEN preg_cig = '1' THEN 'Y' 
        WHEN preg_cig = '2' THEN 'N' ELSE preg_cig END AS preg_cig

 , CASE WHEN preg_ill_before = '1' THEN 'Y' 
        WHEN preg_ill_before = '2' THEN 'N' ELSE preg_ill_before END AS preg_ill_before
 , preg_ill_specify

 , CASE WHEN preg_ill_receive_treatm = '1' THEN 'Y' 
        WHEN preg_ill_receive_treatm = '2' THEN 'N' ELSE preg_ill_receive_treatm END AS preg_ill_receive_treatm
 , preg_ill_treatment

 , CASE WHEN twin_Id10354 = '1' THEN 'Y' 
        WHEN twin_Id10354 = '2' THEN 'N' ELSE twin_Id10354 END AS twin_Id10354

 ,CASE WHEN birth_order_Id10355 = '1' THEN 'first'
	   WHEN birth_order_Id10355 = '2' THEN 'second_or_later'
	   ELSE birth_order_Id10355 END AS birth_order_Id10355

 , CASE WHEN mother_alive_Id10356 = '1' THEN 'Y' 
        WHEN mother_alive_Id10356 = '2' THEN 'N' ELSE mother_alive_Id10356 END AS mother_alive_Id10356
 , CASE WHEN when_mom_die_Id10357 = '1' THEN 'D'
		WHEN when_mom_die_Id10357 = '2' THEN 'A'
		ELSE when_mom_die_Id10357 END AS when_mom_die_Id10357
		
 , CASE WHEN die_Id10358_Id10359 = 'DK' THEN 9998
        ELSE die_Id10358_Id10359 END AS die_Id10358_Id10359
 , CASE WHEN die_duration = 'DK' THEN 9998
		ELSE die_duration END AS die_duration
 , CASE WHEN mother_healthy = '1' THEN 'Y' 
        WHEN mother_healthy = '2' THEN 'N' ELSE mother_healthy END AS mother_healthy
 , mother_sickness

 , CASE WHEN father_alive = '1' THEN 'Y' 
        WHEN father_alive = '2' THEN 'N' ELSE father_alive END AS father_alive

 , CASE WHEN father_healthy = '1' THEN 'Y' 
        WHEN father_healthy = '2' THEN 'N' ELSE father_healthy END AS father_healthy
 , father_sickness
 , CASE WHEN whereborn_Id10360 = '1' THEN '+'
		WHEN whereborn_Id10360 = '2' THEN 'E'
		WHEN whereborn_Id10360 = '3' THEN 'H'
		WHEN whereborn_Id10360 = '4' THEN 'T'
		WHEN whereborn_Id10360 = '5' THEN 'O'
		ELSE whereborn_Id10360 END AS whereborn_Id10360

 , CASE WHEN mom_assist_Id10361 = '1' THEN 'Y' 
        WHEN mom_assist_Id10361 = '2' THEN 'N' ELSE mom_assist_Id10361 END AS mom_assist_Id10361

 , CASE WHEN unusual_size_Id10362 = '1' THEN 'Y' 
        WHEN unusual_size_Id10362 = '2' THEN 'N' ELSE unusual_size_Id10362 END AS unusual_size_Id10362

 , CASE WHEN born_small_Id10363 = '1' THEN 'Y' 
        WHEN born_small_Id10363 = '2' THEN 'N' ELSE born_small_Id10363 END AS born_small_Id10363

 , CASE WHEN baby_smaller_Id10364 = '1' THEN 'Y' 
        WHEN baby_smaller_Id10364 = '2' THEN 'N' ELSE baby_smaller_Id10364 END AS baby_smaller_Id10364


 , CASE WHEN born_big_Id10365 = '1' THEN 'Y' 
        WHEN born_big_Id10365 = '2' THEN 'N' ELSE born_big_Id10365 END AS born_big_Id10365
 , CASE WHEN baby_weight_Id10366 = 'DK' THEN 9998.
		ELSE baby_weight_Id10366 END AS baby_weight_Id10366
 , CASE WHEN preg_months_Id10367 = 'DK' THEN  9998
		ELSE preg_months_Id10367 END AS preg_months_Id10367

 , CASE WHEN latepreg_compli_Id10368 = '1' THEN 'Y' 
        WHEN latepreg_compli_Id10368 = '2' THEN 'N' ELSE latepreg_compli_Id10368 END AS latepreg_compli_Id10368

 , CASE WHEN compli_Id10369 = '1' THEN 'Y' 
        WHEN compli_Id10369 = '2' THEN 'N' ELSE compli_Id10369 END AS compli_Id10369

 , CASE WHEN born_malf_Id10370 = '1' THEN 'Y' 
        WHEN born_malf_Id10370 = '2' THEN 'N' ELSE born_malf_Id10370 END AS born_malf_Id10370

 , CASE WHEN mlf_bk_Id10371 = '1' THEN 'Y' 
        WHEN mlf_bk_Id10371 = '2' THEN 'N' ELSE mlf_bk_Id10371 END AS mlf_bk_Id10371

 , CASE WHEN large_head_Id10372 = '1' THEN 'Y' 
        WHEN large_head_Id10372 = '2' THEN 'N' ELSE large_head_Id10372 END AS large_head_Id10372

 , CASE WHEN small_head_Id10373 = '1' THEN 'Y' 
        WHEN small_head_Id10373 = '2' THEN 'N' ELSE small_head_Id10373 END AS small_head_Id10373

 , CASE WHEN baby_moves_Id10376 = '1' THEN 'Y' 
        WHEN baby_moves_Id10376 = '2' THEN 'N' ELSE baby_moves_Id10376 END AS baby_moves_Id10376


  , CASE WHEN move_lb_Id10377 = '1' THEN 'Y' 
        WHEN move_lb_Id10377 = '2' THEN 'N' ELSE move_lb_Id10377 END AS move_lb_Id10377


  , CASE WHEN ab_size_id10362 = '1' THEN 'Y' 
        WHEN ab_size_id10362 = '2' THEN 'N' ELSE ab_size_id10362 END AS ab_size_id10362

  , CASE WHEN mlf_lh_id10372 = '1' THEN 'Y' 
        WHEN mlf_lh_id10372 = '2' THEN 'N' ELSE mlf_lh_id10372 END AS mlf_lh_id10372

  , CASE WHEN mlf_shi_d10373 = '1' THEN 'Y' 
        WHEN mlf_shi_d10373 = '2' THEN 'N' ELSE mlf_shi_d10373 END AS mlf_shi_d10373
 ,CASE WHEN move_dur_Id10379 = 'DK'  THEN  9999
	   ELSE move_dur_Id10379 END 	AS move_dur_Id10379
	   
 ,CASE WHEN move_dur_DW_Id10380='1' THEN 'H'
	   WHEN move_dur_DW_Id10380 = '2'THEN 'D'
	   ELSE move_dur_DW_Id10380 END AS move_dur_DW_Id10380
	   
 ,CASE WHEN labour_duration_quantity_Id10382 = 'DK' THEN 9998
	   ELSE labour_duration_quantity_Id10382 END AS labour_duration_quantity_Id10382

  , CASE WHEN Lab_24_Id10383 = '1' THEN 'Y' 
        WHEN Lab_24_Id10383 = '2' THEN 'N' ELSE Lab_24_Id10383 END AS Lab_24_Id10383


 , CASE WHEN foul_smelling_Id10384 = '1' THEN 'Y' 
        WHEN foul_smelling_Id10384 = '2' THEN 'N' ELSE foul_smelling_Id10384 
        END AS foul_smelling_Id10384

 ,CASE WHEN water_color_Id10385 = '1' THEN 'G'
	   WHEN water_color_Id10385 = '2' THEN 'B'
	   WHEN water_color_Id10385 = '3' THEN 'C'
	   WHEN water_color_Id10385 = '4' THEN 'O'
	   ELSE water_color_Id10385 END AS  water_color_Id10385

 , CASE WHEN del_norm2_Id10387 = '1' THEN 'Y' 
        WHEN del_norm2_Id10387 = '2' THEN 'N' ELSE del_norm2_Id10387 END AS del_norm2_Id10387


  , CASE WHEN Del_ass2_Id10388 = '1' THEN 'Y' 
        WHEN Del_ass2_Id10388 = '2' THEN 'N' ELSE Del_ass2_Id10388 END AS Del_ass2_Id10388


  , CASE WHEN Del_cs2_Id10389 = '1' THEN 'Y' 
        WHEN Del_cs2_Id10389 = '2' THEN 'N' ELSE Del_cs2_Id10389 END AS Del_cs2_Id10389


 , CASE WHEN vaccinations_Id10391 = '1' THEN 'Y' 
        WHEN vaccinations_Id10391 = '2' THEN 'N' ELSE vaccinations_Id10391 END AS vaccinations_Id10391

 ,CASE WHEN hmany_doses_Id10392 = 'DK' THEN 9998
	   ELSE hmany_doses_Id10392 END AS hmany_doses_Id10392

 , CASE WHEN mttv_Id10393 = '1' THEN 'Y' 
        WHEN mttv_Id10393 = '2' THEN 'N' ELSE mttv_Id10393 END AS mttv_Id10393

 ,CASE WHEN num_birth2_Id10394 = 'DK' THEN 9998
	   ELSE num_birth2_Id10394 END AS num_birth2_Id10394

 , CASE WHEN mom_fever_Id10395 = '1' THEN 'Y' 
        WHEN mom_fever_Id10395 = '2' THEN 'N' ELSE mom_fever_Id10395 END AS mom_fever_Id10395


 , CASE WHEN mom_hbp_Id10396 = '1' THEN 'Y' 
        WHEN mom_hbp_Id10396 = '2' THEN 'N' ELSE mom_hbp_Id10396 END AS mom_hbp_Id10396

, CASE WHEN diabete_Id10397 = '1' THEN 'Y' 
        WHEN diabete_Id10397 = '2' THEN 'N' ELSE diabete_Id10397 END AS diabete_Id10397


 , CASE WHEN disch_sm2_Id10398 = '1' THEN 'Y' 
        WHEN disch_sm2_Id10398 = '2' THEN 'N' ELSE disch_sm2_Id10398 END AS disch_sm2_Id10398


 , CASE WHEN fit_preg2_Id10399 = '1' THEN 'Y' 
        WHEN fit_preg2_Id10399 = '2' THEN 'N' ELSE fit_preg2_Id10399 END AS fit_preg2_Id10399


 , CASE WHEN vis_bl2_Id10400 = '1' THEN 'Y' 
        WHEN vis_bl2_Id10400 = '2' THEN 'N' ELSE vis_bl2_Id10400 END AS vis_bl2_Id10400

, CASE WHEN anaemiaa_Id10401 = '1' THEN 'Y' 
        WHEN anaemiaa_Id10401 = '2' THEN 'N' ELSE anaemiaa_Id10401 END AS anaemiaa_Id10401

 , CASE WHEN s_bleed_Id10402 = '1' THEN 'Y' 
        WHEN s_bleed_Id10402 = '2' THEN 'N' ELSE s_bleed_Id10402 END AS s_bleed_Id10402


, CASE WHEN ab_posit_Id10403 = '1' THEN 'Y' 
        WHEN ab_posit_Id10403 = '2' THEN 'N' ELSE ab_posit_Id10403 END AS ab_posit_Id10403


 , CASE WHEN cord_Id10404 = '1' THEN 'Y' 
        WHEN cord_Id10404 = '2' THEN 'N' ELSE cord_Id10404 END AS cord_Id10404


, CASE WHEN umbcord_Id10405 = '1' THEN 'Y' 
        WHEN umbcord_Id10405 = '2' THEN 'N' ELSE umbcord_Id10405 END AS umbcord_Id10405

 , CASE WHEN cyanosis_Id10406 = '1' THEN 'Y' 
        WHEN cyanosis_Id10406 = '2' THEN 'N' ELSE cyanosis_Id10406 END AS cyanosis_Id10406


 , CASE WHEN alcohol_Id10411 = '1' THEN 'Y' 
        WHEN alcohol_Id10411 = '2' THEN 'N' ELSE alcohol_Id10411 END AS alcohol_Id10411
 , CASE WHEN days_week_drink = 'DK' THEN '9998'
		ELSE CAST(days_week_drink AS varchar) END AS days_week_drink
 , drink_one_day
 , CASE WHEN years_drink = 'DK' THEN '9998'
		ELSE CAST(years_drink AS varchar) END AS years_drink
 , CASE WHEN alcohol_type_drunk = '1' THEN 'A'
		WHEN alcohol_type_drunk = '2' THEN 'W'
		WHEN alcohol_type_drunk = '3' THEN 'T'
		WHEN alcohol_type_drunk = '4' THEN 'O'
		ELSE alcohol_type_drunk END AS alcohol_type_drunk
 ,Alcohol_type_drunk_other AS Alcohol_type_drunk_other

 , CASE WHEN alc_job = '1' THEN 'Y' 
        WHEN alc_job = '2' THEN 'N' ELSE alc_job END AS alc_job

 , CASE WHEN alc_acc = '1' THEN 'Y' 
        WHEN alc_acc = '2' THEN 'N' ELSE alc_acc END AS alc_acc

 , CASE WHEN alc_fight = '1' THEN 'Y' 
        WHEN alc_fight = '2' THEN 'N' ELSE alc_fight END AS alc_fight

 , CASE WHEN drunk = '1' THEN 'Y' 
        WHEN drunk = '2' THEN 'N' ELSE drunk END AS drunk

 , CASE WHEN drunk_ext = '1' THEN 'Y' 
        WHEN drunk_ext = '2' THEN 'N' ELSE drunk_ext END AS drunk_ext

 , CASE WHEN tobacco_Id10412 = '1' THEN 'Y' 
        WHEN tobacco_Id10412 = '2' THEN 'N' ELSE tobacco_Id10412 END AS tobacco_Id10412

 , CASE WHEN smoking_Id10413 = '1' THEN 'Y' 
        WHEN smoking_Id10413 = '2' THEN 'N' ELSE smoking_Id10413 END AS smoking_Id10413
 , CASE WHEN Tobacco_type_Id10414 = '1' THEN 'cigarettes'
		WHEN Tobacco_type_Id10414 = '2' THEN 'pipe'
		WHEN Tobacco_type_Id10414 = '3' THEN 'local_from_of_tobacco'
		WHEN Tobacco_type_Id10414 = '4' THEN 'other'
		ELSE Tobacco_type_Id10414 END AS Tobacco_type_Id10414
 , CASE WHEN smk_num_Id10415 = 'DK' THEN '9998'
		ELSE CAST(smk_num_Id10415 AS VARCHAR) END AS smk_num_Id10415
 , CASE WHEN smk_last_WM = 'DK' THEN 9998
		ELSE smk_last_WM END AS smk_last_WM
 , CASE WHEN smk_last_num = '1' THEN 'H'
		WHEN smk_last_num = '2' THEN 'D'
		WHEN smk_last_num = '3' THEN 'M'
		WHEN smk_last_num = '4' THEN 'Y'
		ELSE smk_last_num END AS smk_last_num
 , CASE WHEN smk_year = 'DK' THEN 9998
		ELSE smk_year END AS smk_year

 , CASE WHEN drugs = '1' THEN 'Y' 
        WHEN drugs = '2' THEN 'N' ELSE drugs END AS drugs
 , drg_type

 , CASE WHEN active = '1' THEN 'Y' 
        WHEN active = '2' THEN 'N' ELSE active END AS active

 , CASE WHEN struggle = '1' THEN 'Y' 
        WHEN struggle = '2' THEN 'N' ELSE struggle END AS struggle

 , CASE WHEN sedet = '1' THEN 'Y' 
        WHEN sedet = '2' THEN 'N' ELSE sedet END AS sedet

 , CASE WHEN immob = '1' THEN 'Y' 
        WHEN immob = '2' THEN 'N' ELSE immob END AS immob
 , mine
 , CASE WHEN mine_type = '1' THEN 'G'
		WHEN mine_type = '2' THEN 'A'
		ELSE mine_type END AS mine_type
 , mine_name

 , CASE WHEN mine_comp = '1' THEN 'Y' 
        WHEN mine_comp = '2' THEN 'N' ELSE mine_comp END AS mine_comp
 , CASE WHEN mine_dur = 'DK' THEN 9998
		ELSE Mine_dur END AS Mine_dur
 , mine_tim
 , order_illness_t1
 , order_illness_1_t1
 , CASE WHEN timing_order_illness_1_t1 = 'DK' THEN 9998
		ELSE timing_order_illness_1_t1 END AS timing_order_illness_1_t1
 , order_illness_2_t1
 , CASE WHEN timing_order_illness_2_t1 = 'DK' THEN 9998
		ELSE timing_order_illness_2_t1 END AS timing_order_illness_2_t1
 , order_illness_3_t1
 , CASE WHEN timing_order_illness_3_t1 = 'DK' THEN 9998
		ELSE timing_order_illness_3_t1 END AS timing_order_illness_3_t1
 , order_illness_4_t1
 , CASE WHEN timing_order_illness_4_t1 = 'DK' THEN 9998
		ELSE timing_order_illness_4_t1 END AS timing_order_illness_4_t1
 , CASE WHEN first_symptom = 'DK' THEN first_symptom
		ELSE first_symptom END AS first_symptom

 , CASE WHEN treat_Id10418 = '1' THEN 'Y' 
        WHEN treat_Id10418 = '2' THEN 'N' ELSE treat_Id10418 END AS treat_Id10418

 , CASE WHEN receiv_biotreatment = '1' THEN 'Y' 
        WHEN receiv_biotreatment = '2' THEN 'N' ELSE receiv_biotreatment END AS receiv_biotreatment
 , biomedi_received
 , CASE WHEN child_home = '1' THEN 'No home treatment' 
		WHEN child_home = '2' THEN 'With western medicine'
		WHEN child_home = '3' THEN 'With herbs/tradional medicine'		
        WHEN child_home = '4' THEN 'Other' ELSE child_home END AS child_home
 , specify_child_home
 ,CASE WHEN treatment_type = '1' THEN 'Malaria_drug'
	   WHEN treatment_type = '2' THEN 'Antibiotic'
	   WHEN treatment_type = '3' THEN 'Paracentamol'
	   WHEN treatment_type = '4' THEN 'Other'
	   ELSE treatment_type END AS  treatment_type
 ,specifyTreament AS  specifyTreament
 , treatment_otherfeeds
 , CASE WHEN [time] = 'DK' THEN 9998
		ELSE [time] END AS [time]

 , CASE WHEN t_ort_Id10419 = '1' THEN 'Y' 
        WHEN t_ort_Id10419 = '2' THEN 'N' ELSE t_ort_Id10419 END AS t_ort_Id10419

 , CASE WHEN t_iv_Id10420 = '1' THEN 'Y' 
        WHEN t_iv_Id10420 = '2' THEN 'N' ELSE t_iv_Id10420 END AS t_iv_Id10420

 , CASE WHEN blood_tr_Id10421 = '1' THEN 'Y' 
        WHEN blood_tr_Id10421 = '2' THEN 'N' ELSE blood_tr_Id10421 END AS blood_tr_Id10421

 , CASE WHEN t_ngt_Id10422 = '1' THEN 'Y' 
        WHEN t_ngt_Id10422 = '2' THEN 'N' ELSE t_ngt_Id10422 END AS t_ngt_Id10422

 , CASE WHEN antib_i_Id10423 = '1' THEN 'Y' 
        WHEN antib_i_Id10423 = '2' THEN 'N' ELSE antib_i_Id10423 END AS antib_i_Id10423

 , CASE WHEN art_Id10424 = '1' THEN 'Y' 
        WHEN art_Id10424 = '2' THEN 'N' ELSE art_Id10424 END AS art_Id10424

 , CASE WHEN surgery_Id10425 = '1' THEN 'Y' 
        WHEN surgery_Id10425 = '2' THEN 'N' ELSE surgery_Id10425 END AS surgery_Id10425

 , CASE WHEN sur_1m_Id10426 = '1' THEN 'Y' 
        WHEN sur_1m_Id10426 = '2' THEN 'N' ELSE sur_1m_Id10426 END AS sur_1m_Id10426


 , CASE WHEN disch_Id10427 = '1' THEN 'Y' 
        WHEN disch_Id10427 = '2' THEN 'N' ELSE disch_Id10427 END AS disch_Id10427

 , CASE WHEN receive_imm_Id10428 = '1' THEN 'Y' 
        WHEN receive_imm_Id10428 = '2' THEN 'N' ELSE receive_imm_Id10428 END AS receive_imm_Id10428

 , CASE WHEN Vaccin_Id10429 = '1' THEN 'Y' 
        WHEN Vaccin_Id10429 = '2' THEN 'N' ELSE Vaccin_Id10429 END AS Vaccin_Id10429

 , CASE WHEN hv_vaccard = '1' THEN 'Y' 
        WHEN hv_vaccard = '2' THEN 'N' ELSE hv_vaccard END AS hv_vaccard

 , CASE WHEN vacc_card_Id10430 = '1' THEN 'Y' 
        WHEN vacc_card_Id10430 = '2' THEN 'N' ELSE vacc_card_Id10430 END AS vacc_card_Id10430
 ,CASE WHEN Immunisation_BCG_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_BCG_Id10431 END AS Immunisation_BCG_Id10431
 ,CASE WHEN Immunisation_OPV_Polio_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_OPV_Polio_Id10431 END AS Immunisation_OPV_Polio_Id10431
 ,CASE WHEN Immunisation_Dtap_IPVHib_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_Dtap_IPVHib_Id10431 END AS Immunisation_Dtap_IPVHib_Id10431
 ,CASE WHEN Immunisation_RV_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_RV_Id10431  END AS Immunisation_RV_Id10431
 ,CASE WHEN Immunisation_HepB_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_HepB_Id10431 END  AS Immunisation_HepB_Id10431
 ,CASE WHEN Immunisation_PCV_Id10431 = 'DK' THEN 9998
	   ELSE Immunisation_PCV_Id10431 END AS Immunisation_PCV_Id10431
 ,CASE WHEN Immunisation_Measales_Id10431 = 'DK' THEN 9998
		ELSE Immunisation_Measales_Id10431 END AS Immunisation_Measales_Id10431

 , CASE WHEN care_not_home_Id10432 = '1' THEN 'Y' 
        WHEN care_not_home_Id10432 = '2' THEN 'N' ELSE care_not_home_Id10432 END AS care_not_home_Id10432
 , CASE WHEN which_day = 'DK' THEN 9998
		ELSE which_day END AS which_day
 , CASE WHEN WhereCare_Id10433 = '1'  THEN 'traditional_healer'
		WHEN WhereCare_Id10433 = '2'  THEN 'homeopath'
		WHEN WhereCare_Id10433 = '3'  THEN 'religious_leader'
		WHEN WhereCare_Id10433 = '4'  THEN 'government_hospital'
		WHEN WhereCare_Id10433 = '5'  THEN 'grvenHlth_orClinic'
		WHEN WhereCare_Id10433 = '6'  THEN 'private_hospital'
		WHEN WhereCare_Id10433 = '7'  THEN 'community_based'
		WHEN WhereCare_Id10433 = '8'  THEN 'trained_birth_attendant'
		WHEN WhereCare_Id10433 = '9'  THEN 'private_physician'
		WHEN WhereCare_Id10433 = '10'  THEN 'relative_friend'
		WHEN WhereCare_Id10433 = '11'  THEN 'pharmacy'
		ELSE WhereCare_Id10433 END AS WhereCare_Id10433
 , hosp_addr_Id10434
 , reasonForNoCare

 , CASE WHEN told_cod_Id10435 = '1' THEN 'Y' 
        WHEN told_cod_Id10435 = '2' THEN 'N' ELSE told_cod_Id10435 END AS told_cod_Id10435
 ,hworker_say_Id10436 AS hworker_say_Id10436
 , chronological_order
 , provider_1
 , CASE WHEN timing_provider_1 = 'DK' THEN 9998
		ELSE timing_provider_1 END AS timing_provider_1
 , facility_name_1
 , village_1
 , provider_2
 , CASE WHEN timing_provider_2 = 'DK' THEN 9998
		ELSE timing_provider_2 END AS timing_provider_2
 , facility_name_2
 , village_2
 , provider_3
 , CASE WHEN timing_provider_3 = 'DK' THEN 9998
		ELSE timing_provider_3 END AS timing_provider_3
 , facility_name_3
 , village_3
 , provider_4
 , timing_provider_4
 , facility_name_4
 , village_4
, CASE WHEN moveType1 = '1' THEN 'P'
		WHEN moveType1 = '2' THEN 'B'
		WHEN moveType1 = '3' THEN 'M'
		WHEN moveType1 = '4' THEN 'T'
		WHEN moveType1 = '5' THEN 'F'
		WHEN moveType1 = '6' THEN 'A'
		WHEN moveType1 = '7' THEN 'O'
		ELSE moveType1 END AS moveType1
 , CASE WHEN moveType2 = '1' THEN 'P'
		WHEN moveType2 = '2' THEN 'B'
		WHEN moveType2 = '3' THEN 'M'
		WHEN moveType2 = '4' THEN 'T'
		WHEN moveType2 = '5' THEN 'F'
		WHEN moveType2 = '6' THEN 'A'
		WHEN moveType2 = '7' THEN 'O'
		ELSE moveType2 END AS moveType2
 , CASE WHEN provider_time_1 = 'DK' THEN 9998
		ELSE provider_time_1 END AS provider_time_1
 , CASE WHEN provider_time_2 = 'DK' THEN 9998
		ELSE provider_time_2 END AS provider_time_2
 , kindOf_treatment_1
 , specify_kinfOf_treatement_1
 , kindOf_treatment_2
 , specify_kinfOf_treatement_2
 , CASE WHEN treatment_obtained_1 = 'DK' THEN 9998
		ELSE treatment_obtained_1 END AS treatment_obtained_1
 , CASE WHEN treatment_obtained_2 = 'DK' THEN 9998
		ELSE treatment_obtained_2 END AS treatment_obtained_2

 , CASE WHEN pay_treatment = '1' THEN 'Y' 
        WHEN pay_treatment = '2' THEN 'N' ELSE pay_treatment END AS pay_treatment

 , CASE WHEN reffered_for_care = '1' THEN 'Y' 
        WHEN reffered_for_care = '2' THEN 'N' ELSE reffered_for_care END AS reffered_for_care
 , CASE WHEN referral_place = '1' THEN 'traditional_healer'
		WHEN referral_place = '2' THEN 'homeopath'
		WHEN referral_place = '3' THEN 'religious_leader'
		WHEN referral_place = '4' THEN 'government_hospital'
		WHEN referral_place = '5' THEN 'grvenHlth_orClinic'
		WHEN referral_place = '6' THEN 'private_hospital'
		WHEN referral_place = '7' THEN 'community_based'
		WHEN referral_place = '8' THEN 'trained_birth_attendant'
		WHEN referral_place = '9' THEN 'private_physician'
		WHEN referral_place = '10' THEN 'relative_friend'
		WHEN referral_place = '11' THEN 'pharmacy'
		ELSE referral_place END AS referral_place
 , referral_reason
 ,specify_referral_reason AS specify_referral_reason

 , CASE WHEN takenTo_referralPlace = '1' THEN 'Y' 
        WHEN takenTo_referralPlace = '2' THEN 'N' ELSE takenTo_referralPlace END AS takenTo_referralPlace

 , CASE WHEN referral = '1' THEN 'Y' 
        WHEN referral = '2' THEN 'N' ELSE referral END AS referral

 , CASE WHEN hv_hrecord_Id10437 = '1' THEN 'Y' 
        WHEN hv_hrecord_Id10437 = '2' THEN 'N' ELSE hv_hrecord_Id10437 END AS hv_hrecord_Id10437

 , CASE WHEN see_hrecord_Id10438 = '1' THEN 'Y' 
        WHEN see_hrecord_Id10438 = '2' THEN 'N' ELSE see_hrecord_Id10438 END AS see_hrecord_Id10438
 ,CAST(rece_date_Id10439 AS DATETIME2) AS rece_date_Id10439
 ,CAST(lastdate_Id10440 AS datetime2) AS lastdate_Id10440
 ,CAST(date_rec_Id10441 AS datetime2) AS date_rec_Id10441
 ,CAST(weight_last_rec_Id10442 AS NUMERIC) AS weight_last_rec_Id10442
 ,CAST(weight_2nd_rec_Id10443 AS NUMERIC) AS weight_2nd_rec_Id10443
 ,note_Id10444 AS note_Id10444

 , CASE WHEN test_hiv_Id10445 = '1' THEN 'Y' 
        WHEN test_hiv_Id10445 = '2' THEN 'N' ELSE test_hiv_Id10445 END AS test_hiv_Id10445

 , CASE WHEN mom_hiv_Id10446 = '1' THEN 'Y' 
        WHEN mom_hiv_Id10446 = '2' THEN 'N' ELSE mom_hiv_Id10446 END AS mom_hiv_Id10446

 , CASE WHEN care_Id10450 = '1' THEN 'Y' 
        WHEN care_Id10450 = '2' THEN 'N' ELSE care_Id10450 END AS care_Id10450

 , CASE WHEN trans_care_Id10451 = '1' THEN 'Y' 
        WHEN trans_care_Id10451 = '2' THEN 'N' ELSE trans_care_Id10451 END AS trans_care_Id10451

 , CASE WHEN ad_care_Id10452 = '1' THEN 'Y' 
        WHEN ad_care_Id10452 = '2' THEN 'N' ELSE ad_care_Id10452 END AS ad_care_Id10452

 , CASE WHEN Streat_Id10453 = '1' THEN 'Y' 
        WHEN Streat_Id10453 = '2' THEN 'N' ELSE Streat_Id10453 END AS Streat_Id10453

 , CASE WHEN med_prob_Id10454 = '1' THEN 'Y' 
        WHEN med_prob_Id10454 = '2' THEN 'N' ELSE med_prob_Id10454 END AS med_prob_Id10454

 , CASE WHEN trav_prob_Id10455 = '1' THEN 'Y' 
        WHEN trav_prob_Id10455 = '2' THEN 'N' ELSE trav_prob_Id10455 END AS trav_prob_Id10455

 , CASE WHEN care_need_Id10456 = '1' THEN 'Y' 
        WHEN care_need_Id10456 = '2' THEN 'N' ELSE care_need_Id10456 END AS care_need_Id10456

 , CASE WHEN trad_med_Id10457 = '1' THEN 'Y' 
        WHEN trad_med_Id10457 = '2' THEN 'N' ELSE trad_med_Id10457 END AS trad_med_Id10457
 , tradimed_received
 , CASE WHEN treatm_sougth_first = '1' THEN 'B'
		WHEN treatm_sougth_first = '2' THEN 'T'
		ELSE treatm_sougth_first END AS treatm_sougth_first

 , CASE WHEN cnt_care_Id10458 = '1' THEN 'Y' 
        WHEN cnt_care_Id10458 = '2' THEN 'N' ELSE cnt_care_Id10458 END AS cnt_care_Id10458
 , CASE WHEN treatment_price = 'DK' THEN 9998
		ELSE treatment_price END AS treatment_price 
 , CASE WHEN transport_price = 'DK' THEN 9998
		ELSE transport_price END AS transport_price
 , CASE WHEN other_costs = 'DK' THEN 9998
		ELSE other_costs END AS other_costs
 , CASE WHEN cost_Id10459 = '1' THEN 'Y' 
        WHEN cost_Id10459 = '2' THEN 'N' ELSE cost_Id10459 END AS cost_Id10459
  , CASE WHEN medi_aid = '1' THEN 'N' 
		WHEN medi_aid = '2' THEN 'Y'
		WHEN medi_aid = '3' THEN 'C'
		WHEN medi_aid = '4' THEN 'W'
        WHEN medi_aid = '5' THEN 'H' ELSE medi_aid END AS medi_aid

   , CASE WHEN res_status = '1' THEN 'C' 
		WHEN res_status = '2' THEN 'E'
		WHEN res_status = '3' THEN 'M'
		WHEN res_status = '4' THEN 'O'
		WHEN res_status = '5' THEN 'P'
		WHEN res_status = '6' THEN 'Q'
		WHEN res_status = '7' THEN 'V'
		WHEN res_status = '8' THEN 'W'
        WHEN res_status = '9' THEN 'X' ELSE res_status END AS res_status

 , CASE WHEN deceased_ill_site = '1' THEN 'Y' 
        WHEN deceased_ill_site = '2' THEN 'N' ELSE deceased_ill_site END AS deceased_ill_site

 , CASE WHEN admitted_during_terminal = '1' THEN 'Y' 
        WHEN admitted_during_terminal = '2' THEN 'N' ELSE admitted_during_terminal END AS admitted_during_terminal
 , CASE WHEN numberOfAdmission = 'DK' THEN 9998
		ELSE numberOfAdmission END AS numberOfAdmission
 , CASE WHEN which_hospital = '1' THEN 'Mapulaneng'
		WHEN which_hospital = '2' THEN 'Matikwane'
		WHEN which_hospital = '3' THEN 'Tintswalo'
		WHEN which_hospital = '4' THEN 'RobFerreira'
		WHEN which_hospital = '5' THEN 'NelspruitMedi-clinic'
		WHEN which_hospital = '6' THEN 'PietersburgMankweng'
		WHEN which_hospital = '7' THEN 'Garankuwa'
		WHEN which_hospital = '8' THEN 'Bhubezi'
		ELSE which_hospital END AS which_hospital
 , other_hospital
 , med_act_first
 , med_act_second
 , med_act_third
 , med_act_fourth
 , med_act_abov_fourth
 , Never_admitted_no_biomed_1res
 , Never_admitted_no_biomed_2res
 , Never_admitted_no_biomed_3res
 , if_other_actions_other_reas
 ,CASE WHEN of_interview_Id10481 IS NULL THEN CAST(CAST(endtime AS TIME) AS varchar)
       ELSE CAST(CAST(of_interview_Id10481 AS TIME) AS VARCHAR) END AS of_interview_Id10481
 , easier_explain
, CASE WHEN resp_agreement_to_interview = '1.' THEN 'Agreed immediately without expressing any problem with telephone interview'
	   WHEN resp_agreement_to_interview = '2.' THEN 'Agreed but first discussed some worries because of telephone interview'
	   WHEN resp_agreement_to_interview = '3.' THEN 'Refused because of telephone interview'
	   WHEN resp_agreement_to_interview = '4.' THEN 'Refused for reasons that had nothing to do with the telephone interview'
	   ELSE resp_agreement_to_interview END AS resp_agreement_to_interview
, what_kind_of_worries
, tele_call_refuse_reasons
, CASE WHEN person_break_down = '1' THEN  'Y'
	   WHEN person_break_down = '2' THEN 'N'
	   ELSE person_break_down END AS person_break_down
, breakdown_yes_explain
, breakdown_comparison
, va_fw_feedback
, CASE WHEN information_collected_fw_review  = '1.' THEN 'Easier than I think a face-to-face interview would have been'
	   WHEN information_collected_fw_review = '2.' THEN 'Just as good as I would have got in a face-to-face interview – no different'
	   WHEN information_collected_fw_review = '3.' THEN 'More difficult to get information than I think a face-to-face interview would have been'
	   ELSE information_collected_fw_review END AS information_collected_fw_review
, difficult_why
, CASE WHEN interview_preference IN ('1', 'yes', 'y') THEN 'face-to-face' 
	   WHEN interview_preference IN ('2', 'no', 'n') THEN 'phone'
	   ELSE interview_preference END AS interview_preference
, CAST(endtime AS TIME) AS endtime
, CAST(begintime AS TIME) AS cati_interview_start_time
, CAST(begintime AS DATE) AS cati_interview_date
,CASE WHEN vaccinated_covid = '1' THEN 'Y'
      WHEN vaccinated_covid = '2' THEN 'N'
	  ELSE vaccinated_covid END AS vaccinated_covid
,CASE WHEN vaccine_dose1 = '1' THEN 'Astra-Zeneca/Oxford/ChadOx'
      WHEN vaccine_dose1 = '2' THEN 'Pfizer/BioNTech'
	  WHEN vaccine_dose1 = '3' THEN 'Moderna'
	  WHEN vaccine_dose1 = '4' THEN 'Jansen/J&J'
	  WHEN vaccine_dose1 = '5' THEN 'Other'
	  ELSE vaccine_dose1 END AS vaccine_dose1
,dose1_specify
,dose1_when
,CASE WHEN where_dose1 = '1' THEN 'Local clinic/hospital names'
	  WHEN where_dose1 = '2' THEN 'Private practitioner'
	  WHEN where_dose1 = '3' THEN 'Chemist'
	  WHEN where_dose1 = '4' THEN 'Mobile vaccine facility (place)'
	  ELSE where_dose1 END AS where_dose1
,dose2
,dose2_specify
,CASE WHEN where_dose2 = '1' THEN 'Local clinic/hospital names'
	  WHEN where_dose2 = '2' THEN 'Private practitioner'
	  WHEN where_dose2 = '3' THEN 'Chemist'
	  WHEN where_dose2 = '4' THEN 'Mobile vaccine facility (place)'
	  ELSE where_dose2 END AS where_dose2
,dose2_when

 FROM teleVA_raw2_17022022 

GO


