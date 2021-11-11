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
		display_name = _('MTMACAJNA');
		beaconId = 'world_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'AJA';
		frequency = 385000.000000;
		position = { -3436.749756, 192.952586, -6602.758789 };
		direction = -25.464790;
		positionGeo = { latitude = 13.453405, longitude = 144.736872 };
		sceneObjects = {'t:15564956'};
	};
	{
		display_name = _('Nimitz');
		beaconId = 'world_1';
		type = BEACON_TYPE_VORTAC;
		callsign = 'UNZ';
		frequency = 115800000.000000;
		channel = 105;
		position = { -3308.613770, 194.660687, -6986.220215 };
		direction = 24.955490;
		positionGeo = { latitude = 13.454531, longitude = 144.733321 };
		sceneObjects = {'t:61476409'};
	};
	{
		display_name = _('SAIPAN');
		beaconId = 'world_2';
		type = BEACON_TYPE_HOMER;
		callsign = 'SN';
		frequency = 312000.000000;
		position = { 179201.037530, 34.008945, 99842.086026 };
		direction = 52.966778;
		positionGeo = { latitude = 15.111283, longitude = 145.710437 };
		sceneObjects = {'t:36307053'};
	};
	{
		display_name = _('ANDERSEN');
		beaconId = 'airfield6_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'UAM';
		channel = 54;
		position = { 11615.371094, 184.237672, 16240.750977 };
		direction = 86.750069;
		positionGeo = { latitude = 13.591233, longitude = 144.946600 };
		sceneObjects = {'t:52468360'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IPMY';
		frequency = 110150000.000000;
		position = { 11230.984375, 180.440870, 15875.927734 };
		direction = 66.208465;
		positionGeo = { latitude = 13.587732, longitude = 144.943259 };
		sceneObjects = {'t:63275331'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IUAM';
		frequency = 110100000.000000;
		position = { 10130.343750, 163.402965, 13251.070313 };
		direction = -113.500825;
		positionGeo = { latitude = 13.577585, longitude = 144.919098 };
		sceneObjects = {'t:63014066'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IYIG';
		frequency = 109350000.000000;
		position = { 11521.810547, 179.350185, 15579.264648 };
		direction = 66.208465;
		positionGeo = { latitude = 13.590338, longitude = 144.940496 };
		sceneObjects = {'t:63275332'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_4';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IAND';
		frequency = 109300000.000000;
		position = { 10474.082031, 162.781687, 13216.631836 };
		direction = -114.010146;
		positionGeo = { latitude = 13.580689, longitude = 144.918753 };
		sceneObjects = {'t:63243099'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_5';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IUAM';
		frequency = 110100000.000000;
		position = { 11405.985352, 183.124176, 16448.888672 };
		direction = -113.620825;
		positionGeo = { latitude = 13.589357, longitude = 144.948539 };
		sceneObjects = {'t:209158144'};
		chartOffsetX = 4109.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_6';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IAND';
		frequency = 109300000.000000;
		position = { 11862.963303, 191.000298, 16134.421092 };
		direction = -113.630831;
		positionGeo = { latitude = 13.593463, longitude = 144.945598 };
		sceneObjects = {'t:209158145'};
		chartOffsetX = 3872.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_7';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IYIG';
		frequency = 109350000.000000;
		position = { 10254.586245, 163.673534, 12456.810317 };
		direction = 66.348484;
		positionGeo = { latitude = 13.578646, longitude = 144.911752 };
		sceneObjects = {'t:209158146'};
		chartOffsetX = 3987.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_8';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IPMY';
		frequency = 110150000.000000;
		position = { 9716.791016, 171.495045, 12586.375977 };
		direction = 66.373456;
		positionGeo = { latitude = 13.573797, longitude = 144.912991 };
		sceneObjects = {'t:209158147'};
		chartOffsetX = 4138.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_9'; --24L
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IPMY';
		frequency = 15625000000.000000;
		channel = 8;
		position = { 11230.984375, 180.440870, 15875.927734 };
		direction = 66.208465;
		positionGeo = { latitude = 13.587732, longitude = 144.943259 };
		sceneObjects = {'t:63275331'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_10'; --6R
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IUAM';
		frequency = 15445000000.000000;
		channel = 12;
		position = { 10130.343750, 163.402965, 13251.070313 };
		direction = -113.500825;
		positionGeo = { latitude = 13.577585, longitude = 144.919098 };
		sceneObjects = {'t:63014066'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_11'; --24R
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IYIG';
		frequency = 15505000000.000000;
		channel = 4;
		position = { 11521.810547, 179.350185, 15579.264648 };
		direction = 66.208465;
		positionGeo = { latitude = 13.590338, longitude = 144.940496 };
		sceneObjects = {'t:63275332'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_12'; --6L
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IAND';
		frequency = 15565000000.000000;
		channel = 6;
		position = { 10474.082031, 162.781687, 13216.631836 };
		direction = -114.010146;
		positionGeo = { latitude = 13.580689, longitude = 144.918753 };
		sceneObjects = {'t:63243099'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_13'; --6R
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IUAM';
		frequency = 15445000000.000000;
		channel = 12;
		position = { 11405.985352, 183.124176, 16448.888672 };
		direction = -113.620825;
		positionGeo = { latitude = 13.589357, longitude = 144.948539 };
		sceneObjects = {'t:209158144'};
		chartOffsetX = 4109.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_14'; --6L
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IAND';
		frequency = 15565000000.000000;
		channel = 6;
		position = { 11862.963303, 191.000298, 16134.421092 };
		direction = -113.630831;
		positionGeo = { latitude = 13.593463, longitude = 144.945598 };
		sceneObjects = {'t:209158145'};
		chartOffsetX = 3872.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_15'; --24R
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IYIG';
		frequency = 15505000000.000000;
		channel = 4;
		position = { 10254.586245, 163.673534, 12456.810317 };
		direction = 66.348484;
		positionGeo = { latitude = 13.578646, longitude = 144.911752 };
		sceneObjects = {'t:209158146'};
		chartOffsetX = 3987.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_16'; --24L
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IPMY';
		frequency = 15625000000.000000;
		channel = 8;
		position = { 9716.791016, 171.495045, 12586.375977 };
		direction = 66.373456;
		positionGeo = { latitude = 13.573797, longitude = 144.912991 };
		sceneObjects = {'t:209158147'};
		chartOffsetX = 4138.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IGUM';
		frequency = 110300000.000000;
		position = { 872.144714, 93.497675, 1873.931763 };
		direction = -114.591552;
		positionGeo = { latitude = 13.493032, longitude = 144.814772 };
		sceneObjects = {'t:209190912'};
		chartOffsetX = 4105.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'PGUM';
		frequency = 110300000.000000;
		position = { -366.423035, 77.792078, -1274.609497 };
		direction = -114.082259;
		positionGeo = { latitude = 13.481585, longitude = 144.785804 };
		sceneObjects = {'t:61866198'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IAWD';
		frequency = 110900000.000000;
		position = { 549.034180, 78.410883, 1685.082764 };
		direction = -114.591552;
		positionGeo = { latitude = 13.490097, longitude = 144.813055 };
		sceneObjects = {'t:209190913'};
		chartOffsetX = 3501.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'PGUM';
		frequency = 110900000.000000;
		position = { -631.026611, 77.792078, -1149.327148 };
		direction = -114.591552;
		positionGeo = { latitude = 13.479205, longitude = 144.786982 };
		sceneObjects = {'t:61866007'};
	};
	{
		display_name = _('ROTA');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'GRO';
		frequency = 332000.000000;
		position = { 75584.387208, 173.311117, 48455.189908 };
		direction = 93.710430;
		positionGeo = { latitude = 14.171648, longitude = 145.239866 };
		sceneObjects = {'t:1441814'};
	};
	{
		display_name = _('');
		beaconId = 'airfield2_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IGSN';
		frequency = 109900000.000000;
		position = { 180642.546875, 64.185939, 103385.359375 };
		direction = -111.803190;
		positionGeo = { latitude = 15.124498, longitude = 145.743327 };
		sceneObjects = {'t:209223681'};
		chartOffsetX = 3013.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield2_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'PGSN';
		frequency = 109900000.000000;
		position = { 179748.296875, 65.000065, 100905.421875 };
		direction = -113.840375;
		positionGeo = { latitude = 15.116286, longitude = 145.720300 };
		sceneObjects = {'t:209223680'};
		chartOffsetX = 3013.000000;
	};
}
