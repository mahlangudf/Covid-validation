Select

CASE WHEN [functioning_aircon] = '1' THEN 'Y'
     WHEN functioning_aircon = '2' THEN 'N'
	 ELSE functioning_aircon END AS functioning_aircon

      ,
	 CASE WHEN [functioning_battery] = '1' THEN 'Y'
     WHEN functioning_battery= '2' THEN 'N'
	 ELSE functioning_battery END AS functioning_battery

      ,CASE WHEN [functioning_bed] = '1' THEN 'Y'
     WHEN functioning_bed = '2' THEN 'N'
	 WHEN functioning_bed = 'yes' THEN 'Y'
	 WHEN functioning_bed= 'YES' THEN 'Y'
	 WHEN functioning_bed='3' OR functioning_bed='4' OR functioning_bed='5' THEN 'Y'
	 ELSE functioning_bed END AS functioning_bed

      ,CASE WHEN [functioning_bicycle] = '1' THEN 'Y'
     WHEN functioning_bicycle = '2' THEN 'N'
	 ELSE functioning_bicycle END AS functioning_bicycle

      ,CASE WHEN [functioning_bike] = '1' THEN 'Y'
     WHEN functioning_bike = '2' THEN 'N'
	 ELSE functioning_bike END AS functioning_bike

      ,CASE WHEN [functioning_block_maker] = '1' THEN 'Y'
     WHEN functioning_block_maker = '2' THEN 'N'
	 ELSE functioning_block_maker END AS functioning_block_maker

      ,CASE WHEN [functioning_camera] = '1' THEN 'Y'
     WHEN functioning_camera = '2' THEN 'N'
	 ELSE functioning_camera END AS functioning_camera

      ,CASE WHEN [functioning_aircon] = '1' THEN 'Y'
     WHEN functioning_aircon = '2' THEN 'N'
	 ELSE functioning_aircon END AS functioning_aircon

      ,CASE WHEN [functioning_ceil_fan] = '1' THEN 'Y'
     WHEN functioning_ceil_fan = '2' THEN 'N'
	 ELSE functioning_ceil_fan END AS functioning_ceil_fan

      ,CASE WHEN functioning_cellphone = '1' THEN 'Y'
     WHEN functioning_cellphone = '2' THEN 'N'
	 ELSE functioning_cellphone END AS functioning_cellphone

      ,CASE WHEN functioning_clock = '1' THEN 'Y'
     WHEN functioning_clock = '2' THEN 'N'
	 ELSE functioning_clock END AS functioning_clock

      ,CASE WHEN functioning_computer = '1' THEN 'Y'
     WHEN functioning_computer = '2' THEN 'N'
	 ELSE functioning_computer END AS functioning_computer

      ,CASE WHEN functioning_cooker = '1' THEN 'Y'
     WHEN functioning_cooker = '2' THEN 'N'
	 ELSE functioning_cooker END AS functioning_cooker

      ,CASE WHEN functioning_dvd = '1' THEN 'Y'
     WHEN functioning_dvd = '2' THEN 'N'
	 ELSE functioning_dvd END AS functioning_dvd

      ,CASE WHEN functioning_electric_hot_plate = '1' THEN 'Y'
     WHEN functioning_electric_hot_plate = '2' THEN 'N'
	 ELSE functioning_electric_hot_plate END AS functioning_electric_hot_plate

      ,CASE WHEN functioning_electric_kattle = '1' THEN 'Y'
     WHEN functioning_electric_kattle = '2' THEN 'N'
	 ELSE functioning_electric_kattle END AS functioning_electric_kattle

      ,CASE WHEN functioning_electric_stove_oven = '1' THEN 'Y'
     WHEN functioning_electric_stove_oven = '2' THEN 'N'
	 ELSE functioning_electric_stove_oven END AS functioning_electric_stove_oven

      ,CASE WHEN functioning_fridge = '1' THEN 'Y'
     WHEN functioning_fridge = '2' THEN 'N'
	 ELSE functioning_fridge END AS functioning_fridge

      ,CASE WHEN functioning_gas_cooker = '1' THEN 'Y'
     WHEN functioning_gas_cooker = '2' THEN 'N'
	 ELSE functioning_gas_cooker END AS functioning_gas_cooker

      ,CASE WHEN functioning_geyser = '1' THEN 'Y'
     WHEN functioning_geyser = '2' THEN 'N'
	 ELSE functioning_geyser END AS functioning_geyser

      ,CASE WHEN functioning_internet_comp = '1' THEN 'Y'
     WHEN functioning_internet_comp = '2' THEN 'N'
	 ELSE functioning_internet_comp END AS functioning_internet_comp

            ,CASE WHEN functioning_internet_phone = '1' THEN 'Y'
     WHEN functioning_internet_phone = '2' THEN 'N'
	 ELSE functioning_internet_phone END AS functioning_internet_phone
            ,CASE WHEN functioning_kombi = '1' THEN 'Y'
     WHEN functioning_kombi = '2' THEN 'N'
	 ELSE functioning_kombi END AS functioning_kombi

            ,CASE WHEN functioning_landline = '1' THEN 'Y'
     WHEN functioning_landline = '2' THEN 'N'
	 ELSE functioning_landline END AS functioning_landline

            ,CASE WHEN functioning_lorry = '1' THEN 'Y'
     WHEN functioning_lorry = '2' THEN 'N'
	 ELSE functioning_lorry END AS functioning_lorry

            ,CASE WHEN functioning_microwave = '1' THEN 'Y'
     WHEN functioning_microwave = '2' THEN 'N'
	 ELSE functioning_microwave END AS functioning_microwave

            ,CASE WHEN functioning_pressure_cooker = '1' THEN 'Y'
     WHEN functioning_pressure_cooker = '2' THEN 'N'
	 ELSE functioning_pressure_cooker END AS functioning_pressure_cooker

            ,CASE WHEN functioning_radio = '1' THEN 'Y'
     WHEN functioning_radio = '2' THEN 'N'
	 ELSE functioning_radio END AS functioning_radio

            ,CASE WHEN functioning_satellite_dish = '1' THEN 'Y'
     WHEN functioning_satellite_dish = '2' THEN 'N'
	 ELSE functioning_satellite_dish END AS functioning_satellite_dish

      ,CASE WHEN functioning_sewing = '1' THEN 'Y'
     WHEN functioning_sewing = '2' THEN 'N'
	 ELSE functioning_sewing END AS functioning_sewing

      ,CASE WHEN functioning_sink = '1' THEN 'Y'
     WHEN functioning_sink = '2' THEN 'N'
	 ELSE functioning_sink END AS functioning_sink

      ,CASE WHEN functioning_sofa = '1' THEN 'Y'
     WHEN functioning_sofa = '2' THEN 'N'
	 ELSE functioning_sofa END AS functioning_sofa

      ,CASE WHEN functioning_spade = '1' THEN 'Y'
     WHEN functioning_spade = '2' THEN 'N'
	 ELSE functioning_spade END AS functioning_spade

      ,CASE WHEN functioning_stand_fan = '1' THEN 'Y'
     WHEN functioning_stand_fan = '2' THEN 'N'
	 ELSE functioning_stand_fan END AS functioning_stand_fan

      ,CASE WHEN functioning_stereo = '1' THEN 'Y'
     WHEN functioning_stereo = '2' THEN 'N'
	 ELSE functioning_stereo END AS functioning_stereo

      ,CASE WHEN functioning_stove = '1' THEN 'Y'
     WHEN functioning_stove = '2' THEN 'N'
	 ELSE functioning_stove END AS functioning_stove

      ,CASE WHEN functioning_table_chairs = '1' THEN 'Y'
     WHEN functioning_table_chairs = '2' THEN 'N'
	 ELSE functioning_table_chairs END AS functioning_table_chairs

      ,CASE WHEN functioning_truck = '1' THEN 'Y'
     WHEN functioning_truck = '2' THEN 'N'
	 ELSE functioning_truck END AS functioning_truck

      ,CASE WHEN functioning_tv = '1' THEN 'Y'
     WHEN functioning_tv = '2' THEN 'N'
	 ELSE functioning_tv END AS functioning_tv

      ,CASE WHEN functioning_wash_machine = '1' THEN 'Y'
     WHEN functioning_wash_machine = '2' THEN 'N'
	 ELSE functioning_wash_machine END AS functioning_wash_machine

      ,CASE WHEN functioning_wheelbarrow = '1' THEN 'Y'
     WHEN functioning_wheelbarrow = '2' THEN 'N'
	 ELSE functioning_wheelbarrow END AS functioning_wheelbarrow 
	  FROM [Covid_Validation].[dbo].[teleVA_raw2_2022_6_22]