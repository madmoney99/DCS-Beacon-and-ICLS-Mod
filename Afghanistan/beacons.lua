dofile('Scripts/Database/wsTypes.lua')
dofile('Scripts/World/Radio/BeaconTypes.lua')
dofile('Scripts/World/Radio/BeaconSites.lua')

local disableNauticalBeacons = true

local gettext = require("i_18n")
local       _ = gettext.translate

--WORLD BEACONS

beaconsTableFormat = 2
beacons = {
	{
		display_name = _('Bastion');
		beaconId = 'airfield10_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'BS';
		frequency = 423000.000000;
		position = { -236424.949032, 881.606350, -184781.809115 };
		direction = 91.745389;
		positionGeo = { latitude = 31.838947, longitude = 64.219237 };
		sceneObjects = {'t:22457259'};
	};
	{
		display_name = _('Bastion');
		beaconId = 'airfield10_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'BAS';
		frequency = 115100000.000000;
		channel = 98;
		position = { -237491.296875, 878.830713, -184979.390625 };
		direction = 80.602872;
		positionGeo = { latitude = 31.829349, longitude = 64.217023 };
		sceneObjects = {'t:61065434'};
	};
	{
		display_name = _('Dwyer');
		beaconId = 'airfield11_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'ADY';
		channel = 46;
		position = { -319576.807674, 733.406434, -198382.794916 };
		direction = 0.000000;
		positionGeo = { latitude = 31.090132, longitude = 64.066980 };
		sceneObjects = {'t:47675049'};
	};
	{
		display_name = _('Herat');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'AHR';
		frequency = 116200000.000000;
		channel = 109;
		position = { 25702.060547, 981.070561, -370818.312500 };
		direction = -82.043522;
		positionGeo = { latitude = 34.206865, longitude = 62.232903 };
		sceneObjects = {'t:35103335'};
	};
	{
		display_name = _('Herat');
		beaconId = 'airfield1_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'HRT';
		frequency = 412000.000000;
		position = { 26196.265625, 979.957523, -370938.437500 };
		direction = 3.518190;
		positionGeo = { latitude = 34.211313, longitude = 62.231559 };
		sceneObjects = {'t:82356028'};
	};
	{
		display_name = _('Herat');
		beaconId = 'airfield1_2';
		type = BEACON_TYPE_TACAN;
		callsign = 'HRT';
		channel = 54;
		position = { 25756.282565, 987.023692, -371485.461879 };
		direction = 0.000000;
		positionGeo = { latitude = 34.207308, longitude = 62.225658 };
		sceneObjects = {'t:82354459'};
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'KAF';
		channel = 75;
		position = { -270488.187500, 1013.227759, -29608.345703 };
		direction = 0.000000;
		positionGeo = { latitude = 31.505738, longitude = 65.848514 };
		sceneObjects = {'t:53487288'};
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KDR';
		frequency = 116000000.000000;
		channel = 107;
		position = { -271821.750000, 1004.766203, -31793.058594 };
		direction = 0.000000;
		positionGeo = { latitude = 31.494230, longitude = 65.825174 };
		sceneObjects = {'t:15296830'};
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-2'; --rwy 23
		type = BEACON_TYPE_ILS_GLIDESLOPE;  --offset 500' laterally from TDZ
		callsign = 'OKN';
		frequency = 108550000;
		position = { -269591, 1017, -28728 }; --metric CCS
		direction = 53.7;
		positionGeo = { latitude = 31.513611, longitude = 65.857778 }; --convert to decimal degrees
		sceneObjects = {'t:319096009'};
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-3'; --rwy 23
		type = BEACON_TYPE_ILS_LOCALIZER; --located 200' off the far end of the runway
		callsign = 'OKN';
		frequency = 108550000;
		position = { -271407, 1007, -30942 }; --metric CCS
		direction = 53.7; --add 180 for runway degrees
		positionGeo = { latitude = 31.4975, longitude = 65.834167 }; --convert to decimal degrees
		sceneObjects = {'t:168788600'};
		chartOffsetX = 3175.000000; --to reposition the localizer from the far end of the runway to the near end on the F10 map
		};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-4'; --rwy 05
		type = BEACON_TYPE_ILS_GLIDESLOPE;  --offset 500' laterally from TDZ
		callsign = 'JAK';
		frequency = 109500000;
		position = { -271295, 1008, -30668 }; --metric CCS
		direction = 233.7;
		positionGeo = { latitude = 31.498611, longitude = 65.836944 }; --convert to decimal degrees
		sceneObjects = {'t:319096009'};
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-5'; --rwy 05
		type = BEACON_TYPE_ILS_LOCALIZER; --located 200' off the far end of the runway
		callsign = 'JAK';
		frequency = 109500000;
		position = { -269527, 1017, -28383 }; --metric CCS
		direction = 233.7; --add 180 for runway degrees
		positionGeo = { latitude = 31.513889, longitude = 65.8561389 }; --convert to decimal degrees
		sceneObjects = {'t:168788600'};
		chartOffsetX = 3205.000000; --to reposition the localizer from the far end of the runway to the near end on the F10 map
		};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-6'; --rwy 23
		type = BEACON_TYPE_ICLS_GLIDESLOPE;  --offset 500' laterally from TDZ
		callsign = 'OKN';
		frequency = 15475000000;
		channel = 3;
		position = { -269591, 1017, -28728 }; --metric CCS
		direction = 53.7;
		positionGeo = { latitude = 31.513611, longitude = 65.857778 }; --convert to decimal degrees
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-7'; --rwy 23
		type = BEACON_TYPE_ICLS_LOCALIZER; --located 200' off the far end of the runway
		callsign = 'OKN';
		frequency = 15475000000;
		channel = 3;
		position = { -271407, 1007, -30942 }; --metric CCS
		direction = 53.7; --add 180 for runway degrees
		positionGeo = { latitude = 31.4975, longitude = 65.834167 }; --convert to decimal degrees
		};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-8'; --rwy 05
		type = BEACON_TYPE_ICLS_GLIDESLOPE;  --offset 500' laterally from TDZ
		callsign = 'JAK';
		frequency = 15535000000;
		channel = 5;
		position = { -271295, 1008, -30668 }; --metric CCS
		direction = 233.7;
		positionGeo = { latitude = 31.498611, longitude = 65.836944 }; --convert to decimal degrees
	};
	{
		display_name = _('Kandahar');
		beaconId = 'airfield7-9'; --rwy 05
		type = BEACON_TYPE_ICLS_LOCALIZER; --located 200' off the far end of the runway
		callsign = 'JAK';
		frequency = 15535000000;
		channel = 5;
		position = { -269527, 1017, -28383 }; --metric CCS
		direction = 233.7; --add 180 for runway degrees
		positionGeo = { latitude = 31.513889, longitude = 65.8561389 }; --convert to decimal degrees
		};
	{
		display_name = _('Shindand');
		beaconId = 'airfield3_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'ASD';
		frequency = 111100000.000000;
		channel = 48;
		position = { -64795.556518, 1141.296796, -368775.301799 };
		direction = 1.076984;
		positionGeo = { latitude = 33.390852, longitude = 62.262116 };
		sceneObjects = {'t:78228225'};
	};
}
