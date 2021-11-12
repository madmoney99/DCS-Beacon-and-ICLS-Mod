dofile('Scripts/Database/wsTypes.lua')
dofile('Scripts/World/Radio/BeaconTypes.lua')
dofile('Scripts/World/Radio/BeaconSites.lua')

local disableNauticalBeacons = true

local gettext = require("i_18n")
local       _ = gettext.translate

--WORLD BEACONS

--[[
	Caucasus beacon mod v.2.0, updated May 20, 2021 by TonyG. Last checked with DCS v2.7.1.6430 (May 20,2021)
	
	General info:
	I have added ICLS beacons for the F/A-18C for all runways that were already equipped with regular ILS.
	Readme located https://github.com/madmoney99/Caucasus-and-NTTR-ICLS-Mod
	
Added beacons Caucasus:

    Anapa
        VORTAC 59X/111.20 DUDE
        ICLS RWY04 Ch.5
        ICLS RWY22 Ch.2
        ILS RWY04 108.50 DDY
        ILS RWY22 109.50 JAK
    Batumi
        ICLS RWY13 CH.16
    Belsan
        VORTAC 51X/111.40 BSN
        ICLS RWY10 CH.1
    Gelendzhik
        TACAN 90X GNZ
    Kobuleti
        ICLS RWY07 CH.7
    Kultasi
        ICLS RWY08 CH.8
    Krasnodar-Center
        TACAN 94X KRS
        ICLS RWY09 CH.17
    Krymsk
        VORTAC 41X/110.40 KRY
        ICLS RWY04 CH.4
        ICLS RWY22 CH.20
    Maykop
        VORTAC 53X/111.60 MAY
        ICLS RWY04 CH.14
    Mineralnye Vody
        VORTAC 118X/117.10 MNV
        ICLS RWY12 CH.12
        ICLS RWY30 CH.3
    Mozdok
        VORTAC 126X/117.90 MOZ
        ICLS RWY08 CH.18
        ICLS RWY26 CH.19
    Nalchik
        VORTAC 33X/109.60 NAL
        ICLS RWY24 CH.2
    Sochi-Adler
        VORTAC 45X/110.80 SCH
        ICLS RWY06 CH.6
    Senaki
        ICLS RWY09 CH.9
    Tblisi-Lochini
        ICLS RWY13R CH.13
        ICLS RWY31L CH.6
    Vaziani
        ICLS RWY13 CH.15
        ICLS RWY31 CH.4
]]--

beaconsTableFormat = 2
beacons = {
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'AP';
		frequency = 443000.000000;
		position = { -1321.801758, 12.352437, 246748.500000 };
		direction = 41.500201;
		positionGeo = { latitude = 45.039907, longitude = 37.396435 };
		sceneObjects = {'t:297664512'};
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'P';
		frequency = 215000.000000;
		position = { -3343.976563, 40.271662, 244959.421875 };
		direction = 41.500201;
		positionGeo = { latitude = 45.022628, longitude = 37.372401 };
		sceneObjects = {'t:297631744'};
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'AN';
		frequency = 443000.000000;
		position = { -9500.015625, 24.885315, 239511.625000 };
		direction = -138.499789;
		positionGeo = { latitude = 44.969992, longitude = 37.299308 };
		sceneObjects = {'t:294387720'};
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'N';
		frequency = 215000.000000;
		position = { -7477.841797, 36.126909, 241300.703125 };
		direction = -138.499789;
		positionGeo = { latitude = 44.987288, longitude = 37.323297 };
		sceneObjects = {'t:295895040'};
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_4'; 
		type = BEACON_TYPE_VORTAC;
		callsign = 'DUDE';
		frequency = 112200000;
		channel = 59;
		position = { -5500.801758, 42.35243, 242748.500000 };
		direction = 41.500201;
		positionGeo = { latitude = 45.00, longitude = 37.396435 };
		sceneObjects = {'t:298090496'};
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_5'; --rwy 04
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'DDY';
		frequency = 108500000;
		position = { -4209, 42.848, 244193 };
		direction = -138.499789; --add 180 for runway degrees
		positionGeo = { latitude = 45.014433, longitude = 37.361 };
		sceneObjects = {'t:168788600'};
		chartOffsetX = 3055.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_6'; --rwy 04
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'DDY';
		frequency = 108500000;
		position = { -6314, 42.848, 242337 };
		direction = -138.499789;
		positionGeo = { latitude = 44.997239, longitude = 37.337189 };
		sceneObjects = {'t:319096009'};
		chartOffsetX = 3055.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_7'; --rwy 22
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'JAK';
		frequency = 109500000;
		position = { -6576, 42.848, 242099 };
		direction = 41.500201; --add 180 for runway degrees
		positionGeo = { latitude = 44.994997, longitude = 37.334008 };
		sceneObjects = {'t:168788600'};
		chartOffsetX = 3005.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_8'; --rwy 22
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'JAK';
		frequency = 109500000;
		position = { -4520, 42.848, 243712 };
		direction = 41.500201;
		positionGeo = { latitude = 45.012656, longitude = 37.356089 };
		sceneObjects = {'t:319096009'};
		chartOffsetX = 3005.000000;
	};
{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_9'; --rwy 04
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ALU';
		frequency = 15535000000;
		channel = 5;
		position = { -4209, 42.848, 244193 };
		direction = -138.499789; --add 180 for runway degrees
		positionGeo = { latitude = 45.014433, longitude = 37.361 };
		sceneObjects = {'t:168788600'};
		chartOffsetX = 2519.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_10'; --rwy 04
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15535000000;
		channel = 5;
		position = { -6314, 42.848, 242337 };
		direction = -138.499789;
		positionGeo = { latitude = 44.997239, longitude = 37.337189 };
		sceneObjects = {'t:319096009'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_11'; --rwy 22
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'JAK';
		frequency = 15445000000;
		channel = 2;
		position = { -6576, 42.848, 242099 };
		direction = 41.500201; --add 180 for runway degrees
		positionGeo = { latitude = 44.994997, longitude = 37.334008 };
		sceneObjects = {'t:168788600'};
		chartOffsetX = 2519.000000;
	};
	{
		display_name = _('Anapa-Vityazevo');
		beaconId = 'airfield12_12'; --rwy 22
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15445000000;
		channel = 2;
		position = { -4520, 42.848, 243712 };
		direction = 41.500201;
		positionGeo = { latitude = 45.012656, longitude = 37.356089 };
		sceneObjects = {'t:319096009'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ILU';
		frequency = 110300000.000000;
		position = { -356584.812500, 10.030140, 618472.437500 };
		direction = -54.415131;
		positionGeo = { latitude = 41.601731, longitude = 41.612203 };
		sceneObjects = {'t:168460922'};
		chartOffsetX = 2519.000000;
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ILU';
		frequency = 110300000.000000;
		position = { -355396.812500, 10.044037, 616600.500000 };
		direction = -54.415131;
		positionGeo = { latitude = 41.613985, longitude = 41.591406 };
		sceneObjects = {'t:318309567'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_2';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BTM';
		frequency = 977000000.000000;
		channel = 16;
		position = { -355664.406250, 10.044037, 617386.812500 };
		direction = 0.000000;
		positionGeo = { latitude = 41.610899, longitude = 41.600419 };
		sceneObjects = {'t:168985815'};
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_3';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'LU';
		frequency = 430000.000000;
		position = { -356480.125000, 10.113043, 618549.187500 };
		direction = -60.999996;
		positionGeo = { latitude = 41.602594, longitude = 41.613238 };
		sceneObjects = {'t:168494195'};
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_4';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ILU';
		frequency = 15565000000;
		channel = 16;
		position = { -356584.812500, 10.030139, 618472.437500 };
		direction = -54.415131;
		positionGeo = { latitude = 41.601731, longitude = 41.612203 };
		sceneObjects = {'t:168788600'};
		chartOffsetX = 2519.000000;
	};
	{
		display_name = _('Batumi');
		beaconId = 'airfield22_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15565000000;
		channel = 16;
		position = { -355396.812500, 10.044037, 616600.500000 };
		direction = -54.415131;
		positionGeo = { latitude = 41.613985, longitude = 41.591406 };
		sceneObjects = {'t:319096009'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'CX';
		frequency = 1050000.000000;
		position = { -148253.156250, 542.239983, 838154.187500 };
		direction = -86.499961;
		positionGeo = { latitude = 43.215500, longitude = 44.539874 };
		sceneObjects = {'t:239140869'};
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'C';
		frequency = 250000.000000;
		position = { -148418.000000, 524.825537, 840849.187500 };
		direction = -86.499961;
		positionGeo = { latitude = 43.210717, longitude = 44.572100 };
		sceneObjects = {'t:239173633'};
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ICH';
		frequency = 110500000.000000;
		position = { -148692.109375, 529.274577, 845322.875000 };
		direction = -86.499961;
		positionGeo = { latitude = 43.202754, longitude = 44.625580 };
		sceneObjects = {'t:239206458'};
		chartOffsetX = 3219.000000;
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = '';
		frequency = 110500000.000000;
		position = { -148636.890625, 524.825537, 842454.000000 };
		direction = -86.499961;
		positionGeo = { latitude = 43.206800, longitude = 44.591083 };
		sceneObjects = {'t:463208457'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_4';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ICH';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -148692.109375, 529.274577, 845322.875000 };
		direction = -86.499961;
		positionGeo = { latitude = 43.202754, longitude = 44.625580 };
		sceneObjects = {'t:239599674'};
		chartOffsetX = 3219.000000;
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -148636.890625, 524.825537, 842454.000000 };
		direction = -86.499961;
		positionGeo = { latitude = 43.206800, longitude = 44.591083 };
		sceneObjects = {'t:463994889'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Beslan');
		beaconId = 'airfield32_6';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BSN';
		frequency = 111400000;
		channel = 51;
		position = { -148692.109375, 529.274577, 845322.875000 };
		direction = -86.499961;
		positionGeo = { latitude = 43.208472, longitude = 44.587169 };
		sceneObjects = {'t:239599674'};
		chartOffsetX = 3219.000000;
	};
	{
		display_name = _('Gelendzhik');
		beaconId = 'airfield17_0';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'GN';
		frequency = 1000000.000000;
		position = { -50752.625000, 22.009921, 298204.468750 };
		direction = -139.999984;
		positionGeo = { latitude = 44.569658, longitude = 38.008795 };
		sceneObjects = {'t:279445505'};
	};
	{
		display_name = _('Gelendzhik');
		beaconId = 'airfield17_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'GN';
		frequency = 114300000.000000;
		channel = 90;
		position = { -50420.347656, 22.009923, 298457.125000 };
		direction = 0.000000;
		positionGeo = { latitude = 44.572498, longitude = 38.012222 };
		sceneObjects = {'t:118591597'};
	};
	{
		display_name = _('Gudauta');
		beaconId = 'airfield21_0';
		type = BEACON_TYPE_AIRPORT_HOMER_WITH_MARKER;
		callsign = 'XC';
		frequency = 395000.000000;
		position = { -198344.562500, 10.015866, 517357.000000 };
		direction = 151.003298;
		positionGeo = { latitude = 43.099003, longitude = 40.578961 };
		sceneObjects = {'t:222199809'};
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'KT';
		frequency = 870000.000000;
		position = { -319739.031250, 10.928995, 630753.562500 };
		direction = -109.999979;
		positionGeo = { latitude = 41.918616, longitude = 41.802928 };
		sceneObjects = {'t:175931392'};
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'T';
		frequency = 490000.000000;
		position = { -318815.562500, 18.272494, 633290.687500 };
		direction = -109.999979;
		positionGeo = { latitude = 41.924494, longitude = 41.834303 };
		sceneObjects = {'t:176979968'};
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IKB';
		frequency = 111500000.000000;
		position = { -317495.750000, 18.017041, 636918.250000 };
		direction = -109.999979;
		positionGeo = { latitude = 41.932878, longitude = 41.879171 };
		sceneObjects = {'t:177013657'};
		chartOffsetX = 2550.000000;
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IKB';
		frequency = 111500000.000000;
		position = { -318329.625000, 18.010016, 634820.812500 };
		direction = -109.999979;
		positionGeo = { latitude = 41.927403, longitude = 41.853140 };
		sceneObjects = {'t:334561284'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'KBL';
		frequency = 1154000000.000000;
		channel = 67;
		position = { -317879.000000, 18.010018, 635514.812500 };
		direction = 0.000000;
		positionGeo = { latitude = 41.930770, longitude = 41.861970 };
		sceneObjects = {'t:177013658'};
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_5';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IKBL';
		frequency = 15595000000.000000;
		channel = 7;
		position = { -317495.750000, 18.017043, 636918.250000 };
		direction = -109.999979;
		positionGeo = { latitude = 41.932878, longitude = 41.879171 };
		sceneObjects = {'t:177406882'};
		chartOffsetX = 2550.000000;
	};
	{
		display_name = _('Kobuleti');
		beaconId = 'airfield24_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15595000000.000000;
		channel = 7;
		position = { -318329.625000, 18.010018, 634820.812500 };
		direction = -109.999979;
		positionGeo = { latitude = 41.927403, longitude = 41.853140 };
		sceneObjects = {'t:335347716'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'OC';
		frequency = 625000.000000;
		position = { 11980.968750, 31.707849, 373613.718750 };
		direction = 87.003387;
		positionGeo = { latitude = 45.085828, longitude = 39.012047 };
		sceneObjects = {'t:302120960'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'O';
		frequency = 303000.000000;
		position = { 11804.427734, 29.328925, 370241.343750 };
		direction = 87.003387;
		positionGeo = { latitude = 45.086491, longitude = 38.969263 };
		sceneObjects = {'t:302088207'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'MB';
		frequency = 625000.000000;
		position = { 11410.707031, 25.576110, 362701.093750 };
		direction = -92.996632;
		positionGeo = { latitude = 45.087925, longitude = 38.873594 };
		sceneObjects = {'t:302022656'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'M';
		frequency = 303000.000000;
		position = { 11567.539063, 25.479861, 365697.000000 };
		direction = -92.996632;
		positionGeo = { latitude = 45.087368, longitude = 38.911608 };
		sceneObjects = {'t:302055441'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_4';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'MB';
		frequency = 838000000.000000;
		channel = 38;
		position = { 11798.221680, 29.299765, 370113.187500 };
		direction = -92.996632;
		positionGeo = { latitude = 45.086520, longitude = 38.967638 };
		sceneObjects = {'t:678986492'};
		chartOffsetX = 3410.000000;
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_5';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'MB';
		frequency = 838000000.000000;
		channel = 38;
		position = { 11492.823242, 30.010031, 367052.968750 };
		direction = -92.996632;
		positionGeo = { latitude = 45.085808, longitude = 38.928677 };
		sceneObjects = {'t:678986493'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_6';
		type = BEACON_TYPE_RSBN;
		callsign = 'MB';
		frequency = 840000000.000000;
		channel = 40;
		position = { 11195.093750, 30.866661, 367008.562500 };
		direction = -92.996652;
		positionGeo = { latitude = 45.083171, longitude = 38.927839 };
		sceneObjects = {'t:678987164'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_7';
		type = BEACON_TYPE_TACAN;
		callsign = 'KRS';
		frequency = 114700000.000000;
		channel = 94;
		position = { 11190, 30.866661, 367004 };
		direction = -92.996652;
		positionGeo = { latitude = 45.083171, longitude = 38.927839 };
		sceneObjects = {'t:878937518'};
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_8';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IKRS';
		frequency = 15595000000;
		channel = 17;
		position = { 11798.221680, 29.250579, 370113.187500 };
		direction = -92.996632;
		positionGeo = { latitude = 45.086520, longitude = 38.967638 };
		sceneObjects = {'t:878936846'};
		chartOffsetX = 3410.000000;
	};
	{
		display_name = _('Krasnodar-Center');
		beaconId = 'airfield13_9';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IKRS';
		frequency = 15595000000;
		channel = 17;
		position = { 11492.823242, 30.010030, 367052.968750 };
		direction = -92.996632;
		positionGeo = { latitude = 45.085808, longitude = 38.928677 };
		sceneObjects = {'t:878936847'};
	};
	{
		display_name = _('Krasnodar-Pashkovsky');
		beaconId = 'airfield19_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'KR';
		frequency = 493000.000000;
		position = { 3919.232910, 29.862306, 383806.187500 };
		direction = -132.994767;
		positionGeo = { latitude = 45.006796, longitude = 39.133081 };
		sceneObjects = {'t:298745856'};
	};
	{
		display_name = _('Krasnodar-Pashkovsky');
		beaconId = 'airfield19_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'K';
		frequency = 240000.000000;
		position = { 5760.449219, 29.579169, 385781.000000 };
		direction = -132.994767;
		positionGeo = { latitude = 45.021929, longitude = 39.159769 };
		sceneObjects = {'t:300580881'};
	};
	{
		display_name = _('Krasnodar-Pashkovsky');
		beaconId = 'airfield19_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'LD';
		frequency = 493000.000000;
		position = { 11497.123047, 34.370228, 391935.437500 };
		direction = 47.005224;
		positionGeo = { latitude = 45.069032, longitude = 39.243028 };
		sceneObjects = {'t:302252032'};
	};
	{
		display_name = _('Krasnodar-Pashkovsky');
		beaconId = 'airfield19_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'L';
		frequency = 240000.000000;
		position = { 9655.907227, 31.752404, 389960.625000 };
		direction = 47.005224;
		positionGeo = { latitude = 45.053921, longitude = 39.216297 };
		sceneObjects = {'t:302252033'};
	};
	{
		display_name = _('Krasnodar-Pashkovsky');
		beaconId = 'airfield19_4';
		type = BEACON_TYPE_VOR;
		callsign = 'KN';
		frequency = 115800000.000000;
		channel = 105;
		position = { 5663.363770, 30.493774, 386114.750000 };
		direction = 0.000000;
		positionGeo = { latitude = 45.020832, longitude = 39.163887 };
		sceneObjects = {'t:137661697'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'KW';
		frequency = 408000.000000;
		position = { -2232.675781, 5.000005, 297972.093750 };
		direction = 39.519802;
		positionGeo = { latitude = 45.004894, longitude = 38.043726 };
		sceneObjects = {'t:298057728'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'K';
		frequency = 803000.000000;
		position = { -4801.454590, 7.267079, 295853.062500 };
		direction = 39.519802;
		positionGeo = { latitude = 44.983041, longitude = 38.014927 };
		sceneObjects = {'t:296288257'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'OX';
		frequency = 408000.000000;
		position = { -10679.844727, 72.042530, 291002.593750 };
		direction = -140.480217;
		positionGeo = { latitude = 44.933004, longitude = 37.949089 };
		sceneObjects = {'t:294682653'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'O';
		frequency = 803000.000000;
		position = { -8481.339844, 32.852633, 292816.187500 };
		direction = -140.480217;
		positionGeo = { latitude = 44.951723, longitude = 37.973692 };
		sceneObjects = {'t:294682654'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_4';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'OX';
		frequency = 826000000.000000;
		position = { -7411.832520, 20.010304, 293592.000000 };
		direction = -141.000009;
		positionGeo = { latitude = 44.960886, longitude = 37.984323 };
		sceneObjects = {'t:678986498'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_5';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'KW';
		frequency = 826000000.000000;
		position = { -5648.416504, 20.010304, 295048.156250 };
		direction = 38.999970;
		positionGeo = { latitude = 44.975894, longitude = 38.004094 };
		sceneObjects = {'t:678986499'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_6';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'KW';
		frequency = 826000000.000000;
		channel = 26;
		position = { -8396.038086, 31.785951, 292887.187500 };
		direction = 39.519802;
		positionGeo = { latitude = 44.952449, longitude = 37.974655 };
		sceneObjects = {'t:678986500'};
		chartOffsetX = 3649.000000;
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_7';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'OX';
		frequency = 826000000.000000;
		channel = 26;
		position = { -4817.330078, 7.263302, 295839.312500 };
		direction = -140.480217;
		positionGeo = { latitude = 44.982907, longitude = 38.014740 };
		sceneObjects = {'t:678986501'};
		chartOffsetX = 3589.000000;
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_8';
		type = BEACON_TYPE_RSBN;
		callsign = 'KW';
		frequency = 828000000.000000;
		channel = 28;
		position = { -6710.505371, 20.866651, 294536.875000 };
		direction = -140.480229;
		positionGeo = { latitude = 44.966653, longitude = 37.996805 };
		sceneObjects = {'t:678987165'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_9';
		type = BEACON_TYPE_VORTAC;
		callsign = 'KRY';
		frequency = 110400000.000000;
		channel = 41;
		position = { -7606, 20.866651, 293539 };
		direction = -140.480229;
		positionGeo = { latitude = 44.959175, longitude = 37.983503 };
		sceneObjects = {'t:878937519'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_10';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IKRY';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -7411.832520, 20.010304, 293592.000000 };
		direction = -141.000009;
		positionGeo = { latitude = 44.960886, longitude = 37.984323 };
		sceneObjects = {'t:878936852'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_11';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IKRY';
		frequency = 15685000000.00000;
		channel = 20;
		position = { -5648.416504, 20.010304, 295048.156250 };
		direction = 38.999970;
		positionGeo = { latitude = 44.975894, longitude = 38.004094 };
		sceneObjects = {'t:878936853'};
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_12';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IKRY';
		frequency = 15685000000.000000;
		channel = 20;
		position = { -8396.038086, 31.785951, 292887.187500 };
		direction = 39.519802;
		positionGeo = { latitude = 44.952449, longitude = 37.974655 };
		sceneObjects = {'t:878936854'};
		chartOffsetX = 3649.000000;
	};
	{
		display_name = _('Krymsk');
		beaconId = 'airfield15_13';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IKRY';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -4817.330078, 7.263302, 295839.312500 };
		direction = -140.480217;
		positionGeo = { latitude = 44.982907, longitude = 38.014740 };
		sceneObjects = {'t:878936855'};
		chartOffsetX = 3589.000000;
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IKS';
		frequency = 109750000.000000;
		position = { -284502.843750, 46.542794, 685199.500000 };
		direction = -105.999107;
		positionGeo = { latitude = 42.179695, longitude = 42.497820 };
		sceneObjects = {'t:190513688'};
		chartOffsetX = 2650.000000;
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IKS';
		frequency = 109750000.000000;
		position = { -285264.531250, 45.010047, 682978.437500 };
		direction = -105.999107;
		positionGeo = { latitude = 42.175142, longitude = 42.470274 };
		sceneObjects = {'t:366314246'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_2';
		type = BEACON_TYPE_AIRPORT_HOMER_WITH_MARKER;
		callsign = 'TI';
		frequency = 477000.000000;
		position = { -285504.687500, 44.662974, 681690.062500 };
		direction = 74.000018;
		positionGeo = { latitude = 42.174289, longitude = 42.454567 };
		sceneObjects = {'t:190480402'};
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_3';
		type = BEACON_TYPE_TACAN;
		callsign = 'KTS';
		frequency = 1005000000.000000;
		channel = 44;
		position = { -284814.687500, 45.299522, 683676.500000 };
		direction = 0.000000;
		positionGeo = { latitude = 42.178443, longitude = 42.479213 };
		sceneObjects = {'t:190480744'};
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_4';
		type = BEACON_TYPE_VOR;
		callsign = 'KT';
		frequency = 113600000.000000;
		channel = 83;
		position = { -285487.031250, 44.387457, 681747.500000 };
		direction = 0.000000;
		positionGeo = { latitude = 42.174389, longitude = 42.455276 };
		sceneObjects = {'t:68453191'};
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_5';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IKS';
		frequency = 15625000000.000000;
		channel = 8;
		position = { -284502.843750, 46.542794, 685199.500000 };
		direction = -105.999107;
		positionGeo = { latitude = 42.179695, longitude = 42.497820 };
		sceneObjects = {'t:190906904'};
		chartOffsetX = 2650.000000;
	};
	{
		display_name = _('Kutaisi');
		beaconId = 'airfield25_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15625000000.000000;
		channel = 8;
		position = { -285264.531250, 45.010047, 682978.437500 };
		direction = -105.999107;
		positionGeo = { latitude = 42.175142, longitude = 42.470274 };
		sceneObjects = {'t:367100678'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'BP';
		frequency = 342000.000000;
		position = { -312185.406250, 567.552264, 892170.187500 };
		direction = -52.001372;
		positionGeo = { latitude = 41.703274, longitude = 44.909623 };
		sceneObjects = {'t:179372040'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'B';
		frequency = 923000.000000;
		position = { -313847.625000, 516.680448, 894297.875000 };
		direction = -52.001372;
		positionGeo = { latitude = 41.685992, longitude = 44.931895 };
		sceneObjects = {'t:179404803'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IVP';
		frequency = 110300000.000000;
		position = { -316544.062500, 479.302481, 897748.500000 };
		direction = -52.001372;
		positionGeo = { latitude = 41.657953, longitude = 44.967988 };
		sceneObjects = {'t:177930696'};
		chartOffsetX = 3117.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IVP';
		frequency = 110300000.000000;
		position = { -314937.000000, 479.218985, 895496.562500 };
		direction = -52.001372;
		positionGeo = { latitude = 41.674907, longitude = 44.944184 };
		sceneObjects = {'t:338363236'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_4';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'NA';
		frequency = 211000.000000;
		position = { -318920.968750, 459.637972, 900790.187500 };
		direction = 127.998645;
		positionGeo = { latitude = 41.633231, longitude = 44.999778 };
		sceneObjects = {'t:177930244'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_5';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'N';
		frequency = 435000.000000;
		position = { -317258.750000, 474.729601, 898662.500000 };
		direction = 127.998645;
		positionGeo = { latitude = 41.650521, longitude = 44.977543 };
		sceneObjects = {'t:177930245'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_6';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'INA';
		frequency = 108900000.000000;
		position = { -314562.312500, 482.024286, 895211.875000 };
		direction = 127.998645;
		positionGeo = { latitude = 41.678562, longitude = 44.941458 };
		sceneObjects = {'t:179405974'};
		chartOffsetX = 3117.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_7';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'INA';
		frequency = 108900000.000000;
		position = { -316169.375000, 479.694816, 897463.812500 };
		direction = 127.998645;
		positionGeo = { latitude = 41.661608, longitude = 44.965264 };
		sceneObjects = {'t:337118335'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_8';
		type = BEACON_TYPE_VOR;
		callsign = 'TB';
		frequency = 113700000.000000;
		channel = 84;
		position = { -315388.906250, 477.110096, 895795.062500 };
		direction = 0.000000;
		positionGeo = { latitude = 41.670555, longitude = 44.946945 };
		sceneObjects = {'t:60493016'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_9';
		type = BEACON_TYPE_TACAN;
		callsign = 'GTB';
		frequency = 986000000.000000;
		channel = 25;
		position = { -315581.718750, 484.049312, 894405.687500 };
		direction = 0.000000;
		positionGeo = { latitude = 41.670577, longitude = 44.930298 };
		sceneObjects = {'t:177898747'};
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_10';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'INA';
		frequency = 15565000000.000000;
		channel = 6;
		position = { -314562.312500, 482.024286, 895211.875000 };
		direction = 127.998645;
		positionGeo = { latitude = 41.678562, longitude = 44.941458 };
		sceneObjects = {'t:179799190'};
		chartOffsetX = 3117.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_11';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15565000000.000000;
		channel = 13;
		position = { -316169.375000, 479.694816, 897463.812500 };
		direction = 127.998645;
		positionGeo = { latitude = 41.661608, longitude = 44.965264 };
		sceneObjects = {'t:337904767'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_12';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'INA';
		frequency = 15475000000.000000;
		channel = 13;
		position = { -316544.062500, 479.302481, 897748.500000 };
		direction = -52.001372;
		positionGeo = { latitude = 41.657953, longitude = 44.967988 };
		sceneObjects = {'t:178323912'};
		chartOffsetX = 3117.000000;
	};
	{
		display_name = _('Tbilisi-Lochini');
		beaconId = 'airfield29_13';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15475000000.000000;
		channel = 13;
		position = { -314937.000000, 479.218985, 895496.562500 };
		direction = -52.001372;
		positionGeo = { latitude = 41.674907, longitude = 44.944184 };
		sceneObjects = {'t:339149668'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'RK';
		frequency = 289000.000000;
		position = { -22082.919922, 213.198242, 461575.468750 };
		direction = 38.999724;
		positionGeo = { latitude = 44.717443, longitude = 40.084181 };
		sceneObjects = {'t:290947072'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'R';
		frequency = 591000.000000;
		position = { -24414.369141, 175.805962, 459687.531250 };
		direction = 38.999724;
		positionGeo = { latitude = 44.698086, longitude = 40.057981 };
		sceneObjects = {'t:290947073'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'DG';
		frequency = 289000.000000;
		position = { -30802.216797, 173.935217, 454513.531250 };
		direction = -141.000295;
		positionGeo = { latitude = 44.645015, longitude = 39.986269 };
		sceneObjects = {'t:287834112'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'D';
		frequency = 591000.000000;
		position = { -28470.767578, 174.665610, 456401.468750 };
		direction = -141.000295;
		positionGeo = { latitude = 44.664391, longitude = 40.012421 };
		sceneObjects = {'t:289275904'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_4';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'DG';
		frequency = 836000000.000000;
		channel = 36;
		position = { -24437.523438, 175.942833, 459668.125000 };
		direction = -141.000295;
		positionGeo = { latitude = 44.697894, longitude = 40.057712 };
		sceneObjects = {'t:678986508'};
		chartOffsetX = 4179.000000;
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_5';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'DG';
		frequency = 836000000.000000;
		channel = 36;
		position = { -27531.527344, 180.010190, 457323.531250 };
		direction = -141.000295;
		positionGeo = { latitude = 44.672070, longitude = 40.024984 };
		sceneObjects = {'t:678986509'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_6';
		type = BEACON_TYPE_RSBN;
		callsign = 'DG';
		frequency = 834000000.000000;
		channel = 34;
		position = { -26605.978516, 180.866789, 458079.468750 };
		direction = -141.000307;
		positionGeo = { latitude = 44.679754, longitude = 40.035455 };
		sceneObjects = {'t:678987166'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_7';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MAY';
		frequency = 111600000.000000;
		channel = 53;
		position = { -25191, 180.866819, 459057 };
		direction = -141.000307;
		positionGeo = { latitude = 44.691636, longitude = 40.049236 };
		sceneObjects = {'t:878937520'};
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_8';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMAY';
		frequency = 15505000000.000000;
		channel = 14;
		position = { -24437.523438, 175.942833, 459668.125000 };
		direction = -141.000295;
		positionGeo = { latitude = 44.697894, longitude = 40.057712 };
		sceneObjects = {'t:878936862'};
		chartOffsetX = 4179.000000;
	};
	{
		display_name = _('Maykop-Khanskaya');
		beaconId = 'airfield16_9';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMAY';
		frequency = 15505000000.000000;
		channel = 14;
		position = { -27531.527344, 180.010190, 457323.531250 };
		direction = -141.000295;
		positionGeo = { latitude = 44.672070, longitude = 40.024984 };
		sceneObjects = {'t:878936863'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'NR';
		frequency = 583000.000000;
		position = { -53842.230469, 303.327421, 711195.062500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.198946, longitude = 43.144530 };
		sceneObjects = {'t:279117827'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'N';
		frequency = 283000.000000;
		position = { -52688.359375, 316.610912, 708754.062500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.211867, longitude = 43.116226 };
		sceneObjects = {'t:280592392'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IMW';
		frequency = 109300000.000000;
		position = { -50326.437500, 313.023903, 703758.562500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.238297, longitude = 43.058263 };
		sceneObjects = {'t:280527122'};
		chartOffsetX = 4216.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMW';
		frequency = 109300000.000000;
		position = { -51889.148438, 319.972732, 707345.312500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.220503, longitude = 43.100090 };
		sceneObjects = {'t:543851510'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_4';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'MD';
		frequency = 583000.000000;
		position = { -48676.292969, 310.763250, 700268.875000 };
		direction = -64.699902;
		positionGeo = { latitude = 44.256747, longitude = 43.017738 };
		sceneObjects = {'t:281903104'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_5';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'D';
		frequency = 283000.000000;
		position = { -49830.164063, 307.123507, 702709.875000 };
		direction = -64.699902;
		positionGeo = { latitude = 44.243846, longitude = 43.046088 };
		sceneObjects = {'t:280526848'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_6';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IMD';
		frequency = 111700000.000000;
		position = { -52192.085938, 315.340281, 707705.437500 };
		direction = -64.699902;
		positionGeo = { latitude = 44.217421, longitude = 43.104064 };
		sceneObjects = {'t:280560854'};
		chartOffsetX = 4216.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_7';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMD';
		frequency = 111700000.000000;
		position = { -50629.375000, 320.010330, 704118.625000 };
		direction = -64.699902;
		positionGeo = { latitude = 44.235217, longitude = 43.062240 };
		sceneObjects = {'t:546112241'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_8';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MN';
		frequency = 117100000.000000;
		channel = 118;
		position = { -50239.421875, 314.087991, 703415.500000 };
		direction = 0.000000;
		positionGeo = { latitude = 44.239445, longitude = 43.054165 };
		sceneObjects = {'t:119966454'};
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_9';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMNV';
		frequency = 15445000000.000000;
		channel = 12 ;
		position = { -52192.085938, 315.340281, 707705.437500 };
		direction = -64.699902;
		positionGeo = { latitude = 44.217421, longitude = 43.104064 };
		sceneObjects = {'t:280986837'};
		chartOffsetX = 4216.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_10';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15445000000.000000;
		channel = 12 ;
		position = { -50629.375000, 320.010360, 704118.625000 };
		direction = -64.699902;
		positionGeo = { latitude = 44.235217, longitude = 43.062240 };
		sceneObjects = {'t:546865905'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_11';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMW';
		frequency = 15475000000.000000;
		channel = 3 ;
		position = { -50326.437500, 313.023903, 703758.562500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.238297, longitude = 43.058263 };
		sceneObjects = {'t:280953104'};
		chartOffsetX = 4216.000000;
	};
	{
		display_name = _('MineralnyeVody');
		beaconId = 'airfield26_12';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15475000000.000000;
		channel = 3 ;
		position = { -51889.148438, 319.972763, 707345.312500 };
		direction = 115.300122;
		positionGeo = { latitude = 44.220503, longitude = 43.100090 };
		sceneObjects = {'t:544605174'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'DO';
		frequency = 525000.000000;
		position = { -84144.421875, 148.005153, 829029.375000 };
		direction = -97.236068;
		positionGeo = { latitude = 43.792380, longitude = 44.538494 };
		sceneObjects = {'t:266141696'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'D';
		frequency = 1065000.000000;
		position = { -83892.507813, 146.142297, 831013.437500 };
		direction = -97.236068;
		positionGeo = { latitude = 43.792126, longitude = 44.563089 };
		sceneObjects = {'t:266141697'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_2';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'RM';
		frequency = 525000.000000;
		position = { -82791.179688, 139.140398, 839695.250000 };
		direction = 82.763916;
		positionGeo = { latitude = 43.790945, longitude = 44.670692 };
		sceneObjects = {'t:266240000'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'R';
		frequency = 1065000.000000;
		position = { -83147.640625, 140.692066, 836887.812500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.791336, longitude = 44.635898 };
		sceneObjects = {'t:266207232'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_4';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'MZ';
		frequency = 822000000.000000;
		channel = 22;
		position = { -83186.351563, 140.971363, 836579.000000 };
		direction = -97.236068;
		positionGeo = { latitude = 43.791382, longitude = 44.632072 };
		sceneObjects = {'t:678986514'};
		chartOffsetX = 4418.000000;
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_5';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'MZ';
		frequency = 822000000.000000;
		channel = 22;
		position = { -83721.843750, 154.758974, 832917.312500 };
		direction = -97.236068;
		positionGeo = { latitude = 43.791251, longitude = 44.586565 };
		sceneObjects = {'t:678986515'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_6';
		type = BEACON_TYPE_PRMG_LOCALIZER;
		callsign = 'MK';
		frequency = 822000000.000000;
		channel = 22;
		position = { -83799.640625, 145.067482, 831748.812500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.792027, longitude = 44.572203 };
		sceneObjects = {'t:678986516'};
		chartOffsetX = 4179.000000;
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_7';
		type = BEACON_TYPE_PRMG_GLIDESLOPE;
		callsign = 'MK';
		frequency = 822000000.000000;
		channel = 22;
		position = { -83392.328125, 154.627688, 835512.437500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.790905, longitude = 44.618731 };
		sceneObjects = {'t:678986517'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_8';
		type = BEACON_TYPE_RSBN;
		callsign = 'MZ';
		frequency = 820000000.000000;
		channel = 20;
		position = { -83636.195313, 154.866778, 834226.937500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.790367, longitude = 44.602658 };
		sceneObjects = {'t:678987167'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_9';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MOZ';
		frequency = 117900000.000000;
		channel = 126;
		position = { -83599, 154.866778, 834553 };
		direction = 82.763916;
		positionGeo = { latitude = 43.790286, longitude = 44.606689 };
		sceneObjects = {'t:878937521'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_10';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMOZ';
		frequency = 15625000000.000000;
		channel = 18;
		position = { -83186.351563, 140.971363, 836579.000000 };
		direction = -97.236068;
		positionGeo = { latitude = 43.791382, longitude = 44.632072 };
		sceneObjects = {'t:878936868'};
		chartOffsetX = 4418.000000;
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_11';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15625000000.000000;
		channel = 18;
		position = { -83721.843750, 154.758959, 832917.312500 };
		direction = -97.236068;
		positionGeo = { latitude = 43.791251, longitude = 44.586565 };
		sceneObjects = {'t:878936869'};
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_12';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMDZ';
		frequency = 15655000000.000000;
		channel = 19;
		position = { -83799.640625, 145.067482, 831748.812500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.792027, longitude = 44.572203 };
		sceneObjects = {'t:878936870'};
		chartOffsetX = 4179.000000;
	};
	{
		display_name = _('Mozdok');
		beaconId = 'airfield28_13';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15655000000.000000;
		channel = 19;
		position = { -83392.328125, 154.627672, 835512.437500 };
		direction = 82.763916;
		positionGeo = { latitude = 43.790905, longitude = 44.618731 };
		sceneObjects = {'t:878936871'};
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'NL';
		frequency = 718000.000000;
		position = { -122005.132813, 376.161387, 764682.375000 };
		direction = 55.506625;
		positionGeo = { latitude = 43.535011, longitude = 43.692885 };
		sceneObjects = {'t:249790464'};
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'N';
		frequency = 350000.000000;
		position = { -123534.171875, 417.185293, 762457.062500 };
		direction = 55.506625;
		positionGeo = { latitude = 43.524039, longitude = 43.663409 };
		sceneObjects = {'t:248348672'};
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'INL';
		frequency = 110500000.000000;
		position = { -125664.609375, 430.357730, 759355.687500 };
		direction = 55.506625;
		positionGeo = { latitude = 43.508738, longitude = 43.622345 };
		sceneObjects = {'t:248317381'};
		chartOffsetX = 2453.000000;
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'INL';
		frequency = 110500000.000000;
		position = { -124349.562500, 430.010409, 761057.625000 };
		direction = 55.506625;
		positionGeo = { latitude = 43.518429, longitude = 43.645107 };
		sceneObjects = {'t:477462623'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_4';
		type = BEACON_TYPE_VORTAC;
		callsign = 'NAL';
		frequency = 109600000.000000;
		channel = 33;
		position = { -125664.609375, 430.357730, 759355.687500 };
		direction = 55.506625;
		positionGeo = { latitude = 43.518717, longitude = 43.649111 };
		sceneObjects = {'t:248743376'};
		chartOffsetX = 2453.000000;
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15445000000.000000;
		channel = 2;
		position = { -124349.562500, 430.010409, 761057.625000 };
		direction = 55.506625;
		positionGeo = { latitude = 43.518429, longitude = 43.645107 };
		sceneObjects = {'t:478249055'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Nalchik');
		beaconId = 'airfield27_6';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'INAL';
		frequency = 15445000000.000000;
		channel = 2;
		position = { -125664.609375, 430.357730, 759355.687500 };
		direction = 55.506625;
		positionGeo = { latitude = 43.508738, longitude = 43.622345 };
		sceneObjects = {'t:248743376'};
		chartOffsetX = 2453.000000;
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'BI';
		frequency = 335000.000000;
		position = { -281354.250000, 11.487805, 642080.000000 };
		direction = -85.299767;
		positionGeo = { latitude = 42.249592, longitude = 41.986317 };
		sceneObjects = {'t:192315398'};
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'B';
		frequency = 688000.000000;
		position = { -281575.500000, 23.342671, 644770.937500 };
		direction = -85.299767;
		positionGeo = { latitude = 42.245075, longitude = 42.018251 };
		sceneObjects = {'t:192348162'};
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ITS';
		frequency = 108900000.000000;
		position = { -281888.875000, 13.025524, 648576.312500 };
		direction = -85.299767;
		positionGeo = { latitude = 42.238667, longitude = 42.063400 };
		sceneObjects = {'t:192382037'};
		chartOffsetX = 2530.000000;
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ITS';
		frequency = 108900000.000000;
		position = { -281827.968750, 12.790726, 646370.875000 };
		direction = -85.299767;
		positionGeo = { latitude = 42.241309, longitude = 42.037080 };
		sceneObjects = {'t:371785767'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'TSK';
		frequency = 992000000.000000;
		channel = 31;
		position = { -281653.687500, 13.239942, 647182.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 42.242087, longitude = 42.047020 };
		sceneObjects = {'t:192382038'};
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_5';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ITSK';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -281888.875000, 13.025526, 648576.312500 };
		direction = -85.299767;
		positionGeo = { latitude = 42.238667, longitude = 42.063400 };
		sceneObjects = {'t:192775254'};
		chartOffsetX = 2530.000000;
	};
	{
		display_name = _('Senaki-Kolkhi');
		beaconId = 'airfield23_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -281827.968750, 12.790727, 646370.875000 };
		direction = -85.299767;
		positionGeo = { latitude = 42.241309, longitude = 42.037080 };
		sceneObjects = {'t:372572199'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_0';
		type = BEACON_TYPE_AIRPORT_HOMER_WITH_MARKER;
		callsign = 'CO';
		frequency = 761000.000000;
		position = { -165720.531250, 5.664159, 459873.468750 };
		direction = -117.994619;
		positionGeo = { latitude = 43.435164, longitude = 39.911051 };
		sceneObjects = {'t:233340945'};
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_1';
		type = BEACON_TYPE_ILS_LOCALIZER; --500' past 24 threshold for RWY06
		callsign = 'ISO';
		frequency = 111100000.000000;
		position = { -163681.031250, 23.129708, 463753.718750 };
		direction = -117.994619;
		positionGeo = { latitude = 43.450492, longitude = 39.960744 };
		sceneObjects = {'t:234586966'};
		chartOffsetX = 3265.000000;
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ISO';
		frequency = 111100000.000000;
		position = { -165170.921875, 30.010032, 461206.656250 };
		direction = -117.994619;
		positionGeo = { latitude = 43.439082, longitude = 39.927967 };
		sceneObjects = {'t:453247068'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_3';
		type = BEACON_TYPE_VORTAC;
		callsign = 'SCH';
		frequency = 110800000.000000;
		channel = 45;
		position = { -165643, 5.664159, 460063 };
		direction = -117.994619;
		positionGeo = { latitude = 43.435717, longitude = 39.913439 };
		sceneObjects = {'t:233734161'};
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_4';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ISCH';
		frequency = 15565000000.000000;
		channel = 6;
		position = { -163681.031250, 23.129704, 463753.718750 };
		direction = -117.994619;
		positionGeo = { latitude = 43.450492, longitude = 39.960744 };
		sceneObjects = {'t:234980179'};
		chartOffsetX = 3265.000000;
	};
	{
		display_name = _('Sochi-Adler');
		beaconId = 'airfield18_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'ISCH';
		frequency = 15565000000.000000;
		channel = 6;
		position = { -165170.921875, 30.010034, 461206.656250 };
		direction = -117.994619;
		positionGeo = { latitude = 43.439082, longitude = 39.927967 };
		sceneObjects = {'t:454033500'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Sukhumi-Babushara');
		beaconId = 'airfield20_0';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'AV';
		frequency = 489000.000000;
		position = { -223173.765625, 25.161868, 569571.375000 };
		direction = 116.485379;
		positionGeo = { latitude = 42.833582, longitude = 41.184697 };
		sceneObjects = {'t:214663172'};
	};
	{
		display_name = _('Sukhumi-Babushara');
		beaconId = 'airfield20_1';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'A';
		frequency = 995000.000000;
		position = { -221969.656250, 16.383441, 567154.750000 };
		direction = 116.485379;
		positionGeo = { latitude = 42.846418, longitude = 41.156849 };
		sceneObjects = {'t:214630400'};
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IVZ';
		frequency = 108750000.000000;
		position = { -320054.406250, 464.386573, 904121.937500 };
		direction = -44.514716;
		positionGeo = { latitude = 41.619095, longitude = 45.037014 };
		sceneObjects = {'t:176783899'};
		chartOffsetX = 2635.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IVZ';
		frequency = 108750000.000000;
		position = { -318477.937500, 464.599830, 902403.625000 };
		direction = -44.514716;
		positionGeo = { latitude = 41.635125, longitude = 45.019459 };
		sceneObjects = {'t:335675402'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IVI';
		frequency = 108750000.000000;
		position = { -318069.343750, 464.975410, 902170.187500 };
		direction = 135.485284;
		positionGeo = { latitude = 41.639015, longitude = 45.017397 };
		sceneObjects = {'t:177963349'};
		chartOffsetX = 2727.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IVI';
		frequency = 108750000.000000;
		position = { -319645.906250, 464.500495, 903888.250000 };
		direction = 135.485284;
		positionGeo = { latitude = 41.622985, longitude = 45.034950 };
		sceneObjects = {'t:334430229'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'VAS';
		frequency = 983000000.000000;
		channel = 22;
		position = { -319131, 464.500465, 903398};
		direction = 0.000000;
		positionGeo = { latitude = 41.630707, longitude = 45.027340 };
		sceneObjects = {'t:177963350'};
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_5';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IVZ';
		frequency = 15535000000.000000;
		channel = 15;
		position = { -320054.406250, 464.386573, 904121.937500 };
		direction = -44.514716;
		positionGeo = { latitude = 41.619095, longitude = 45.037014 };
		sceneObjects = {'t:177177116'};
		chartOffsetX = 2635.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15535000000.000000;
		channel = 15;
		position = { -318477.937500, 464.599830, 902403.625000 };
		direction = -44.514716;
		positionGeo = { latitude = 41.635125, longitude = 45.019459 };
		sceneObjects = {'t:336461834'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_7';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IVZ';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -318069.343750, 464.975410, 902170.187500 };
		direction = 135.485284;
		positionGeo = { latitude = 41.639015, longitude = 45.017397 };
		sceneObjects = {'t:178356562'};
		chartOffsetX = 2727.000000;
	};
	{
		display_name = _('Vaziani');
		beaconId = 'airfield31_8';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = '';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -319645.812500, 464.500465, 903888.500000 };
		direction = 135.485284;
		positionGeo = { latitude = 41.622986, longitude = 45.034953 };
		sceneObjects = {'t:335216661'};
		chartOffsetX = 120.000000;
	};
	{
		display_name = _('Ust-Labinks');
		beaconId = 'world_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'NZ';
		frequency = 330000.000000;
		position = { 31587.583984, 80.409993, 422850.937500 };
		direction = -179.999978;
		positionGeo = { latitude = 45.226576, longitude = 39.654150 };
		sceneObjects = {'t:310870017'};
	};
	{
		display_name = _('Chervonoglinskoye');
		beaconId = 'world_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'AR';
		frequency = 440000.000000;
		position = { 96729.375000, 5.000005, -379810.531250 };
		direction = -179.999978;
		positionGeo = { latitude = 45.949908, longitude = 29.383333 };
		sceneObjects = {'t:314638336'};
	};
	{
		display_name = _('Dmitrovka');
		beaconId = 'world_2';
		type = BEACON_TYPE_HOMER;
		callsign = 'DM';
		frequency = 690000.000000;
		position = { 41259.871094, 31.694215, 61344.707031 };
		direction = -179.999978;
		positionGeo = { latitude = 45.489353, longitude = 35.058601 };
		sceneObjects = {'t:313491456'};
	};
	{
		display_name = _('Agoy');
		beaconId = 'world_3';
		type = BEACON_TYPE_HOMER;
		callsign = 'AG';
		frequency = 381000.000000;
		position = { -93707.710938, 138.342149, 383231.062500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.133242, longitude = 39.034429 };
		sceneObjects = {'t:260145152'};
	};
	{
		display_name = _('Maykop');
		beaconId = 'world_4';
		type = BEACON_TYPE_HOMER;
		callsign = 'MA';
		frequency = 682000.000000;
		position = { -32141.814453, 243.757660, 467470.562500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.622965, longitude = 40.146927 };
		sceneObjects = {'t:287965184'};
	};
	{
		display_name = _('Herson');
		beaconId = 'world_5';
		type = BEACON_TYPE_HOMER;
		callsign = 'HS';
		frequency = 1065000.000000;
		position = { 170119.265625, 2.524128, -137766.031250 };
		direction = -179.999978;
		positionGeo = { latitude = 46.666575, longitude = 32.499994 };
		sceneObjects = {'t:314966016'};
	};
	{
		display_name = _('Smolenkaya');
		beaconId = 'world_6';
		type = BEACON_TYPE_HOMER;
		callsign = 'SM';
		frequency = 662000.000000;
		position = { -22412.445313, 78.688853, 359018.031250 };
		direction = -179.999978;
		positionGeo = { latitude = 44.787409, longitude = 38.796373 };
		sceneObjects = {'t:290390016'};
	};
	{
		display_name = _('Kislovodsk');
		beaconId = 'world_7';
		type = BEACON_TYPE_HOMER;
		callsign = 'KW';
		frequency = 995000.000000;
		position = { -87247.726563, 803.118113, 675046.687500 };
		direction = -179.999978;
		positionGeo = { latitude = 43.941577, longitude = 42.649979 };
		sceneObjects = {'t:263651328'};
	};
	{
		display_name = _('Taganrog');
		beaconId = 'world_8';
		type = BEACON_TYPE_HOMER;
		callsign = 'TC';
		frequency = 470000.000000;
		position = { 251346.781250, 5.000005, 341832.187500 };
		direction = -179.999978;
		positionGeo = { latitude = 47.249909, longitude = 38.833317 };
		sceneObjects = {'t:315555840'};
	};
	{
		display_name = _('Feodosiya');
		beaconId = 'world_9';
		type = BEACON_TYPE_HOMER;
		callsign = 'IL';
		frequency = 300500.000000;
		position = { -10721.782227, 0.302752, 91145.750000 };
		direction = -179.999978;
		positionGeo = { latitude = 45.014353, longitude = 35.419712 };
		sceneObjects = {'t:294322176'};
	};
	{
		display_name = _('Shyriaeve');
		beaconId = 'world_10';
		type = BEACON_TYPE_HOMER;
		callsign = 'SH';
		frequency = 389000.000000;
		position = { 255448.656250, 5.000005, -304739.375000 };
		direction = -179.999978;
		positionGeo = { latitude = 47.403241, longitude = 30.279998 };
		sceneObjects = {'t:315621376'};
	};
	{
		display_name = _('Odessa');
		beaconId = 'world_11';
		type = BEACON_TYPE_HOMER;
		callsign = 'OD';
		frequency = 348000.000000;
		position = { 132623.734375, 2.000002, -279618.625000 };
		direction = -179.999978;
		positionGeo = { latitude = 46.306297, longitude = 30.661109 };
		sceneObjects = {'t:314867712'};
	};
	{
		display_name = _('Yalta');
		beaconId = 'world_12';
		type = BEACON_TYPE_HOMER;
		callsign = 'BS';
		frequency = 300500.000000;
		position = { 202840.781250, 0.000000, 230918.171875 };
		direction = -179.999978;
		positionGeo = { latitude = 46.879909, longitude = 37.336930 };
		sceneObjects = {'t:315326464'};
	};
	{
		display_name = _('Stavropol');
		beaconId = 'world_13';
		type = BEACON_TYPE_HOMER;
		callsign = 'KT';
		frequency = 730000.000000;
		position = { 39516.828125, 352.025468, 622585.000000 };
		direction = -179.999978;
		positionGeo = { latitude = 45.121577, longitude = 42.181646 };
		sceneObjects = {'t:313458688'};
	};
	{
		display_name = _('Yegorlykskaya');
		beaconId = 'world_14';
		type = BEACON_TYPE_HOMER;
		callsign = 'ER';
		frequency = 435000.000000;
		position = { 189361.796875, 101.853572, 487761.812500 };
		direction = -179.999978;
		positionGeo = { latitude = 46.583243, longitude = 40.666647 };
		sceneObjects = {'t:315097088'};
	};
	{
		display_name = _('Komisarivka');
		beaconId = 'world_15';
		type = BEACON_TYPE_HOMER;
		callsign = 'KM';
		frequency = 950000.000000;
		position = { 127528.007813, 2.000002, 55884.429688 };
		direction = -179.999978;
		positionGeo = { latitude = 46.266575, longitude = 35.016657 };
		sceneObjects = {'t:314834944'};
	};
	{
		display_name = _('Skadovsk');
		beaconId = 'world_16';
		type = BEACON_TYPE_HOMER;
		callsign = 'SK';
		frequency = 680000.000000;
		position = { 110740.085938, 3.859469, -105954.679688 };
		direction = -179.999978;
		positionGeo = { latitude = 46.133242, longitude = 32.916660 };
		sceneObjects = {'t:314736640'};
	};
	{
		display_name = _('Gali');
		beaconId = 'world_17';
		type = BEACON_TYPE_HOMER;
		callsign = 'DA';
		frequency = 525000.000000;
		position = { -244178.796875, 132.854198, 621256.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 42.599910, longitude = 41.783315 };
		sceneObjects = {'t:207519744'};
	};
	{
		display_name = _('Mukhrani');
		beaconId = 'world_18';
		type = BEACON_TYPE_HOMER;
		callsign = 'DF';
		frequency = 520000.000000;
		position = { -292419.781250, 522.836949, 860239.062500 };
		direction = -179.999978;
		positionGeo = { latitude = 41.916577, longitude = 44.565533 };
		sceneObjects = {'t:187727872'};
	};
	{
		display_name = _('Ladozhskaya');
		beaconId = 'world_19';
		type = BEACON_TYPE_HOMER;
		callsign = 'RF';
		frequency = 324000.000000;
		position = { 39622.871094, 62.237573, 442914.437500 };
		direction = -179.999978;
		positionGeo = { latitude = 45.283243, longitude = 39.916649 };
		sceneObjects = {'t:313327616'};
	};
	{
		display_name = _('Teplorechensky');
		beaconId = 'world_20';
		type = BEACON_TYPE_HOMER;
		callsign = 'FM';
		frequency = 1182000.000000;
		position = { -54782.437500, 253.499033, 742905.812500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.154910, longitude = 43.533311 };
		sceneObjects = {'t:279248896'};
	};
	{
		display_name = _('Kalaus');
		beaconId = 'world_21';
		type = BEACON_TYPE_HOMER;
		callsign = 'BJ';
		frequency = 735000.000000;
		position = { -112412.046875, 347.660656, 889038.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 43.466578, longitude = 45.216642 };
		sceneObjects = {'t:253165568'};
	};
	{
		display_name = _('Nikolaev-Kulbakino');
		beaconId = 'world_22';
		type = BEACON_TYPE_HOMER;
		callsign = 'NK';
		frequency = 1030000.000000;
		position = { 200023.625000, 2.973928, -168025.390625 };
		direction = -179.999978;
		positionGeo = { latitude = 46.933241, longitude = 32.099995 };
		sceneObjects = {'t:315260928'};
	};
	{
		display_name = _('Manychsky');
		beaconId = 'world_23';
		type = BEACON_TYPE_HOMER;
		callsign = 'MN';
		frequency = 705000.000000;
		position = { 238988.843750, 93.700884, 459902.875000 };
		direction = -179.999978;
		positionGeo = { latitude = 47.049909, longitude = 40.366647 };
		sceneObjects = {'t:315457536'};
	};
	{
		display_name = _('Kerch');
		beaconId = 'world_24';
		type = BEACON_TYPE_HOMER;
		callsign = 'KC';
		frequency = 1050000.000000;
		position = { 31183.582031, 35.950666, 166738.031250 };
		direction = -179.999978;
		positionGeo = { latitude = 45.366575, longitude = 36.399988 };
		sceneObjects = {'t:309755904'};
	};
	{
		display_name = _('TaganrogYuzhny');
		beaconId = 'world_25';
		type = BEACON_TYPE_HOMER;
		callsign = 'TY';
		frequency = 720000.000000;
		position = { 245887.234375, 5.000005, 343510.562500 };
		direction = -179.999978;
		positionGeo = { latitude = 47.199909, longitude = 38.849984 };
		sceneObjects = {'t:315490304'};
	};
	{
		display_name = _('Ali');
		beaconId = 'world_26';
		type = BEACON_TYPE_HOMER;
		callsign = 'AL';
		frequency = 353000.000000;
		position = { -282495.468750, 723.020682, 781223.500000 };
		direction = -179.999978;
		positionGeo = { latitude = 42.096021, longitude = 43.644701 };
		sceneObjects = {'t:193298432'};
	};
	{
		display_name = _('Elista');
		beaconId = 'world_27';
		type = BEACON_TYPE_HOMER;
		callsign = 'SA';
		frequency = 311000.000000;
		position = { 200185.218750, 88.166821, 771829.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 46.373244, longitude = 44.333308 };
		sceneObjects = {'t:315293696'};
	};
	{
		display_name = _('Ryazanskaya');
		beaconId = 'world_28';
		type = BEACON_TYPE_HOMER;
		callsign = 'XT';
		frequency = 312000.000000;
		position = { 2140.257080, 45.922802, 418337.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 44.966576, longitude = 39.566650 };
		sceneObjects = {'t:298909696'};
	};
	{
		display_name = _('Kakhovka');
		beaconId = 'world_29';
		type = BEACON_TYPE_HOMER;
		callsign = 'KH';
		frequency = 485000.000000;
		position = { 185859.781250, 3.237596, -61623.343750 };
		direction = -179.999978;
		positionGeo = { latitude = 46.808241, longitude = 33.496659 };
		sceneObjects = {'t:315064320'};
	};
	{
		display_name = _('Vesely');
		beaconId = 'world_30';
		type = BEACON_TYPE_HOMER;
		callsign = 'WS';
		frequency = 641000.000000;
		position = { 248966.796875, 7.052212, 485735.125000 };
		direction = -179.999978;
		positionGeo = { latitude = 47.116576, longitude = 40.716647 };
		sceneObjects = {'t:315523072'};
	};
	{
		display_name = _('Odessa');
		beaconId = 'world_31';
		type = BEACON_TYPE_HOMER;
		callsign = 'WR';
		frequency = 309500.000000;
		position = { 153563.031250, 2.412611, -274177.906250 };
		direction = -179.999978;
		positionGeo = { latitude = 46.496019, longitude = 30.723886 };
		sceneObjects = {'t:314933248'};
	};
	{
		display_name = _('Armavir');
		beaconId = 'world_32';
		type = BEACON_TYPE_HOMER;
		callsign = 'VM';
		frequency = 740000.000000;
		position = { 13270.845703, 232.423328, 540570.375000 };
		direction = -179.999978;
		positionGeo = { latitude = 44.966576, longitude = 41.116648 };
		sceneObjects = {'t:304939008'};
	};
	{
		display_name = _('Grozny');
		beaconId = 'world_33';
		type = BEACON_TYPE_HOMER;
		callsign = 'WK';
		frequency = 830000.000000;
		position = { -115728.125000, 6.828314, 929610.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 43.383244, longitude = 45.699975 };
		sceneObjects = {'t:251658240'};
	};
	{
		display_name = _('Tiraspol');
		beaconId = 'world_34';
		type = BEACON_TYPE_HOMER;
		callsign = 'TH';
		frequency = 515000.000000;
		position = { 197836.031250, 5.000005, -358637.031250 };
		direction = -179.999978;
		positionGeo = { latitude = 46.866575, longitude = 29.599999 };
		sceneObjects = {'t:315195392'};
	};
	{
		display_name = _('Simferopol');
		beaconId = 'world_35';
		type = BEACON_TYPE_HOMER;
		callsign = 'KC';
		frequency = 580000.000000;
		position = { -42789.855469, 44.657801, -54661.699219 };
		direction = -179.999978;
		positionGeo = { latitude = 44.749908, longitude = 33.566659 };
		sceneObjects = {'t:282329088'};
	};
	{
		display_name = _('Sultanskoye');
		beaconId = 'world_36';
		type = BEACON_TYPE_HOMER;
		callsign = 'SN';
		frequency = 866000.000000;
		position = { -14871.457031, 377.109447, 667798.187500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.591577, longitude = 42.666645 };
		sceneObjects = {'t:294289408'};
	};
	{
		display_name = _('Buyalyk');
		beaconId = 'world_37';
		type = BEACON_TYPE_HOMER;
		callsign = 'DW';
		frequency = 625000.000000;
		position = { 198494.375000, 5.000005, -274699.250000 };
		direction = -179.999978;
		positionGeo = { latitude = 46.899908, longitude = 30.699997 };
		sceneObjects = {'t:315228160'};
	};
	{
		display_name = _('Sarmakovo');
		beaconId = 'world_38';
		type = BEACON_TYPE_HOMER;
		callsign = 'SR';
		frequency = 907000.000000;
		position = { -104016.257813, 1117.211933, 715148.062500 };
		direction = -179.999978;
		positionGeo = { latitude = 43.749910, longitude = 43.116645 };
		sceneObjects = {'t:255787008'};
	};
	{
		display_name = _('Tendrovskiy');
		beaconId = 'world_39';
		type = BEACON_TYPE_HOMER;
		callsign = 'TD';
		frequency = 309500.000000;
		position = { 132383.515625, 1.000001, -213243.359375 };
		direction = -179.999978;
		positionGeo = { latitude = 46.318519, longitude = 31.522774 };
		sceneObjects = {'t:314900480'};
	};
	{
		display_name = _('Sukhoy');
		beaconId = 'world_40';
		type = BEACON_TYPE_HOMER;
		callsign = 'SH';
		frequency = 862000.000000;
		position = { 252081.109375, 13.852774, 533942.125000 };
		direction = -179.999978;
		positionGeo = { latitude = 47.099910, longitude = 41.349979 };
		sceneObjects = {'t:315588608'};
	};
	{
		display_name = _('Dzhubga');
		beaconId = 'world_41';
		type = BEACON_TYPE_HOMER;
		callsign = 'DV';
		frequency = 420000.000000;
		position = { -74816.820313, 63.208540, 355136.062500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.320464, longitude = 38.701374 };
		sceneObjects = {'t:268468224'};
	};
	{
		display_name = _('Genichesk');
		beaconId = 'world_42';
		type = BEACON_TYPE_HOMER;
		callsign = 'GE';
		frequency = 300500.000000;
		position = { 117802.703125, 1.887341, 40644.195313 };
		direction = -179.999978;
		positionGeo = { latitude = 46.182408, longitude = 34.816102 };
		sceneObjects = {'t:314769408'};
	};
	{
		display_name = _('Primorsko-Akhtarsk');
		beaconId = 'world_43';
		type = BEACON_TYPE_HOMER;
		callsign = 'GW';
		frequency = 920000.000000;
		position = { 114807.015625, 8.405183, 305325.968750 };
		direction = -179.999978;
		positionGeo = { latitude = 46.049909, longitude = 38.233318 };
		sceneObjects = {'t:314802176'};
	};
	{
		display_name = _('Yasnaya');
		beaconId = 'world_44';
		type = BEACON_TYPE_HOMER;
		callsign = 'QG';
		frequency = 435000.000000;
		position = { 222679.156250, 98.023337, 484495.906250 };
		direction = -179.999978;
		positionGeo = { latitude = 46.883243, longitude = 40.666647 };
		sceneObjects = {'t:315392000'};
	};
	{
		display_name = _('Alushta');
		beaconId = 'world_45';
		type = BEACON_TYPE_HOMER;
		callsign = 'AL';
		frequency = 384000.000000;
		position = { -50326.164063, 5.000005, 11313.958008 };
		direction = -179.999978;
		positionGeo = { latitude = 44.674908, longitude = 34.398325 };
		sceneObjects = {'t:279412736'};
	};
	{
		display_name = _('Dobrushyn');
		beaconId = 'world_46';
		type = BEACON_TYPE_HOMER;
		callsign = 'DO';
		frequency = 1175000.000000;
		position = { 26887.388672, 50.001286, -71200.710938 };
		direction = -179.999978;
		positionGeo = { latitude = 45.377964, longitude = 33.361660 };
		sceneObjects = {'t:308346880'};
	};
	{
		display_name = _('Bolshevik');
		beaconId = 'world_47';
		type = BEACON_TYPE_HOMER;
		callsign = 'ND';
		frequency = 507000.000000;
		position = { 95501.281250, 65.056957, 462884.593750 };
		direction = -179.999978;
		positionGeo = { latitude = 45.766576, longitude = 40.233315 };
		sceneObjects = {'t:314671104'};
	};
	{
		display_name = _('Peredovay');
		beaconId = 'world_48';
		type = BEACON_TYPE_HOMER;
		callsign = 'PR';
		frequency = 1210000.000000;
		position = { -78315.664063, 631.934653, 578030.812500 };
		direction = -179.999978;
		positionGeo = { latitude = 44.116576, longitude = 41.466648 };
		sceneObjects = {'t:267321344'};
	};
	{
		display_name = _('Parutine');
		beaconId = 'world_49';
		type = BEACON_TYPE_HOMER;
		callsign = 'PA';
		frequency = 905000.000000;
		position = { 173728.484375, 2.022021, -183237.750000 };
		direction = -179.999978;
		positionGeo = { latitude = 46.694908, longitude = 31.904995 };
		sceneObjects = {'t:315031552'};
	};
	{
		display_name = _('Gori');
		beaconId = 'world_50';
		type = BEACON_TYPE_HOMER;
		callsign = 'OE';
		frequency = 462000.000000;
		position = { -286124.312500, 604.993647, 822770.125000 };
		direction = -179.999978;
		positionGeo = { latitude = 42.016577, longitude = 44.132200 };
		sceneObjects = {'t:191463424'};
	};
	{
		display_name = _('Liubymivka');
		beaconId = 'world_51';
		type = BEACON_TYPE_HOMER;
		callsign = 'LY';
		frequency = 670000.000000;
		position = { 56011.175781, 50.001397, 48464.128906 };
		direction = -179.999978;
		positionGeo = { latitude = 45.624908, longitude = 34.898324 };
		sceneObjects = {'t:314310656'};
	};
	{
		display_name = _('Mariupol');
		beaconId = 'world_52';
		type = BEACON_TYPE_HOMER;
		callsign = 'MA';
		frequency = 770000.000000;
		position = { 225914.703125, 2.405937, 238245.421875 };
		direction = -179.999978;
		positionGeo = { latitude = 47.083242, longitude = 37.449986 };
		sceneObjects = {'t:315424768'};
	};
	{
		display_name = _('Akhilleon');
		beaconId = 'world_53';
		type = BEACON_TYPE_HOMER;
		callsign = 'AH';
		frequency = 300500.000000;
		position = { 40930.476563, 77.227120, 201825.687500 };
		direction = -179.999978;
		positionGeo = { latitude = 45.439909, longitude = 36.853043 };
		sceneObjects = {'t:312410112'};
	};
	{
		display_name = _('Nikolaev-Matveyevka');
		beaconId = 'world_54';
		type = BEACON_TYPE_HOMER;
		callsign = 'NK';
		frequency = 1030000.000000;
		position = { 217274.171875, 3.520703, -177463.687500 };
		direction = -179.999978;
		positionGeo = { latitude = 47.087408, longitude = 31.973051 };
		sceneObjects = {'t:315359232'};
	};
	{
		display_name = _('Melitopol');
		beaconId = 'world_55';
		type = BEACON_TYPE_HOMER;
		callsign = 'NE';
		frequency = 740000.000000;
		position = { 194790.437500, 2.729047, 75772.835938 };
		direction = -179.999978;
		positionGeo = { latitude = 46.866575, longitude = 35.299989 };
		sceneObjects = {'t:315129856'};
	};
	{
		display_name = _('TchervonoLissya');
		beaconId = 'world_56';
		type = BEACON_TYPE_HOMER;
		callsign = 'LE';
		frequency = 395000.000000;
		position = { -32929.128906, 419.738579, -713.123108 };
		direction = -179.999978;
		positionGeo = { latitude = 44.833242, longitude = 34.249992 };
		sceneObjects = {'t:285278208'};
	};
	{
		display_name = _('Tikhoretsk');
		beaconId = 'world_57';
		type = BEACON_TYPE_HOMER;
		callsign = 'UH';
		frequency = 528000.000000;
		position = { 101857.085938, 60.508731, 450564.000000 };
		direction = -179.999978;
		positionGeo = { latitude = 45.833243, longitude = 40.083315 };
		sceneObjects = {'t:314703872'};
	};
	{
		display_name = _('Rostov-Na-Donu');
		beaconId = 'world_58';
		type = BEACON_TYPE_HOMER;
		callsign = 'RE';
		frequency = 320000.000000;
		position = { 254315.078125, 64.840397, 412917.500000 };
		direction = -179.999978;
		positionGeo = { latitude = 47.224909, longitude = 39.769982 };
		sceneObjects = {'t:315654144'};
	};
	{
		display_name = _('Lazarevskoye');
		beaconId = 'world_59';
		type = BEACON_TYPE_HOMER;
		callsign = 'LA';
		frequency = 307000.000000;
		position = { -115885.585938, 55.133200, 409331.031250 };
		direction = -179.999978;
		positionGeo = { latitude = 43.917131, longitude = 39.337484 };
		sceneObjects = {'t:250281987'};
	};
	{
		display_name = _('Berdyansk');
		beaconId = 'world_60';
		type = BEACON_TYPE_HOMER;
		callsign = 'BD';
		frequency = 342000.000000;
		position = { 193557.578125, 2.010851, 187810.609375 };
		direction = -179.999978;
		positionGeo = { latitude = 46.816575, longitude = 36.766654 };
		sceneObjects = {'t:315162624'};
	};
	{
		display_name = _('Kropotkin');
		beaconId = 'world_61';
		type = BEACON_TYPE_HOMER;
		callsign = 'KP';
		frequency = 214000.000000;
		position = { 62738.718750, 125.442501, 492136.125000 };
		direction = -179.999978;
		positionGeo = { latitude = 45.449909, longitude = 40.566648 };
		sceneObjects = {'t:314507264'};
	};
	{
		display_name = _('Lymans-Ke');
		beaconId = 'world_62';
		type = BEACON_TYPE_HOMER;
		callsign = 'LA';
		frequency = 750000.000000;
		position = { 174369.812500, 5.000005, -329002.812500 };
		direction = -179.999978;
		positionGeo = { latitude = 46.666575, longitude = 29.999999 };
		sceneObjects = {'t:314998784'};
	};
	{
		display_name = _('Krasny');
		beaconId = 'world_63';
		type = BEACON_TYPE_HOMER;
		callsign = 'KS';
		frequency = 1025000.000000;
		position = { 255528.015625, 5.000005, 457062.968750 };
		direction = -179.999978;
		positionGeo = { latitude = 47.199909, longitude = 40.349981 };
		sceneObjects = {'t:315686912'};
	};
}
