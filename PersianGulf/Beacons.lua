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
		display_name = _('ABUDHABI');
		beaconId = 'airfield22_0';
		type = BEACON_TYPE_VOR;
		callsign = 'ADV';
		frequency = 114250000.000000;
		position = { -189766.531250, 13.518525, -161838.828125 };
		direction = 0.000000;
		positionGeo = { latitude = 24.441924, longitude = 54.656381 };
		sceneObjects = {'t:350617601'};
	};
	{
		display_name = _('AbuDhabiInt');
		beaconId = 'airfield22_1';
		type = BEACON_TYPE_DME;
		callsign = 'ADV';
		frequency = 114250000.000000;
		channel = 119;
		position = { -192321.214626, 25.584987, -160210.619647 };
		direction = 38.621600;
		positionGeo = { latitude = 24.419118, longitude = 54.672854 };
		sceneObjects = {'t:60394220'};
	};
	{
		display_name = _('Abumusa');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_DME;
		callsign = 'ABM';
		frequency = 285000.000000;
		channel = 101;
		position = { -31252.106776, 5.425148, -122338.729886 };
		direction = 174.107027;
		positionGeo = { latitude = 25.878140, longitude = 55.022870 };
		sceneObjects = {'t:429162543'};
	};
	{
		display_name = _('AlAinInt');
		beaconId = 'airfield25_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ALN';
		frequency = 112600000.000000;
		channel = 119;
		position = { -211309.173258, 243.602935, -65721.939182 };
		direction = 7.639437;
		positionGeo = { latitude = 24.259134, longitude = 55.606308 };
		sceneObjects = {'t:58295511'};
	};
	{
		display_name = _('AlBateenInt');
		beaconId = 'airfield23_0';
		type = BEACON_TYPE_VOR;
		callsign = 'ALB';
		frequency = 114000000.000000;
		channel = 119;
		position = { -189740.952285, 7.369904, -183148.151294 };
		direction = -50.080754;
		positionGeo = { latitude = 24.438753, longitude = 54.446339 };
		sceneObjects = {'t:60033723'};
	};
	{
		display_name = _('BandarAbbas');
		beaconId = 'airfield2_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BND';
		frequency = 117200000.000000;
		channel = 119;
		position = { 113474.047640, 5.853973, 13058.911064 };
		direction = 26.337865;
		positionGeo = { latitude = 27.196943, longitude = 56.366971 };
		sceneObjects = {'t:-1401585607'};
	};
	{
		display_name = _('BandarAbbas');
		beaconId = 'airfield2_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'BND';
		frequency = 250000.000000;
		position = { 115560.210938, 16.835809, 12328.879883 };
		direction = 26.337865;
		positionGeo = { latitude = 27.215742, longitude = 56.359493 };
		sceneObjects = {'t:476610568'};
	};
	{
		display_name = _('');
		beaconId = 'airfield2_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IBND';
		frequency = 109900000.000000;
		position = { 113693.740992, 5.776140, 13154.132035 };
		direction = 28.001016;
		positionGeo = { latitude = 27.198930, longitude = 56.367921 };
		sceneObjects = {'t:194543725'};
		chartOffsetX = 4544.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield2_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IBND';
		frequency = 109900000.000000;
		position = { 116974.781250, 5.880138, 14981.854492 };
		direction = 26.337865;
		positionGeo = { latitude = 27.228633, longitude = 56.386212 };
		sceneObjects = {'t:-1401585662'};
	};
	{
		display_name = _('BandarAbbas');
		beaconId = 'airfield2_4';
		type = BEACON_TYPE_TACAN;
		callsign = 'BND';
		channel = 78;
		position = { 115683.969528, 5.250005, 14461.157454 };
		direction = -63.237564;
		positionGeo = { latitude = 27.216956, longitude = 56.381018 };
		sceneObjects = {'t:196182570'};
	};
	{
		display_name = _('BandarEJask');
		beaconId = 'airfield21_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KHM';
		frequency = 116300000.000000;
		position = { -57383.066406, 5.749071, 155650.640625 };
		direction = 69.843848;
		positionGeo = { latitude = 25.653478, longitude = 57.795989 };
		sceneObjects = {'t:73334784'};
	};
	{
		display_name = _('JASK');
		beaconId = 'airfield21_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'JSK';
		frequency = 349000.000000;
		position = { -57453.421875, 7.466432, 154201.265625 };
		direction = 0.000000;
		positionGeo = { latitude = 25.652921, longitude = 57.781546 };
		sceneObjects = {'t:177242618'};
	};
	{
		display_name = _('');
		beaconId = 'airfield21_2';
		type = BEACON_TYPE_TACAN;
		callsign = 'JSK';
		channel = 110;
		position = { -58193.984375, 6.511551, 154437.640625 };
		direction = 0.000000;
		positionGeo = { latitude = 25.646221, longitude = 57.783857 };
		sceneObjects = {'t:177242518'};
	};
	{
		display_name = _('BandarLengeh');
		beaconId = 'airfield3_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'LEN';
		frequency = 408000.000000;
		position = { 41337.355469, 23.178982, -140284.187500 };
		direction = -1.600031;
		positionGeo = { latitude = 26.530575, longitude = 54.831754 };
		sceneObjects = {'t:435912755'};
	};
	{
		display_name = _('BandarLengeh');
		beaconId = 'airfield3_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'LEN';
		frequency = 114800000.000000;
		channel = 95;
		position = { 41944.980469, 20.168559, -138343.031250 };
		direction = -1.600031;
		positionGeo = { latitude = 26.536353, longitude = 54.851123 };
		sceneObjects = {'t:435945482'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'MMA';
		frequency = 109100000.000000;
		channel = 28;
		position = { -211760.781250, 16.000016, -172123.562500 };
		direction = 127.900006;
		positionGeo = { latitude = 24.241850, longitude = 54.558813 };
		sceneObjects = {'t:334331904'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'LMA';
		frequency = 108700000.000000;
		channel = 24;
		position = { -211951.531250, 16.000016, -174070.812500 };
		direction = -52.099994;
		positionGeo = { latitude = 24.239820, longitude = 54.539683 };
		sceneObjects = {'t:334331905'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMA';
		frequency = 111100000.000000;
		channel = 48;
		position = { -210016.343750, 16.000016, -174357.843750 };
		direction = -52.099998;
		positionGeo = { latitude = 24.257237, longitude = 54.536522 };
		sceneObjects = {'t:335904770'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'RMA';
		frequency = 108700000.000000;
		channel = 24;
		position = { -214110.281250, 16.000016, -171098.062500 };
		direction = 127.900019;
		positionGeo = { latitude = 24.220810, longitude = 54.569308 };
		sceneObjects = {'t:332169217'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_4';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'MMA';
		frequency = 109100000.000000;
		channel = 28;
		position = { -209686.093750, 16.000016, -174966.953125 };
		direction = 127.900019;
		positionGeo = { latitude = 24.260120, longitude = 54.530469 };
		sceneObjects = {'t:147685690'};
		chartOffsetX = 4320.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_5';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'RMA';
		frequency = 108700000.000000;
		channel = 24;
		position = { -211626.890625, 16.000016, -174631.656250 };
		direction = 127.900019;
		positionGeo = { latitude = 24.242660, longitude = 54.534107 };
		sceneObjects = {'t:147685691'};
		chartOffsetX = 4290.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_6';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'LMA';
		frequency = 108700000.000000;
		channel = 24;
		position = { -214278.000000, 16.000015, -171226.875000 };
		direction = -52.100006;
		positionGeo = { latitude = 24.219277, longitude = 54.568070 };
		sceneObjects = {'t:146374701'};
		chartOffsetX = 4290.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_7';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IMA';
		frequency = 111100000.000000;
		channel = 48;
		position = { -212361.453125, 16.000016, -171526.843750 };
		direction = -52.100003;
		positionGeo = { latitude = 24.236524, longitude = 54.564789 };
		sceneObjects = {'t:147718564'};
		chartOffsetX = 4310.000000;
	};
	{
		display_name = _('AlDhafra');
		beaconId = 'airfield4_8';
		type = BEACON_TYPE_VORTAC;
		callsign = 'MA';
		frequency = 114900000.000000;
		channel = 96;
		position = { -211188.156250, 16.000016, -173477.812500 };
		direction = 37.615738;
		positionGeo = { latitude = 24.246803, longitude = 54.545386 };
		sceneObjects = {'t:334331906'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_9'; --13L
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMA';
		frequency = 15475000000.000000;
		channel = 3;
		position = { -212361.453125, 16.000016, -171526.843750 };
		direction = -52.100003;
		positionGeo = { latitude = 24.236524, longitude = 54.564789 };
		sceneObjects = {'t:147718564'};
		chartOffsetX = 4310.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_10'; --13L
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMA';
		frequency = 15475000000.000000;
		channel = 3;
		position = { -210016.343750, 16.000016, -174357.843750 };
		direction = -52.099998;
		positionGeo = { latitude = 24.257237, longitude = 54.536522 };
		sceneObjects = {'t:335904770'};
	};
	{
		display_name = _('');
		beaconId = 'airfield4_11'; --31R
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'MMA';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -209686.093750, 16.000016, -174966.953125 };
		direction = 127.900019;
		positionGeo = { latitude = 24.260120, longitude = 54.530469 };
		sceneObjects = {'t:147685690'};
		chartOffsetX = 4320.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield4_12'; --31R
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'MMA';
		frequency = 15415000000.000000;
		channel = 1;
		position = { -211760.781250, 16.000016, -172123.562500 };
		direction = 127.900006;
		positionGeo = { latitude = 24.241850, longitude = 54.558813 };
		sceneObjects = {'t:334331904'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IDBW';
		frequency = 109500000.000000;
		position = { -103160.304688, 5.000005, -85509.226563 };
		direction = -57.960002;
		positionGeo = { latitude = 25.233579, longitude = 55.398979 };
		sceneObjects = {'t:-1401487310'};
		chartOffsetX = 5165.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IDBR';
		frequency = 110100000.000000;
		position = { -101655.835938, 5.000005, -87173.156250 };
		direction = -58.009998;
		positionGeo = { latitude = 25.246980, longitude = 55.382285 };
		sceneObjects = {'t:-1401487309'};
		chartOffsetX = 4461.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IDBE';
		frequency = 111300000.000000;
		position = { -100336.234375, 5.000005, -90012.007813 };
		direction = 122.059989;
		positionGeo = { latitude = 25.258581, longitude = 55.353947 };
		sceneObjects = {'t:-1401487308'};
		chartOffsetX = 5340.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IDBL';
		frequency = 110900000.000000;
		position = { -99354.195313, 5.000005, -90856.460938 };
		direction = 122.069989;
		positionGeo = { latitude = 25.267352, longitude = 55.345444 };
		sceneObjects = {'t:-1401487307'};
		chartOffsetX = 4326.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_4';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IDBL';
		frequency = 110900000.000000;
		position = { -101331.320313, 5.000005, -87516.156250 };
		direction = 123.104981;
		positionGeo = { latitude = 25.249872, longitude = 55.378842 };
		sceneObjects = {'t:-1401487360'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_5';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IDBR';
		frequency = 110100000.000000;
		position = { -99715.640625, 5.000005, -90031.437500 };
		direction = -60.241524;
		positionGeo = { latitude = 25.264181, longitude = 55.353679 };
		sceneObjects = {'t:-1401487359'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_6';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IDBE';
		frequency = 111300000.000000;
		position = { -102607.976563, 5.000005, -86169.898438 };
		direction = 124.706221;
		positionGeo = { latitude = 25.238494, longitude = 55.392357 };
		sceneObjects = {'t:-1401487358'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_7';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IDBW';
		frequency = 109500000.000000;
		position = { -101020.156250, 5.000005, -88667.859375 };
		direction = -57.330633;
		positionGeo = { latitude = 25.252555, longitude = 55.367372 };
		sceneObjects = {'t:-1401487357'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_8';
		type = BEACON_TYPE_VORTAC;
		callsign = 'DUB';
		frequency = 116800000.000000;
		channel = 89;
		position = { -100239, 5.000005, -90177 };
		direction = 0.00;
		positionGeo = { latitude = 25.259442, longitude = 55.352294 };
		sceneObjects = {'t:-1401487357'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_9';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IDBW';
		frequency = 15445000000.000000;
		channel = 12;
		position = { -103160.304688, 5.000005, -85509.226563 };
		direction = -57.960002;
		positionGeo = { latitude = 25.233579, longitude = 55.398979 };
		sceneObjects = {'t:-1401487310'};
		chartOffsetX = 5165.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_10';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IDBW';
		frequency = 15445000000.000000;
		channel = 12;
		position = { -101020.156250, 5.000005, -88667.859375 };
		direction = -57.330633;
		positionGeo = { latitude = 25.252555, longitude = 55.367372 };
		sceneObjects = {'t:-1401487357'};
	};
	{
		display_name = _('');
		beaconId = 'airfield5_11';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IDBE';
		frequency = 15535000000.000000;
		channel = 15;
		position = { -100336.234375, 5.000005, -90012.007813 };
		direction = 122.059989;
		positionGeo = { latitude = 25.258581, longitude = 55.353947 };
		sceneObjects = {'t:-1401487308'};
		chartOffsetX = 5340.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield5_12';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IDBE';
		frequency = 15535000000.000000;
		channel = 15;
		position = { -102607.976563, 5.000005, -86169.898438 };
		direction = 124.706221;
		positionGeo = { latitude = 25.238494, longitude = 55.392357 };
		sceneObjects = {'t:-1401487358'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IJEA';
		frequency = 111750000.000000;
		position = { -141530.671875, 37.618499, -107812.914063 };
		direction = -58.079994;
		positionGeo = { latitude = 24.884666, longitude = 55.182751 };
		sceneObjects = {'t:-1401454500'};
		chartOffsetX = 5249.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield6_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IJWA';
		frequency = 109750000.000000;
		position = { -141086.531250, 37.618499, -108299.953125 };
		direction = -56.676738;
		positionGeo = { latitude = 24.888616, longitude = 55.177872 };
		sceneObjects = {'t:380338176'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IJEA';
		frequency = 111750000.000000;
		position = { -139039.453125, 37.618499, -111508.414063 };
		direction = 121.722933;
		positionGeo = { latitude = 24.906703, longitude = 55.145846 };
		sceneObjects = {'t:-1401454590'};
	};
	{
		display_name = _('');
		beaconId = 'airfield6_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IJWA';
		frequency = 109750000.000000;
		position = { -138832.656250, 37.618499, -112149.820313 };
		direction = 121.949994;
		positionGeo = { latitude = 24.908491, longitude = 55.139470 };
		sceneObjects = {'t:-1401454499'};
		chartOffsetX = 5248.000000;
	};
	{
		display_name = _('Fujairah');
		beaconId = 'airfield7_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'FJV';
		frequency = 113800000.000000;
		channel = 85;
		position = { -118684.765625, 3.201513, 10676.752930 };
		direction = -157.881708;
		positionGeo = { latitude = 25.100651, longitude = 56.354556 };
		sceneObjects = {'t:394035275'};
	};
	{
		display_name = _('');
		beaconId = 'airfield7_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IFJR';
		frequency = 111500000.000000;
		position = { -118135.539063, 19.503962, 9027.303711 };
		direction = 112.627742;
		positionGeo = { latitude = 25.105538, longitude = 56.338172 };
		sceneObjects = {'t:-1401421822'};
	};
	{
		display_name = _('');
		beaconId = 'airfield7_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IFJR';
		frequency = 111500000.000000;
		position = { -116548.843750, 44.992561, 5567.033203 };
		direction = 112.589986;
		positionGeo = { latitude = 25.119710, longitude = 56.303773 };
		sceneObjects = {'t:-1401421801'};
		chartOffsetX = 4201.000000;
	};
	{
		display_name = _('Havadarya');
		beaconId = 'airfield9_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'HDR';
		frequency = 111000000.000000;
		channel = 47;
		position = { 109557.203125, 14.929916, -6187.317383 };
		direction = -130.596154;
		positionGeo = { latitude = 27.160571, longitude = 56.172924 };
		sceneObjects = {'t:-1401356238'};
	};
	{
		display_name = _('');
		beaconId = 'airfield9_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IBHD';
		frequency = 108900000.000000;
		position = { 109565.623872, 13.713557, -4888.786527 };
		direction = -100.999995;
		positionGeo = { latitude = 27.160724, longitude = 56.186029 };
		sceneObjects = {'t:-1401356239'};
		chartOffsetX = 2717.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield9_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IBHD';
		frequency = 108900000.000000;
		position = { 109172.148438, 15.530524, -7163.755371 };
		direction = -100.911496;
		positionGeo = { latitude = 27.157037, longitude = 56.163095 };
		sceneObjects = {'t:-1401356272'};
	};
	{
		display_name = _('Jiroft');
		beaconId = 'airfield27_0';
		type = BEACON_TYPE_AIRPORT_HOMER;
		callsign = 'JIR';
		frequency = 276000.000000;
		position = { 283559.231662, 807.854018, 141391.297194 };
		direction = 39.046005;
		positionGeo = { latitude = 28.732118, longitude = 57.672140 };
		sceneObjects = {'t:615481383'};
	};
	{
		display_name = _('KERMAN');
		beaconId = 'airfield18_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'KER';
		frequency = 122500000.000000;
		channel = 97;
		position = { 453172.937654, 1751.425702, 71709.051928 };
		direction = 66.180846;
		positionGeo = { latitude = 30.264595, longitude = 56.957928 };
		sceneObjects = {'t:701563123'};
	};
	{
		display_name = _('KERMAN');
		beaconId = 'airfield18_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KER';
		frequency = 112000000.000000;
		channel = 57;
		position = { 455450.843750, 1751.425824, 70352.039063 };
		direction = 0.000000;
		positionGeo = { latitude = 30.285146, longitude = 56.943809 };
		sceneObjects = {'t:291145970'};
	};
	{
		display_name = _('KERMAN');
		beaconId = 'airfield18_2';
		type = BEACON_TYPE_DME;
		callsign = 'KER';
		frequency = 290000000.000000;
		position = { 453282.742218, 1751.425580, 71986.246220 };
		direction = 66.180846;
		positionGeo = { latitude = 30.265587, longitude = 56.960809 };
		sceneObjects = {'t:701563019'};
	};
	{
		display_name = _('');
		beaconId = 'airfield10_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IBKS';
		frequency = 110300000.000000;
		position = { -1521.258057, 31.899734, -503.110107 };
		direction = 14.030001;
		positionGeo = { latitude = 26.158057, longitude = 56.236991 };
		sceneObjects = {'t:-1401323515'};
		chartOffsetX = 2627.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield10_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IBKS';
		frequency = 110300000.000000;
		position = { 673.278259, 15.972928, 101.777466 };
		direction = 14.261517;
		positionGeo = { latitude = 26.177903, longitude = 56.242914 };
		sceneObjects = {'t:-1401323520'};
		chartOffsetX = 1000.000000;
	};
	{
		display_name = _('KishIsland');
		beaconId = 'airfield24_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'KIH';
		frequency = 201000.000000;
		position = { 42782.343750, 15.693203, -227948.781250 };
		direction = 2.122058;
		positionGeo = { latitude = 26.527522, longitude = 53.952435 };
		sceneObjects = {'t:435552256'};
	};
	{
		display_name = _('KishIsland');
		beaconId = 'airfield24_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'KIH';
		channel = 112;
		position = { 42151.667969, 22.379877, -222114.921875 };
		direction = 0.000000;
		positionGeo = { latitude = 26.523074, longitude = 54.011059 };
		sceneObjects = {'t:183109001'};
	};
	{
		display_name = _('LAR');
		beaconId = 'airfield11_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'LAR';
		frequency = 117900000.000000;
		position = { 168932.671875, 792.979309, -179095.390625 };
		direction = 0.000000;
		positionGeo = { latitude = 27.674948, longitude = 54.416221 };
		sceneObjects = {'t:517439534'};
	};
	{
		display_name = _('LAR');
		beaconId = 'airfield11_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'OISL';
		frequency = 224000.000000;
		position = { 168452.046875, 803.328928, -183086.562500 };
		direction = 0.000000;
		positionGeo = { latitude = 27.669854, longitude = 54.375895 };
		sceneObjects = {'t:517374044'};
	};
	{
		display_name = _('LavanIsland');
		beaconId = 'airfield26_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'LVA';
		frequency = 116850000.000000;
		channel = 115;
		position = { 75891.117188, 18.459609, -286531.125000 };
		direction = 22.918316;
		positionGeo = { latitude = 26.812091, longitude = 53.355979 };
		sceneObjects = {'t:78152247'};
	};
	{
		display_name = _('LavanIsland');
		beaconId = 'airfield26_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'LVA';
		frequency = 310000.000000;
		channel = 0;
		position = { 74465.359375, 2.076815, -283536.812500 };
		direction = 96.341785;
		positionGeo = { latitude = 26.800016, longitude = 53.386456 };
		sceneObjects = {'t:447184922'};
	};
	{
		display_name = _('LiwaAirbase');
		beaconId = 'airfield29_0';
		type = BEACON_TYPE_VORTAC;
		callsign = 'OMLW';
		frequency = 117400000.000000;
		channel = 121;
		position = { -273862.718750, 109.613055, -250289.500000 };
		direction = 40.743663;
		positionGeo = { latitude = 23.667518, longitude = 53.803688 };
		sceneObjects = {'t:52789749'};
	};
	{
		display_name = _('Minhad');
		beaconId = 'airfield12_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'MIN';
		frequency = 115200000.000000;
		channel = 99;
		position = { -126012.203125, 56.568256, -86126.000000 };
		direction = -90.145369;
		positionGeo = { latitude = 25.027220, longitude = 55.395556 };
		sceneObjects = {'t:-1401290688'};
	};
	{
		display_name = _('');
		beaconId = 'airfield12_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IMNW';
		frequency = 110700000.000000;
		position = { -126014.757813, 57.834756, -86793.367188 };
		direction = -90.009988;
		positionGeo = { latitude = 25.027125, longitude = 55.388944 };
		sceneObjects = {'t:-1401290687'};
		chartOffsetX = 4567.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield12_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMNW';
		frequency = 110700000.000000;
		position = { -125893.375000, 52.421538, -90741.046875 };
		direction = -90.145369;
		positionGeo = { latitude = 25.027792, longitude = 55.349815 };
		sceneObjects = {'t:-1401290747'};
	};
	{
		display_name = _('');
		beaconId = 'airfield12_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'IMNR';
		frequency = 110750000.000000;
		position = { -126015.968750, 52.421538, -91371.843750 };
		direction = 89.980011;
		positionGeo = { latitude = 25.026616, longitude = 55.343580 };
		sceneObjects = {'t:-1401290686'};
		chartOffsetX = 4549.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield12_4';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'IMNR';
		frequency = 110750000.000000;
		position = { -125895.132813, 58.193627, -87437.218750 };
		direction = 90.000474;
		positionGeo = { latitude = 25.028136, longitude = 55.382550 };
		sceneObjects = {'t:-1401290746'};
	};
	{
		display_name = _('');
		beaconId = 'airfield12_5'; --minhad 09
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMNW';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -126014.757813, 57.834756, -86793.367188 };
		direction = -90.009988;
		positionGeo = { latitude = 25.027125, longitude = 55.388944 };
		sceneObjects = {'t:-1401290687'};
		chartOffsetX = 4567.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield12_6'; --minhad 09
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMNW';
		frequency = 15655000000.000000;
		channel = 9;
		position = { -125893.375000, 52.421538, -90741.046875 };
		direction = -90.145369;
		positionGeo = { latitude = 25.027792, longitude = 55.349815 };
		sceneObjects = {'t:-1401290747'};
	};
	{
		display_name = _('');
		beaconId = 'airfield12_7'; --minhad 27
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'IMNR';
		frequency = 15595000000.000000;
		channel = 17;
		position = { -126015.968750, 52.421538, -91371.843750 };
		direction = 89.980011;
		positionGeo = { latitude = 25.026616, longitude = 55.343580 };
		sceneObjects = {'t:-1401290686'};
		chartOffsetX = 4549.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield12_8'; --minhad 27
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'IMNR';
		frequency = 15595000000.000000;
		channel = 17;
		position = { -125895.132813, 58.193627, -87437.218750 };
		direction = 90.000474;
		positionGeo = { latitude = 25.028136, longitude = 55.382550 };
		sceneObjects = {'t:-1401290746'};
	};
	{
		display_name = _('GheshmIsland');
		beaconId = 'airfield13_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'KHM';
		frequency = 233000.000000;
		position = { 65696.914063, 5.904744, -32833.363281 };
		direction = 141.512093;
		positionGeo = { latitude = 26.762802, longitude = 55.907839 };
		sceneObjects = {'t:444727296'};
	};
	{
		display_name = _('GheshmIsland');
		beaconId = 'airfield13_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KHM';
		frequency = 117100000.000000;
		position = { 65700.088129, 5.935213, -32835.625019 };
		direction = 51.778408;
		positionGeo = { latitude = 26.762831, longitude = 55.907816 };
		sceneObjects = {'t:77858286'};
	};
	{
		display_name = _('RasAlKhaimah');
		beaconId = 'airfield28_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'OMRK';
		frequency = 113600000.000000;
		channel = 83;
		position = { -64393.449970, 30.310043, -30032.162496 };
		direction = -103.459194;
		positionGeo = { latitude = 25.588549, longitude = 55.946619 };
		sceneObjects = {'t:72942639'};
	};
	{
		display_name = _('SasAlNakheel');
		beaconId = 'airfield20_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'SAS';
		frequency = 128925000.000000;
		channel = 119;
		position = { -188594.922148, 2.500424, -176233.189279 };
		direction = -17.825354;
		positionGeo = { latitude = 24.450229, longitude = 54.514290 };
		sceneObjects = {'t:350388373'};
	};
	{
		display_name = _('');
		beaconId = 'airfield14_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ISRE';
		frequency = 108550000.000000;
		position = { -93834.992188, 29.999980, -71385.187500 };
		direction = -57.030006;
		positionGeo = { latitude = 25.319219, longitude = 55.538154 };
		sceneObjects = {'t:-1401225154'};
		chartOffsetX = 4492.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield14_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ISHW';
		frequency = 111950000.000000;
		position = { -91290.867188, 29.999980, -75307.093750 };
		direction = 122.970016;
		positionGeo = { latitude = 25.341794, longitude = 55.498918 };
		sceneObjects = {'t:-1401225153'};
		chartOffsetX = 4480.000000;
	};
	{
		display_name = _('');
		beaconId = 'airfield14_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ISHW';
		frequency = 111950000.000000;
		position = { -93187.609375, 30.099456, -72018.781250 };
		direction = 121.869344;
		positionGeo = { latitude = 25.325000, longitude = 55.531791 };
		sceneObjects = {'t:-1401225198'};
	};
	{
		display_name = _('');
		beaconId = 'airfield14_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ISRE';
		frequency = 108550000.000000;
		position = { -91604.445313, 29.678149, -74424.015625 };
		direction = -57.111764;
		positionGeo = { latitude = 25.339053, longitude = 55.507725 };
		sceneObjects = {'t:-1401225197'};
	};
	{
		display_name = _('SHIRAZ');
		beaconId = 'airfield19_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'SYZ';
		frequency = 117800000.000000;
		channel = 125;
		position = { 381030.062500, 1487.001487, -351865.593750 };
		direction = -153.938912;
		positionGeo = { latitude = 29.540193, longitude = 52.588744 };
		sceneObjects = {'t:121046508'};
	};
	{
		display_name = _('SHIRAZ');
		beaconId = 'airfield19_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'SYZ1';
		frequency = 114700000.000000;
		channel = 94;
		position = { 381238.562500, 1487.001487, -352249.281250 };
		direction = -153.938912;
		positionGeo = { latitude = 29.541938, longitude = 52.584714 };
		sceneObjects = {'t:658112683'};
	};
	{
		display_name = _('SHIRAZ');
		beaconId = 'airfield19_2';
		type = BEACON_TYPE_HOMER;
		callsign = 'SR';
		frequency = 205000.000000;
		position = { 379775.937500, 1487.001609, -350896.250000 };
		direction = 0.000000;
		positionGeo = { latitude = 29.529239, longitude = 52.599209 };
		sceneObjects = {'t:656508113'};
	};
	{
		display_name = _('');
		beaconId = 'airfield19_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ISYZ';
		frequency = 108500000.000000;
		position = { 379767.843750, 1487.001487, -350292.875000 };
		direction = 116.289189;
		positionGeo = { latitude = 29.529372, longitude = 52.605420 };
		sceneObjects = {'t:656506918'};
	};
	{
		display_name = _('');
		beaconId = 'airfield19_4';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ISYZ';
		frequency = 108500000.000000;
		position = { 381848.625000, 1487.414085, -354141.906250 };
		direction = 116.713645;
		positionGeo = { latitude = 29.546777, longitude = 52.564998 };
		sceneObjects = {'t:270108583'};
		chartOffsetX = 5031.000000;
	};
	{
		display_name = _('SirriIsland');
		beaconId = 'airfield15_0';
		type = BEACON_TYPE_HOMER;
		callsign = 'SIR';
		frequency = 300000.000000;
		position = { -27844.582031, 5.338040, -169988.296875 };
		direction = 38.778616;
		positionGeo = { latitude = 25.901625, longitude = 54.546971 };
		sceneObjects = {'t:74679803'};
	};
	{
		display_name = _('SirriIsland');
		beaconId = 'airfield15_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'SIR';
		frequency = 113750000.000000;
		position = { -26408.787109, 8.874286, -171201.140625 };
		direction = 0.000000;
		positionGeo = { latitude = 25.914373, longitude = 54.534604 };
		sceneObjects = {'t:74679783'};
	};
	{
		display_name = _('Kochak');
		beaconId = 'airfield16_0';
		type = BEACON_TYPE_TACAN;
		callsign = 'KCK';
		frequency = 114200000.000000;
		channel = 89;
		position = { 8918.999023, 4.131649, -109438.015625 };
		direction = -7.639437;
		positionGeo = { latitude = 26.242384, longitude = 55.145874 };
		sceneObjects = {'t:181698571'};
	};
	{
		display_name = _('Kish');
		beaconId = 'world_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KIS';
		frequency = 117400000.000000;
		channel = 121;
		position = { 42492.121094, 24.612057, -226939.156250 };
		direction = 4.244143;
		positionGeo = { latitude = 26.525121, longitude = 53.962624 };
		sceneObjects = {'t:75956923'};
	};
	{
		display_name = _('DohaAirport');
		beaconId = 'world_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'DIA';
		frequency = 112400000.000000;
		channel = 71;
		position = { -92241.632813, 4.753915, -469561.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 25.241526, longitude = 51.590504 };
		sceneObjects = {'t:70057984'};
	};
	{
		display_name = _('HamadInternationalAirport');
		beaconId = 'world_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'DOH';
		frequency = 114400000.000000;
		channel = 91;
		position = { -91738.375000, 1.704552, -467662.687500 };
		direction = 0.000000;
		positionGeo = { latitude = 25.246739, longitude = 51.609075 };
		sceneObjects = {'t:70057985'};
	};
	{
		display_name = _('DezfulAirport');
		beaconId = 'world_3';
		type = BEACON_TYPE_HOMER;
		callsign = 'DZF';
		frequency = 293000.000000;
		position = { 726902.750000, 139.431933, -735667.875000 };
		direction = 0.000000;
		positionGeo = { latitude = 32.437688, longitude = 48.382055 };
		sceneObjects = {'t:299433984'};
	};
	{
		display_name = _('AbadanIntAirport');
		beaconId = 'world_4';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ABD';
		frequency = 115100000.000000;
		channel = 98;
		position = { 497656.156250, 2.117762, -769011.375000 };
		direction = 39.046005;
		positionGeo = { latitude = 30.369440, longitude = 48.225308 };
		sceneObjects = {'t:135987200'};
	};
	{
		display_name = _('AhvazIntAirport');
		beaconId = 'world_5';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'AWZ';
		frequency = 114000000.000000;
		channel = 87;
		position = { 601183.000000, 19.343321, -710012.375000 };
		direction = 0.000000;
		positionGeo = { latitude = 31.333680, longitude = 48.753383 };
		sceneObjects = {'t:138117120'};
	};
	{
		display_name = _('AghajariAirport');
		beaconId = 'world_6';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'AJR';
		frequency = 114900000.000000;
		channel = 96;
		position = { 529719.750000, 15.064815, -627094.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 30.747129, longitude = 49.666614 };
		sceneObjects = {'t:138051584'};
	};
	{
		display_name = _('BirjandIntAirport');
		beaconId = 'world_7';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BJD';
		frequency = 113500000.000000;
		channel = 82;
		position = { 755343.625000, 1987.950108, 280254.062500 };
		direction = 0.000000;
		positionGeo = { latitude = 32.971711, longitude = 59.188199 };
		sceneObjects = {'t:138182656'};
	};
	{
		display_name = _('BushehrIntAirport');
		beaconId = 'world_8';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BUZ';
		frequency = 117450000.000000;
		channel = 121;
		position = { 323763.656250, 3.951670, -526801.750000 };
		direction = 0.000000;
		positionGeo = { latitude = 28.954390, longitude = 50.822687 };
		sceneObjects = {'t:115965952'};
	};
	{
		display_name = _('KonarakAirport');
		beaconId = 'world_9';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'CBH';
		frequency = 115600000.000000;
		channel = 103;
		position = { -76577.453125, 7.896365, 419583.406250 };
		direction = 0.000000;
		positionGeo = { latitude = 25.442493, longitude = 60.418338 };
		sceneObjects = {'t:72417280'};
	};
	{
		display_name = _('IsfahanIntAirport');
		beaconId = 'world_10';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ISN';
		frequency = 113200000.000000;
		channel = 79;
		position = { 739731.687500, 1545.106281, -408878.781250 };
		direction = 0.000000;
		positionGeo = { latitude = 32.743200, longitude = 51.829935 };
		sceneObjects = {'t:138149888'};
	};
	{
		display_name = _('KhoramabadAirport');
		beaconId = 'world_11';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KRD';
		frequency = 113750000.000000;
		channel = 84;
		position = { 838752.750000, 1143.893234, -734958.250000 };
		direction = 0.000000;
		positionGeo = { latitude = 33.435603, longitude = 48.291565 };
		sceneObjects = {'t:138215424'};
	};
	{
		display_name = _('PersianGulfIntAirport');
		beaconId = 'world_12';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'PRG';
		frequency = 112100000.000000;
		channel = 58;
		position = { 138587.875000, 8.811470, -343400.000000 };
		direction = 0.000000;
		positionGeo = { latitude = 27.360736, longitude = 52.763921 };
		sceneObjects = {'t:85786662'};
	};
	{
		display_name = _('YasoujAirport');
		beaconId = 'world_13';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'YSJ';
		frequency = 116550000.000000;
		channel = 112;
		position = { 513230.406250, 1809.794168, -445777.281250 };
		direction = 0.000000;
		positionGeo = { latitude = 30.692267, longitude = 51.558332 };
		sceneObjects = {'t:137235457'};
	};
	{
		display_name = _('BamAirport');
		beaconId = 'world_14';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BAM';
		frequency = 114900000.000000;
		channel = 96;
		position = { 322398.968750, 961.745163, 217582.015625 };
		direction = 15.278860;
		positionGeo = { latitude = 29.076448, longitude = 58.457110 };
		sceneObjects = {'t:635633664'};
	};
	{
		display_name = _('MahshahrAirport');
		beaconId = 'world_15';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'MAH';
		frequency = 115800000.000000;
		channel = 105;
		position = { 511409.125000, 4.488393, -677911.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 30.552476, longitude = 49.153770 };
		sceneObjects = {'t:137199616'};
	};
	{
		display_name = _('IranShahrAirport');
		beaconId = 'world_16';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ISR';
		frequency = 117000000.000000;
		channel = 117;
		position = { 124839.953125, 616.548956, 446474.812500 };
		direction = 0.000000;
		positionGeo = { latitude = 27.250878, longitude = 60.743301 };
		sceneObjects = {'t:485982208'};
	};
	{
		display_name = _('LamerdAirport');
		beaconId = 'world_17';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'LAM';
		frequency = 117000000.000000;
		channel = 117;
		position = { 138639.609375, 408.533947, -301812.562500 };
		direction = 0.000000;
		positionGeo = { latitude = 27.373321, longitude = 53.183399 };
		sceneObjects = {'t:202900450'};
	};
	{
		display_name = _('SirjanAirport');
		beaconId = 'world_18';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'SRJ';
		frequency = 114600000.000000;
		channel = 93;
		position = { 375428.000000, 1770.880555, -53782.679688 };
		direction = 38.621605;
		positionGeo = { latitude = 29.556245, longitude = 55.662874 };
		sceneObjects = {'t:654409728'};
	};
	{
		display_name = _('YazdIntAirport');
		beaconId = 'world_19';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'YZD';
		frequency = 117700000.000000;
		channel = 124;
		position = { 638284.687500, 1217.881101, -181221.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 31.905809, longitude = 54.282602 };
		sceneObjects = {'t:722239488'};
	};
	{
		display_name = _('ZabolAirport');
		beaconId = 'world_20';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ZAL';
		frequency = 113100000.000000;
		channel = 78;
		position = { 554497.625000, 481.219018, 508861.656250 };
		direction = 0.000000;
		positionGeo = { latitude = 31.098855, longitude = 61.539211 };
		sceneObjects = {'t:722042880'};
	};
	{
		display_name = _('ZahedanIntAirport');
		beaconId = 'world_21';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ZDN';
		frequency = 116000000.000000;
		channel = 107;
		position = { 372413.093750, 1374.990511, 453719.562500 };
		direction = 0.000000;
		positionGeo = { latitude = 29.478620, longitude = 60.897067 };
		sceneObjects = {'t:267255808'};
	};
	{
		display_name = _('RafsanjanAirport');
		beaconId = 'world_22';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'RAF';
		frequency = 112300000.000000;
		channel = 70;
		position = { 457627.093750, 1599.779920, -15210.083984 };
		direction = 0.000000;
		positionGeo = { latitude = 30.301377, longitude = 56.053985 };
		sceneObjects = {'t:291078144'};
	};
	{
		display_name = _('SaravanAirport');
		beaconId = 'world_23';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'SRN';
		frequency = 114100000.000000;
		channel = 88;
		position = { 147173.937500, 1188.521696, 601627.312500 };
		direction = 21.645060;
		positionGeo = { latitude = 27.401091, longitude = 62.314887 };
		sceneObjects = {'t:206340096'};
	};
	{
		display_name = _('BuHasa');
		beaconId = 'world_24';
		type = BEACON_TYPE_DME;
		callsign = 'BH';
		frequency = 309000000.000000;
		position = { -279199.968750, 123.237291, -293394.625000 };
		direction = 0.000000;
		positionGeo = { latitude = 23.610117, longitude = 53.383057 };
		sceneObjects = {'t:52199424'};
	};
}
