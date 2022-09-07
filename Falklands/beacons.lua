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
		display_name = _('ELCALACAFE');
		beaconId = 'airfield14_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'EC';
		frequency = 108900000.000000;
		position = { 136527.359375, 199.844301, -921495.062500 };
		direction = 73.854863;
		positionGeo = { latitude = -50.280529, longitude = -72.038950 };
		sceneObjects = {'t:76808192'};
	};
	{
		display_name = _('ELCALAFATE');
		beaconId = 'airfield14_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ec';
		frequency = 108900000.000000;
		position = { 135977.375000, 203.352391, -923720.812500 };
		direction = 72.999995;
		positionGeo = { latitude = -50.281306, longitude = -72.070658 };
		sceneObjects = {'t:52396072'};
		chartOffsetX = 2596.000000;
	};
	{
		display_name = _('ECA');
		beaconId = 'airfield14_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ECA';
		frequency = 114700000.000000;
		channel = 94;
		position = { 136666.306335, 200.612963, -921982.757145 };
		direction = 0.000000;
		positionGeo = { latitude = -50.278446, longitude = -72.045170 };
		sceneObjects = {'t:30015546'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'imp';
		frequency = 111900000.000000;
		position = { 73666.453125, 74.138075, 45783.363281 };
		direction = 104.099978;
		positionGeo = { latitude = -51.817299, longitude = -58.477728 }; --far end of 28
		sceneObjects = {'t:45188344'};
		chartOffsetX = 2967.000000;
	};
	{
		display_name = _('MP');
		beaconId = 'airfield2_1';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'MP';
		frequency = 380000.000000;
		position = { 72305.148438, 74.137983, 45747.414063 };
		direction = 0.000000;
		positionGeo = { latitude = -51.829528, longitude = -58.478650 };
		sceneObjects = {'t:13666433'};
	};
	{
		display_name = _('MPA');
		beaconId = 'airfield2_2';
		type = BEACON_TYPE_TACAN;
		callsign = 'MPA';
		frequency = 112200000.000000;
		channel = 59;
		position = { 72940.390625, 74.137174, 47230.632813 };
		direction = 0.000000;
		positionGeo = { latitude = -51.824087, longitude = -58.456949 };
		sceneObjects = {'t:45187984'};
	};
	{
		display_name = _('MTP');
		beaconId = 'airfield2_3';
		type = BEACON_TYPE_VOR;
		callsign = 'MTP';
		frequency = 114700000.000000;
		channel = 94;
		position = { 72714.851563, 65.110195, 49580.492188 };
		direction = 17.188745;
		positionGeo = { latitude = -51.826531, longitude = -58.422928 };
		sceneObjects = {'t:26018311'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_4';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMP';
		frequency = 111900000.000000;
		position = { 72931.069470, 74.138075, 48172.795557 };
		direction = 106.217857;
		positionGeo = { latitude = -51.824339, longitude = -58.443285 };
		sceneObjects = {'t:67568611'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMP';
		frequency = 15685000000.000000;
		position = { 72931.069470, 74.138075, 48172.795557 };
		direction = 106.217857;
		positionGeo = { latitude = -51.824339, longitude = -58.443285 };
		sceneObjects = {'t:67568611'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_6';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'imp';
		frequency = 15685000000.000000;
		position = { 73666.453125, 74.138075, 45783.363281 };
		direction = 104.099978;
		positionGeo = { latitude = -51.817299, longitude = -58.477728 };
		sceneObjects = {'t:45188344'};
		chartOffsetX = 2967.000000;
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_7';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMP';
		frequency = 110900000.000000;
		position = { 72931.069470, 74.138075, 48172.795557 };
		direction = 286.217857;
		positionGeo = { latitude = -51.817364, longitude = -58.469672 };
		sceneObjects = {'t:67568611'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_8';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'imp';
		frequency = 110900000.000000;
		position = { 73666.453125, 74.138075, 45783.363281 };
		direction = 284.099978;
		positionGeo = { latitude = -51.724311, longitude = -58.436194 };
		sceneObjects = {'t:45188344'};
		--chartOffsetX = 2967.000000;
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_9';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMP';
		frequency = 15685000000.000000;
		position = { 72931.069470, 74.138075, 48172.795557 };
		direction = 286.217857;
		positionGeo = { latitude = -51.817364, longitude = -58.469672 };
		sceneObjects = {'t:67568611'};
	};
	{
		display_name = _('MTPLEASANT');
		beaconId = 'airfield2_10';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'imp';
		frequency = 15685000000.000000;
		position = { 73666.453125, 74.138075, 45783.363281 };
		direction = 284.099978;
		positionGeo = { latitude = -51.724311, longitude = -58.436194 };
		sceneObjects = {'t:45188344'};
		--chartOffsetX = 2967.000000;
	};
	{
		display_name = _('stanleyairport');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'SA';
		frequency = 305000.000000;
		position = { 89159.585938, 20.557060, 94201.484375 };
		direction = 0.000000;
		positionGeo = { latitude = -51.684736, longitude = -57.773001 };
		sceneObjects = {'t:190742528'};
	};
	{
		display_name = _('DFO');
		beaconId = 'airfield1_1';
		type = BEACON_TYPE_VOR;
		callsign = 'DFO';
		frequency = 113300000.000000;
		position = { 89159.497356, 20.557058, 94167.834159 };
		direction = 0.000000;
		positionGeo = { latitude = -51.684733, longitude = -57.773487 };
		sceneObjects = {'t:27362777'};
	};
	{
		display_name = _('PUERTO NATALES');
		beaconId = 'airfield13_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'PNT';
		frequency = 115900000.000000;
		channel = 106;
		position = { -29898.896534, 101.524767, -914126.195727 };
		direction = 0.000000;
		positionGeo = { latitude = -51.738041, longitude = -72.422021 };
		sceneObjects = {'t:22381338'};
	};
	{
		display_name = _('Puerto Williams');
		beaconId = 'airfield12_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'PWL';
		frequency = 114900000.000000;
		channel = 96;
		position = { -323309.401320, 16.047808, -531621.976824 };
		direction = 0.000000;
		positionGeo = { latitude = -54.929549, longitude = -67.621059 };
		sceneObjects = {'t:17039930'};
	};
	{
		display_name = _('ptarenas');
		beaconId = 'airfield9_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'inas';
		frequency = 109900000.000000;
		position = { -146880.036713, 37.207671, -778463.993454 };
		direction = 76.747471;
		positionGeo = { latitude = -52.999600, longitude = -70.837778 };
		sceneObjects = {'t:59080897'};
	};
	{
		display_name = _('');
		beaconId = 'airfield9_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'INAS';
		frequency = 109900000.000000;
		position = { -147614.546875, 41.658905, -781243.437500 };
		direction = 77.637503;
		positionGeo = { latitude = -53.001231, longitude = -70.880082 };
		sceneObjects = {'t:38437131'};
		chartOffsetX = 3396.000000;
	};
	{
		display_name = _('NAS');
		beaconId = 'airfield9_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'NAS';
		frequency = 114100000.000000;
		position = { -147603.078125, 38.113205, -779535.187500 };
		direction = 0.000000;
		positionGeo = { latitude = -53.004070, longitude = -70.855336 };
		sceneObjects = {'t:20617448'};
	};
	{
		display_name = _('NAS');
		beaconId = 'airfield9_3';
		type = BEACON_TYPE_HOMER;
		callsign = 'NAS';
		frequency = 270000.000000;
		position = { -149244.937500, 33.399913, -780144.750000 };
		direction = -162.875779;
		positionGeo = { latitude = -53.017351, longitude = -70.868839 };
		sceneObjects = {'t:38437119'};
	};
	{
		display_name = _('GAL');
		beaconId = 'airfield5_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'GAL';
		frequency = 116700000.000000;
		channel = 114;
		position = { 25281.628906, 15.454749, -704622.125000 };
		direction = 0.000000;
		positionGeo = { latitude = -51.610861, longitude = -69.330441 };
		sceneObjects = {'t:23625728'};
	};
	{
		display_name = _('RIOGALLEGOS');
		beaconId = 'airfield5_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'gl';
		frequency = 110300000.000000;
		position = { 25207.816406, 15.454749, -705419.250000 };
		direction = 75.800005;
		positionGeo = { latitude = -51.610309, longitude = -69.341866 };
		sceneObjects = {'t:40502039'};
		chartOffsetX = 3835.000000;
	};
	{
		display_name = _('RIOGALLEGOS');
		beaconId = 'airfield5_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'gl';
		frequency = 110300000.000000;
		position = { 25920.679584, 15.454750, -701994.560734 };
		direction = 161.568576;
		positionGeo = { latitude = -51.609196, longitude = -69.291827 };
		sceneObjects = {'t:61998343'};
	};
	{
		display_name = _('RIOGRANDE');
		beaconId = 'airfield6_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'gr';
		frequency = 109500000.000000;
		position = { -197423.843750, 18.521791, -560901.375000 };
		direction = 78.809318;
		positionGeo = { latitude = -53.778151, longitude = -67.771597 };
		sceneObjects = {'t:36733109'};
		chartOffsetX = 2450.000000;
	};
	{
		display_name = _('GRA');
		beaconId = 'airfield6_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'GRA';
		frequency = 117300000.000000;
		channel = 120;
		position = { -196830.343750, 18.521791, -559258.625000 };
		direction = -12.944603;
		positionGeo = { latitude = -53.775134, longitude = -67.745751 };
		sceneObjects = {'t:19532588'};
	};
	{
		display_name = _('RIOGRANDE');
		beaconId = 'airfield6_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'gr';
		frequency = 109500000.000000;
		position = { -197128.037595, 18.521791, -558753.278777 };
		direction = 80.311714;
		positionGeo = { latitude = -53.778446, longitude = -67.738896 };
		sceneObjects = {'t:57280121'};
	};
	{
		display_name = _('riograndendb');
		beaconId = 'airfield6_3';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'P';
		frequency = 265000.000000;
		position = { -197913.953125, 9.708649, -557863.562500 };
		direction = -59.842259;
		positionGeo = { latitude = -53.786588, longitude = -67.727422 };
		sceneObjects = {'t:9405031'};
	};
	{
		display_name = _('riogrande');
		beaconId = 'airfield6_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'gra';
		frequency = 1000000.000000;
		channel = 31;
		position = { -197286.593750, 18.521793, -559337.937500 };
		direction = 0.000000;
		positionGeo = { latitude = -53.779056, longitude = -67.747975 };
		sceneObjects = {'t:36734225'};
	};
	{
		display_name = _('San Julian');
		beaconId = 'airfield11_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = '';
		frequency = 117700000.000000;
		position = { 297049.809571, 44.000044, -637612.540034 };
		direction = -13.581222;
		positionGeo = { latitude = -49.309587, longitude = -67.812946 };
		sceneObjects = {'t:31694379'};
	};
	{
		display_name = _('RIOGRANDE');
		beaconId = 'airfield7_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'us';
		frequency = 111300000.000000;
		position = { -320923.906250, 18.499269, -577591.812500 };
		direction = 76.899460;
		positionGeo = { latitude = -54.844195, longitude = -68.318784 };
		sceneObjects = {'t:33655942'};
		chartOffsetX = 2724.000000;
	};
	{
		display_name = _('Ushuaia');
		beaconId = 'airfield7_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'us';
		frequency = 111300000.000000;
		position = { -320262.593750, 24.959931, -575219.625000 };
		direction = 76.394382;
		positionGeo = { latitude = -54.841782, longitude = -68.280912 };
		sceneObjects = {'t:54788190'};
	};
	{
		display_name = _('USU');
		beaconId = 'airfield7_2';
		type = BEACON_TYPE_VOR;
		callsign = 'USU';
		frequency = 113700000.000000;
		channel = 84;
		position = { -319978.812500, 27.244702, -575360.000000 };
		direction = 1.061029;
		positionGeo = { latitude = -54.839080, longitude = -68.282349 };
		sceneObjects = {'t:16844045'};
	};
}
