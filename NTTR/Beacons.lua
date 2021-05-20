dofile('Scripts/Database/wsTypes.lua')
dofile('Scripts/World/Radio/BeaconTypes.lua')
dofile('Scripts/World/Radio/BeaconSites.lua')

local disableNauticalBeacons = true

local gettext = require("i_18n")
local       _ = gettext.translate

--WORLD BEACONS

--[[
	NTTR beacon mod v.1.0, updated December 22nd, 2018 by TonyG. Last checked with DCS v2.7.1.6430 (May 20,2021)
	
	General info:
	I have added ICLS beacons for the F/A-18C for all runways that were already equipped with regular ILS  
	
	I give a lot of credit to drPhibes for detailing how to do this on the forums.  Thank you!
	Readme located https://github.com/madmoney99/Caucasus-and-NTTR-ICLS-Mod
	
	Added beacons:
	- Tonopah Test Range
	- ICLS Runway 14 Channel 4
	- ICLS Runway 32 Channel 5

	- Groom Lake
	- ICLS Runway 32R Channel 9

	- Creech AFB
	- ICLS Runway 08 Channel 8
	- ICLS Runway 13 Channel 13

	- North Las Vegas
	- ICLS Runway 12L Channel 12

	- Nellus
	- ICLS Runway 21L Channel 1

	- McCarran
	- ICLS Runway 25L Channel 10
	- ICLS Runway 25R Channel 16

]]--

beaconsTableFormat = 2
beacons = {
	{
		display_name = _('');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ICRR';
		frequency = 108700000.000000;
		channel = 24;
		position = { -360394.218750, 952.944679, -76976.257813 };
		direction = -88.617531;
		positionGeo = { latitude = 36.585008, longitude = -115.691917 };
		sceneObjects = {'t:85164032'};
	};
	{
		display_name = _('');
		beaconId = 'airfield1_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ICRR';
		frequency = 108700000.000000;
		channel = 24;
		position = { -360542.968750, 951.059301, -74232.171875 };
		direction = -88.457008;
		positionGeo = { latitude = 36.583327, longitude = -115.661273 };
		sceneObjects = {'t:43451408'};
		chartOffsetX = 3370.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield1_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ICRS';
		frequency = 108500000.000000;
		channel = 22;
		position = { -360622.437500, 952.943336, -74673.570313 };
		direction = -34.860002;
		positionGeo = { latitude = 36.582666, longitude = -115.666218 };
		sceneObjects = {'t:43451409'};
		chartOffsetX = 1912.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield1_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ICRS';
		frequency = 108500000.000000;
		channel = 22;
		position = { -359425.093750, 952.943397, -75627.359375 };
		direction = -35.359670;
		positionGeo = { latitude = 36.593576, longitude = -115.676693 };
		sceneObjects = {'t:85196813'};
	};
	{
		display_name = _('IndianSprings');
		beaconId = 'airfield1_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'INS';
		channel = 87;
		position = { -360368.562500, 952.943458, -75045.421875 };
		direction = -88.835728;
		positionGeo = { latitude = 36.585001, longitude = -115.670334 };
		sceneObjects = {'t:43614213'};
	};
	{
		display_name = _('');
		beaconId = 'airfield1_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'ICRR';
		frequency = 15625000000.000000;
		channel = 8;
		position = { -360394.218750, 952.944679, -76976.257813 };
		direction = -88.617531;
		positionGeo = { latitude = 36.585008, longitude = -115.691917 };
		sceneObjects = {'t:85164032'};
	};
	{
		display_name = _('');
		beaconId = 'airfield1_6';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ICRR';
		frequency = 15625000000.000000;
		channel = 8;
		position = { -360542.968750, 951.059301, -74232.171875 };
		direction = -88.457008;
		positionGeo = { latitude = 36.583327, longitude = -115.661273 };
		sceneObjects = {'t:43451408'};
		chartOffsetX = 3370.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield1_7';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'ICRS';
		frequency = 15475000000.000000;
		channel = 13;
		position = { -360622.437500, 952.943336, -74673.570313 };
		direction = -34.860002;
		positionGeo = { latitude = 36.582666, longitude = -115.666218 };
		sceneObjects = {'t:43451409'};
		chartOffsetX = 1912.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield1_8';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'ICRS';
		frequency = 15475000000.000000;
		channel = 13;
		position = { -359425.093750, 952.943397, -75627.359375 };
		direction = -35.359670;
		positionGeo = { latitude = 36.593576, longitude = -115.676693 };
		sceneObjects = {'t:85196813'};
	};
	{
		display_name = _('');
		beaconId = 'airfield2_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'GLRI';
		frequency = 109300000.000000;
		channel = 30;
		position = { -286660.593750, 1357.831924, -87720.343750 };
		direction = 156.426878;
		positionGeo = { latitude = 37.250797, longitude = -115.801637 };
		sceneObjects = {'t:46661634'};
		chartOffsetX = 4269.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield2_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'GLRI';
		frequency = 109300000.000000;
		channel = 30;
		position = { -290061.156250, 1369.163234, -86409.328125 };
		direction = 156.426864;
		positionGeo = { latitude = 37.220000, longitude = -115.787349 };
		sceneObjects = {'t:96927881'};
	};
	{
		display_name = _('Groom_Lake');
		beaconId = 'airfield2_2';
		type = BEACON_TYPE_TACAN;
		callsign = 'GRL';
		channel = 18;
		position = { -288771.781250, 1363.947653, -87782.398438 };
		direction = -23.573122;
		positionGeo = { latitude = 37.231778, longitude = -115.802638 };
		sceneObjects = {'t:46432495'};
	};
	{
		display_name = _('');
		beaconId = 'airfield2_3';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'GLRI';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -286660.593750, 1357.831924, -87720.343750 };
		direction = 156.426878;
		positionGeo = { latitude = 37.250797, longitude = -115.801637 };
		sceneObjects = {'t:46661634'};
		chartOffsetX = 4269.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield2_4';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'GLRI';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -290061.156250, 1369.163234, -86409.328125 };
		direction = 156.426864;
		positionGeo = { latitude = 37.220000, longitude = -115.787349 };
		sceneObjects = {'t:96927881'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'I-RLE';
		frequency = 111750000.000000;
		position = { -416373.156250, 631.500204, -25578.058594 };
		direction = 89.345650;
		positionGeo = { latitude = 36.072917, longitude = -115.129710 };
		sceneObjects = {'t:68454835'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'I-LAS';
		frequency = 110300000.000000;
		channel = 40;
		position = { -416071.343750, 634.169579, -25586.156250 };
		direction = 89.345650;
		positionGeo = { latitude = 36.075638, longitude = -115.129735 };
		sceneObjects = {'t:68454836'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'I-RLE';
		frequency = 111750000.000000;
		position = { -416353.000000, 662.861320, -28740.046875 };
		direction = 88.846008;
		positionGeo = { latitude = 36.073641, longitude = -115.164803 };
		sceneObjects = {'t:35425198'};
		chartOffsetX = 3623.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield3_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'I-LAS';
		frequency = 110300000.000000;
		channel = 40;
		position = { -416063.500000, 664.091545, -29393.269531 };
		direction = 88.846008;
		positionGeo = { latitude = 36.076361, longitude = -115.171993 };
		sceneObjects = {'t:35425199'};
		chartOffsetX = 4696.000000;
	};
	{
		display_name = _('LasVegas');
		beaconId = 'airfield3_4';
		type = BEACON_TYPE_VORTAC;
		callsign = 'LAS';
		frequency = 116900000.000000;
		channel = 116;
		position = { -415686.093750, 657.922167, -28303.363281 };
		direction = -179.199384;
		positionGeo = { latitude = 36.079576, longitude = -115.159816 };
		sceneObjects = {'t:69208380'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'I-RLE';
		frequency = 15685000000.000000;
		channel = 10;
		position = { -416373.156250, 631.500204, -25578.058594 };
		direction = 89.345650;
		positionGeo = { latitude = 36.072917, longitude = -115.129710 };
		sceneObjects = {'t:68454835'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'I-LAS';
		frequency = 15565000000.000000;
		channel = 16;
		position = { -416071.343750, 634.169579, -25586.156250 };
		direction = 89.345650;
		positionGeo = { latitude = 36.075638, longitude = -115.129735 };
		sceneObjects = {'t:68454836'};
	};
	{
		display_name = _('');
		beaconId = 'airfield3_7';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'I-RLE';
		frequency = 15685000000.000000;
		channel = 10;
		position = { -416353.000000, 662.861320, -28740.046875 };
		direction = 88.846008;
		positionGeo = { latitude = 36.073641, longitude = -115.164803 };
		sceneObjects = {'t:35425198'};
		chartOffsetX = 3623.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield3_8';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'I-LAS';
		frequency = 15565000000.000000;
		channel = 16;
		position = { -416063.500000, 664.091545, -29393.269531 };
		direction = 88.846008;
		positionGeo = { latitude = 36.076361, longitude = -115.171993 };
		sceneObjects = {'t:35425199'};
		chartOffsetX = 4696.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IDIQ';
		frequency = 109100000.000000;
		position = { -397384.687500, 563.598708, -16357.164063 };
		direction = 40.016713;
		positionGeo = { latitude = 36.242368, longitude = -115.023073 };
		sceneObjects = {'t:76480576'};
	};
	{
		display_name = _('Nellis');
		beaconId = 'airfield4_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'LSV';
		channel = 12;
		position = { -397135.937500, 564.647537, -16545.675781 };
		direction = -141.002194;
		positionGeo = { latitude = 36.244644, longitude = -115.025113 };
		sceneObjects = {'t:41518840'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IDIQ';
		frequency = 109100000.000000;
		position = { -399661.156250, 559.453440, -18468.027344 };
		direction = 40.110013;
		positionGeo = { latitude = 36.222242, longitude = -115.047062 };
		sceneObjects = {'t:40537962'};
		chartOffsetX = 3753.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_3';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IDIQ';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -397384.687500, 563.598708, -16357.164063 };
		direction = 40.016713;
		positionGeo = { latitude = 36.242368, longitude = -115.023073 };
		sceneObjects = {'t:76480576'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_4';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IDIQ';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -399661.156250, 559.453440, -18468.027344 };
		direction = 40.110013;
		positionGeo = { latitude = 36.222242, longitude = -115.047062 };
		sceneObjects = {'t:40537962'};
		chartOffsetX = 3753.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield15_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'I-HWG';
		frequency = 110700000.000000;
		position = { -401983.125000, 680.775461, -30840.599609 };
		direction = -46.742991;
		positionGeo = { latitude = 36.203486, longitude = -115.185139 };
		sceneObjects = {'t:39029307'};
		chartOffsetX = 1420.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield15_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'I-HWG';
		frequency = 110700000.000000;
		position = { -401152.406250, 679.279671, -31581.777344 };
		direction = -46.552826;
		positionGeo = { latitude = 36.211096, longitude = -115.193207 };
		sceneObjects = {'t:75498832'};
	};
	{
		display_name = _('');
		beaconId = 'airfield15_2';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'I-HWG';
		frequency = 15445000000.000000;
		channel = 12;
		position = { -401983.125000, 680.775461, -30840.599609 };
		direction = -46.742991;
		positionGeo = { latitude = 36.203486, longitude = -115.185139 };
		sceneObjects = {'t:39029307'};
		chartOffsetX = 1420.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield15_3';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'I-HWG';
		frequency = 15445000000.000000;
		channel = 12;
		position = { -401152.406250, 679.279671, -31581.777344 };
		direction = -46.552826;
		positionGeo = { latitude = 36.211096, longitude = -115.193207 };
		sceneObjects = {'t:75498832'};
	};
	{
		display_name = _('');
		beaconId = 'airfield18_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'I-RVP';
		frequency = 108300000.000000;
		position = { -228754.375000, 1686.814187, -173747.390625 };
		direction = -22.918000;
		positionGeo = { latitude = 37.778583, longitude = -116.770052 };
		sceneObjects = {'t:48037928'};
		chartOffsetX = 4585.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield18_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'I-UVV';
		frequency = 111700000.000000;
		position = { -224471.734375, 1686.831765, -175559.625000 };
		direction = 157.100006;
		positionGeo = { latitude = 37.817221, longitude = -116.790522 };
		sceneObjects = {'t:48103431'};
		chartOffsetX = 4330.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield18_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'I-UVV';
		frequency = 111700000.000000;
		position = { -228097.671875, 1686.814187, -174188.000000 };
		direction = 157.226653;
		positionGeo = { latitude = 37.784512, longitude = -116.775037 };
		sceneObjects = {'t:104726551'};
	};
	{
		display_name = _('');
		beaconId = 'airfield18_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'I-RVP';
		frequency = 108300000.000000;
		position = { -225076.921875, 1686.677590, -175461.531250 };
		direction = -23.276422;
		positionGeo = { latitude = 37.811765, longitude = -116.789423 };
		sceneObjects = {'t:105250849'};
	};
	{
		display_name = _('Silverbow');
		beaconId = 'airfield18_4';
		type = BEACON_TYPE_VORTAC;
		callsign = 'TQQ';
		frequency = 113000000.000000;
		channel = 77;
		position = { -227436.906250, 1689.104961, -174559.000000 };
		direction = -24.171670;
		positionGeo = { latitude = 37.790475, longitude = -116.779233 };
		sceneObjects = {'t:104726560'};
	};
	{
		display_name = _('');
		beaconId = 'airfield18_1';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'I-UVV';
		frequency = 15535000000.000000;
		channel = 5;
		position = { -224471.734375, 1686.831765, -175559.625000 };
		direction = 157.100006;
		positionGeo = { latitude = 37.817221, longitude = -116.790522 };
		sceneObjects = {'t:48103431'};
		chartOffsetX = 4330.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield18_6';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'I-UVV';
		frequency = 15535000000.000000;
		channel = 5;
		position = { -228097.671875, 1686.814187, -174188.000000 };
		direction = 157.226653;
		positionGeo = { latitude = 37.784512, longitude = -116.775037 };
		sceneObjects = {'t:104726551'};
	};
	{
		display_name = _('');
		beaconId = 'airfield18_7';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'I-RVP';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -228754.375000, 1686.814187, -173747.390625 };
		direction = -22.918000;
		positionGeo = { latitude = 37.778583, longitude = -116.770052 };
		sceneObjects = {'t:48037928'};
		chartOffsetX = 4585.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield18_8';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'I-RVP';
		frequency = 15505000000.000000;
		channel = 4;
		position = { -225076.921875, 1686.677590, -175461.531250 };
		direction = -23.276422;
		positionGeo = { latitude = 37.811765, longitude = -116.789423 };
		sceneObjects = {'t:105250849'};
	};
	{
		display_name = _('StGeorge');
		beaconId = 'world_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'UTI';
		frequency = 108600000.000000;
		channel = 23;
		position = { -299933.843750, 874.956686, 108917.281250 };
		direction = 0.000000;
		positionGeo = { latitude = 37.088212, longitude = -113.592167 };
		sceneObjects = {'t:94374515'};
	};
	{
		display_name = _('GrandCanyon');
		beaconId = 'world_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'GCN';
		frequency = 113100000.000000;
		channel = 78;
		position = { -419559.718750, 2024.336253, 243873.656250 };
		direction = 0.000000;
		positionGeo = { latitude = 35.960444, longitude = -112.145901 };
		sceneObjects = {'t:67960832'};
	};
	{
		display_name = _('Kingman');
		beaconId = 'world_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'IGM';
		frequency = 108800000.000000;
		channel = 25;
		position = { -503781.593750, 1039.009340, 84923.976563 };
		direction = 0.000000;
		positionGeo = { latitude = 35.260535, longitude = -113.934130 };
		sceneObjects = {'t:59342848'};
	};
	{
		display_name = _('ColoradoCity');
		beaconId = 'world_3';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'AZC';
		frequency = 403000.000000;
		position = { -312156.031250, 1481.302018, 161375.687500 };
		direction = 0.000000;
		positionGeo = { latitude = 36.959895, longitude = -113.008973 };
		sceneObjects = {'t:9076736'};
	};
	{
		display_name = _('Meggi');
		beaconId = 'world_4';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'EC';
		frequency = 217000.000000;
		position = { -219910.453125, 1680.801608, 156418.015625 };
		direction = 0.000000;
		positionGeo = { latitude = 37.791252, longitude = -113.020879 };
		sceneObjects = {'t:10846208'};
	};
	{
		display_name = _('Daggett');
		beaconId = 'world_5';
		type = BEACON_TYPE_VORTAC;
		callsign = 'DAG';
		frequency = 113200000.000000;
		channel = 79;
		position = { -541075.187500, 538.428761, -155482.531250 };
		direction = 0.000000;
		positionGeo = { latitude = 34.962384, longitude = -116.578128 };
		sceneObjects = {'t:55246848'};
	};
	{
		display_name = _('Hector');
		beaconId = 'world_6';
		type = BEACON_TYPE_VORTAC;
		callsign = 'HEC';
		frequency = 112700000.000000;
		channel = 74;
		position = { -559341.375000, 565.241410, -144867.312500 };
		direction = 0.000000;
		positionGeo = { latitude = 34.797214, longitude = -116.462929 };
		sceneObjects = {'t:52232192'};
	};
	{
		display_name = _('Needles');
		beaconId = 'world_7';
		type = BEACON_TYPE_VORTAC;
		callsign = 'EED';
		frequency = 115200000.000000;
		channel = 99;
		position = { -560035.000000, 198.369263, 37194.679688 };
		direction = 0.000000;
		positionGeo = { latitude = 34.765927, longitude = -114.473902 };
		sceneObjects = {'t:52461568'};
	};
	{
		display_name = _('Milford');
		beaconId = 'world_8';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MLF';
		frequency = 112100000.000000;
		channel = 58;
		position = { -156700.828125, 1517.318290, 154376.062500 };
		direction = -141.002194;
		positionGeo = { latitude = 38.360356, longitude = -113.013233 };
		sceneObjects = {'t:110788608'};
	};
	{
		display_name = _('GOFFS');
		beaconId = 'world_9';
		type = BEACON_TYPE_VORTAC;
		callsign = 'GFS';
		frequency = 114400000.000000;
		channel = 91;
		position = { -520917.281250, 1224.939335, -27855.832031 };
		direction = -141.002194;
		positionGeo = { latitude = 35.131167, longitude = -115.176500 };
		sceneObjects = {'t:57606144'};
	};
	{
		display_name = _('Tonopah');
		beaconId = 'world_10';
		type = BEACON_TYPE_VORTAC;
		callsign = 'TPH';
		frequency = 117200000.000000;
		channel = 119;
		position = { -200809.968750, 1631.569014, -196936.796875 };
		direction = -141.002194;
		positionGeo = { latitude = 38.030667, longitude = -117.033500 };
		sceneObjects = {'t:108527616'};
	};
	{
		display_name = _('Mina');
		beaconId = 'world_11';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MVA';
		frequency = 115100000.000000;
		channel = 98;
		position = { -140979.484375, 2342.236961, -283977.375000 };
		direction = -141.002194;
		positionGeo = { latitude = 38.565333, longitude = -118.032833 };
		sceneObjects = {'t:111411200'};
	};
	{
		display_name = _('WilsonCreek');
		beaconId = 'world_12';
		type = BEACON_TYPE_VORTAC;
		callsign = 'ILC';
		frequency = 116300000.000000;
		channel = 110;
		position = { -173244.484375, 2778.903658, 34027.542969 };
		direction = -141.002194;
		positionGeo = { latitude = 38.250167, longitude = -114.394167 };
		sceneObjects = {'t:110067712'};
	};
	{
		display_name = _('CedarCity');
		beaconId = 'world_13';
		type = BEACON_TYPE_VORTAC;
		callsign = 'CDC';
		frequency = 117300000.000000;
		channel = 120;
		position = { -220522.046875, 1664.931475, 152270.421875 };
		direction = -141.002194;
		positionGeo = { latitude = 37.787333, longitude = -113.068167 };
		sceneObjects = {'t:106201088'};
	};
	{
		display_name = _('BryceCanyon');
		beaconId = 'world_14';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BCE';
		frequency = 112800000.000000;
		channel = 75;
		position = { -228309.531250, 2711.394069, 220166.203125 };
		direction = -141.002194;
		positionGeo = { latitude = 37.689167, longitude = -112.303833 };
		sceneObjects = {'t:104824832'};
	};
	{
		display_name = _('MormonMesa');
		beaconId = 'world_15';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MMM';
		frequency = 114300000.000000;
		channel = 90;
		position = { -337286.562500, 641.303376, 48996.441406 };
		direction = -141.002194;
		positionGeo = { latitude = 36.769333, longitude = -114.277500 };
		sceneObjects = {'t:88801284'};
	};
	{
		display_name = _('Beatty');
		beaconId = 'world_16';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BTY';
		frequency = 114700000.000000;
		channel = 94;
		position = { -337247.562500, 890.306066, -171484.937500 };
		direction = -141.002194;
		positionGeo = { latitude = 36.800583, longitude = -116.747647 };
		sceneObjects = {'t:88080384'};
	};
	{
		display_name = _('Bishop');
		beaconId = 'world_17';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BIH';
		frequency = 109600000.000000;
		channel = 33;
		position = { -272456.593750, 1254.393100, -314982.750000 };
		direction = -141.002194;
		positionGeo = { latitude = 37.377000, longitude = -118.366500 };
		sceneObjects = {'t:99287040'};
	};
	{
		display_name = _('Coaldale');
		beaconId = 'world_18';
		type = BEACON_TYPE_VORTAC;
		callsign = 'OAL';
		frequency = 117700000.000000;
		channel = 124;
		position = { -203563.140625, 1462.989134, -261642.093750 };
		direction = -141.002194;
		positionGeo = { latitude = 38.003333, longitude = -117.770500 };
		sceneObjects = {'t:108068864'};
	};
	{
		display_name = _('PeachSprings');
		beaconId = 'world_19';
		type = BEACON_TYPE_VORTAC;
		callsign = 'PGS';
		frequency = 112000000.000000;
		channel = 57;
		position = { -462207.281250, 1448.867416, 118969.703125 };
		direction = -141.002194;
		positionGeo = { latitude = 35.624667, longitude = -113.544500 };
		sceneObjects = {'t:60784640'};
	};
	{
		display_name = _('BoulderCity');
		beaconId = 'world_20';
		type = BEACON_TYPE_VORTAC;
		callsign = 'BLD';
		frequency = 116700000.000000;
		channel = 114;
		position = { -424440.156250, 1080.227277, -1424.503052 };
		direction = 41.253552;
		positionGeo = { latitude = 35.995752, longitude = -114.863607 };
		sceneObjects = {'t:65438380'};
	};
	{
		display_name = _('Mercury');
		beaconId = 'world_21';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'MCY';
		frequency = 326000.000000;
		position = { -356041.718750, 1004.306546, -107048.789063 };
		direction = 0.000000;
		positionGeo = { latitude = 36.627456, longitude = -116.027531 };
		sceneObjects = {'t:8323107'};
	};
}
