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
		display_name = _('SPO');
		beaconId = 'world_0';
		type = BEACON_TYPE_DME;
		callsign = 'SPO';
		frequency = 115900000.000000;
		channel = 106;
		position = { 9532.270508, 375.469003, -33918.769531 };
		direction = 0.000000;
		positionGeo = { latitude = 68.090876, longitude = 21.691239 };
		sceneObjects = {'t:7380992'};
	};
	{
		display_name = _('IL');
		beaconId = 'world_1';
		type = BEACON_TYPE_HOMER;
		callsign = 'IL';
		frequency = 320000.000000;
		position = { -68046.976563, 10.171057, -332875.375000 };
		direction = 1.112529;
		positionGeo = { latitude = 67.273887, longitude = 14.724322 };
		sceneObjects = {'t:6414336'};
	};
	{
		display_name = _('KM');
		beaconId = 'world_2';
		type = BEACON_TYPE_HOMER;
		callsign = 'KMV';
		frequency = 445000.000000;
		position = { -273023.843750, 41.289569, 571098.750000 };
		direction = 0.000000;
		positionGeo = { latitude = 64.947098, longitude = 34.494417 };
		sceneObjects = {'t:3412655'};
	};
	{
		display_name = _('I');
		beaconId = 'world_3';
		type = BEACON_TYPE_ILS_NEAR_HOMER;
		callsign = 'I';
		frequency = 595000.000000;
		position = { -5002.646484, 151.316771, 470403.500000 };
		direction = 28.035988;
		positionGeo = { latitude = 67.476008, longitude = 33.541861 };
		sceneObjects = {'t:101703695'};
	};
	{
		display_name = _('IO');
		beaconId = 'world_4';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'IO';
		frequency = 1210000.000000;
		position = { -3592.853760, 168.949784, 467682.406250 };
		direction = 28.035988;
		positionGeo = { latitude = 67.493239, longitude = 33.486301 };
		sceneObjects = {'t:101965847'};
	};
	{
		display_name = _('TG');
		beaconId = 'world_5';
		type = BEACON_TYPE_HOMER;
		callsign = 'TG';
		frequency = 346000.000000;
		position = { -95899.734375, 308.975010, -73787.507813 };
		direction = -4.450158;
		positionGeo = { latitude = 67.146417, longitude = 20.744220 };
		sceneObjects = {'t:6152335'};
	};
	{
		display_name = _('OG');
		beaconId = 'world_6';
		type = BEACON_TYPE_ILS_FAR_HOMER;
		callsign = 'OG';
		frequency = 325000.000000;
		position = { -100723.312500, 282.948891, -64834.023438 };
		direction = 92.990539;
		positionGeo = { latitude = 67.103345, longitude = 20.950895 };
		sceneObjects = {'t:85393408'};
	};
	{
		display_name = _('NAT');
		beaconId = 'world_7';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'NAT';
		frequency = 113000000.000000;
		channel = 77;
		position = { -140469.843750, 374.937966, -48483.906250 };
		direction = 125.939482;
		positionGeo = { latitude = 66.746476, longitude = 21.322729 };
		sceneObjects = {'t:20881408'};
	};
	{
		display_name = _('enontekio');
		beaconId = 'airfield26_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ET';
		frequency = 111300000.000000;
		position = { 42283.116020, 304.675720, 37300.683552 };
		direction = 34.122832;
		positionGeo = { latitude = 68.368371, longitude = 23.431362 };
		sceneObjects = {'t:106840603'};
	};
	{
		display_name = _('enontekio');
		beaconId = 'airfield26_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ET';
		frequency = 111300000.000000;
		position = { 40519.335938, 300.000269, 36331.796875 };
		direction = 32.384086;
		positionGeo = { latitude = 68.352907, longitude = 23.406158 };
		sceneObjects = {'t:38150432'};
		chartOffsetX = 2305.000000;
	};
	{
		display_name = _('IVALO');
		beaconId = 'airfield18_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'iv';
		frequency = 212000000.000000;
		position = { 81308.664063, 142.636617, 198170.281250 };
		direction = 40.107034;
		positionGeo = { latitude = 68.613852, longitude = 27.420317 };
		sceneObjects = {'t:112329634'};
	};
	{
		display_name = _('IVALO');
		beaconId = 'airfield18_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'iv';
		frequency = 212000000.000000;
		position = { 79361.117188, 146.269876, 196633.156250 };
		direction = 41.050995;
		positionGeo = { latitude = 68.597925, longitude = 27.377829 };
		sceneObjects = {'t:38953486'};
		chartOffsetX = 2913.000000;
	};
	{
		display_name = _('kemi');
		beaconId = 'airfield3_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ke';
		frequency = 110900000.000000;
		position = { -242473.234375, 13.920783, 101148.359375 };
		direction = 4.000005;
		positionGeo = { latitude = 65.789776, longitude = 24.582205 };
		sceneObjects = {'t:59802905'};
	};
	{
		display_name = _('kemi');
		beaconId = 'airfield3_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ke';
		frequency = 110900000.000000;
		position = { -244841.203125, 10.206593, 101097.804688 };
		direction = 4.222997;
		positionGeo = { latitude = 65.768598, longitude = 24.578158 };
		sceneObjects = {'t:33661816'};
		chartOffsetX = 2742.000000;
	};
	{
		display_name = _('KUUSAMO');
		beaconId = 'airfield16_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'KO';
		frequency = 110300000.000000;
		position = { -200110.468750, 260.438066, 309767.437500 };
		direction = -56.884101;
		positionGeo = { latitude = 65.992218, longitude = 29.223027 };
		sceneObjects = {'t:68944289'};
	};
	{
		display_name = _('KUUSAMO');
		beaconId = 'airfield16_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'KO';
		frequency = 110300000.000000;
		position = { -201409.296875, 262.993854, 311850.093750 };
		direction = -55.327882;
		positionGeo = { latitude = 65.978239, longitude = 29.264668 };
		sceneObjects = {'t:34357503'};
		chartOffsetX = 2755.000000;
	};
	{
		display_name = _('KITTILA');
		beaconId = 'airfield22_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'KT';
		frequency = 111900000.000000;
		position = { -29886.739995, 196.420149, 100254.543265 };
		direction = 162.974666;
		positionGeo = { latitude = 67.693309, longitude = 24.849231 };
		sceneObjects = {'t:96739621'};
	};
	{
		display_name = _('KITTILA');
		beaconId = 'airfield22_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'KT';
		frequency = 111900000.000000;
		position = { -27546.074219, 193.237651, 99631.984375 };
		direction = 162.532506;
		positionGeo = { latitude = 67.714603, longitude = 24.837988 };
		sceneObjects = {'t:37273612'};
		chartOffsetX = 2808.000000;
	};
	{
		display_name = _('ROVANIEMI');
		beaconId = 'airfield2_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ro';
		frequency = 111700000.000000;
		position = { -154029.937500, 192.582926, 150489.890625 };
		direction = 32.931158;
		positionGeo = { latitude = 66.551531, longitude = 25.805009 };
		sceneObjects = {'t:35037527'};
		chartOffsetX = 3365.000000;
	};
	{
		display_name = _('rovaniemi');
		beaconId = 'airfield2_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ROI';
		frequency = 117700000.000000;
		channel = 124;
		position = { -152753.847036, 192.134927, 151076.966007 };
		direction = 133.046608;
		positionGeo = { latitude = 66.562533, longitude = 25.820399 };
		sceneObjects = {'t:20799742'};
	};
	{
		display_name = _('ROVANIEMI');
		beaconId = 'airfield2_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'RO';
		frequency = 111700000.000000;
		position = { -151346.553808, 185.722094, 152076.382534 };
		direction = 25.143388;
		positionGeo = { latitude = 66.574420, longitude = 25.845293 };
		sceneObjects = {'t:78135296'};
	};
	{
		display_name = _('andoya');
		beaconId = 'airfield20_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'and';
		frequency = 112200000.000000;
		position = { 150436.418141, 5.970181, -254301.768225 };
		direction = -25.486005;
		positionGeo = { latitude = 69.287831, longitude = 16.141413 };
		sceneObjects = {'t:28361734'};
	};
	{
		display_name = _('ANDOYA');
		beaconId = 'airfield20_1';
		type = BEACON_TYPE_TACAN;
		callsign = 'OYA';
		channel = 28;
		position = { 150251.713104, 5.836267, -254201.477050 };
		direction = -18.563833;
		positionGeo = { latitude = 69.286251, longitude = 16.144315 };
		sceneObjects = {'t:40331032'};
	};
	{
		display_name = _('alta');
		beaconId = 'airfield24_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'AT';
		frequency = 108900000.000000;
		position = { 220908.343750, 1.380703, 28693.539063 };
		direction = -61.043355;
		positionGeo = { latitude = 69.971912, longitude = 23.391668 };
		sceneObjects = {'t:41632460'};
	};
	{
		display_name = _('alta');
		beaconId = 'airfield24_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'AT';
		frequency = 108900000.000000;
		position = { 221869.420199, 2.831799, 27165.514723 };
		direction = -62.571235;
		positionGeo = { latitude = 69.981056, longitude = 23.352695 };
		sceneObjects = {'t:135471533'};
	};
	{
		display_name = _('alta');
		beaconId = 'airfield24_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'ATA';
		frequency = 117400000.000000;
		position = { 221492.169677, 1.383438, 27918.139628 };
		direction = -152.716596;
		positionGeo = { latitude = 69.977414, longitude = 23.371993 };
		sceneObjects = {'t:30557099'};
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'BO';
		frequency = 110300000.000000;
		position = { -67161.773438, 9.769901, -349400.187500 };
		direction = -95.223465;
		positionGeo = { latitude = 67.266378, longitude = 14.341383 };
		sceneObjects = {'t:91709872'};
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BDO';
		frequency = 117550000.000000;
		channel = 122;
		position = { -67249.984375, 24.113004, -348389.781250 };
		direction = 86.934156;
		positionGeo = { latitude = 67.266560, longitude = 14.364874 };
		sceneObjects = {'t:22553594'};
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'BD';
		frequency = 108700000.000000;
		position = { -66718.765625, 12.280599, -347185.062500 };
		direction = 93.999986;
		positionGeo = { latitude = 67.272442, longitude = 14.391316 };
		sceneObjects = {'t:91720098'};
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_3';
		type = BEACON_TYPE_TACAN;
		callsign = 'BOO';
		channel = 45;
		position = { -67263.062500, 27.759881, -348540.500000 };
		direction = -96.335987;
		positionGeo = { latitude = 67.266299, longitude = 14.361435 };
		sceneObjects = {'t:36463425'};
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_4';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'BO';
		frequency = 110300000.000000;
		position = { -66777.546875, 14.984304, -346637.437500 };
		direction = -96.094198;
		positionGeo = { latitude = 67.272439, longitude = 14.404079 };
		sceneObjects = {'t:36471792'};
		chartOffsetX = 0.000000;
	};
	{
		display_name = _('BODO');
		beaconId = 'airfield7_5';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'BD';
		frequency = 108700000.000000;
		position = { -66738.070313, 15.151941, -346621.062500 };
		direction = 94.105790;
		positionGeo = { latitude = 67.272807, longitude = 14.404359 };
		sceneObjects = {'t:36471793'};
	};
	{
		display_name = _('BARDUFOSS');
		beaconId = 'airfield21_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'BF';
		frequency = 108700000.000000;
		position = { 118472.156250, 68.947922, -159968.000000 };
		direction = 115.049920;
		positionGeo = { latitude = 69.052032, longitude = 18.561688 };
		sceneObjects = {'t:116703567'};
	};
	{
		display_name = _('BARDUFOSS');
		beaconId = 'airfield21_1';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BDF';
		frequency = 114200000.000000;
		channel = 89;
		position = { 120051.882813, 163.077708, -163714.515625 };
		direction = 0.000000;
		positionGeo = { latitude = 69.064825, longitude = 18.466246 };
		sceneObjects = {'t:26968316'};
	};
	{
		display_name = _('BARDUFOSS');
		beaconId = 'airfield21_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'BF';
		frequency = 108700000.000000;
		position = { 119159.703125, 74.357916, -161756.234375 };
		direction = 108.505368;
		positionGeo = { latitude = 69.057549, longitude = 18.516214 };
		sceneObjects = {'t:39543200'};
		chartOffsetX = 2458.000000;
	};
	{
		display_name = _('EVENES');
		beaconId = 'airfield25_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ev';
		frequency = 108900000.000000;
		position = { 61282.015625, 26.178626, -239498.046875 };
		direction = 0.000000;
		positionGeo = { latitude = 68.500738, longitude = 16.674327 };
		sceneObjects = {'t:109454520'};
	};
	{
		display_name = _('EVENES');
		beaconId = 'airfield25_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ev';
		frequency = 108900000.000000;
		position = { 58534.828125, 25.826888, -239463.953125 };
		direction = 1.600586;
		positionGeo = { latitude = 68.476190, longitude = 16.679865 };
		sceneObjects = {'t:38502784'};
		chartOffsetX = 3103.000000;
	};
	{
		display_name = _('EVENES');
		beaconId = 'airfield25_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'EVD';
		frequency = 117350000.000000;
		position = { 56424.325310, 37.023494, -239528.412772 };
		direction = -20.168114;
		positionGeo = { latitude = 68.457275, longitude = 16.681906 };
		sceneObjects = {'t:25611865'};
	};
	{
		display_name = _('EVS');
		beaconId = 'airfield25_3';
		type = BEACON_TYPE_TACAN;
		callsign = 'Evenes';
		frequency = 134000000.000000;
		channel = 67;
		position = { 60305.956482, 26.018943, -239611.550424 };
		direction = 0.000000;
		positionGeo = { latitude = 68.491937, longitude = 16.673235 };
		sceneObjects = {'t:38504908'};
	};
	{
		display_name = _('KIRKENES');
		beaconId = 'airfield14_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KIK';
		frequency = 112000000.000000;
		position = { 216295.984375, 82.962394, 279212.843750 };
		direction = 61.191883;
		positionGeo = { latitude = 69.723517, longitude = 29.867316 };
		sceneObjects = {'t:30509397'};
	};
	{
		display_name = _('KIRKENES');
		beaconId = 'airfield14_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'KR';
		frequency = 110300000.000000;
		position = { 216733.187500, 86.175883, 280525.093750 };
		direction = 61.191883;
		positionGeo = { latitude = 69.725685, longitude = 29.902477 };
		sceneObjects = {'t:134774868'};
	};
	{
		display_name = _('KIRKENES');
		beaconId = 'airfield14_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'KR';
		frequency = 110300000.000000;
		position = { 216042.437500, 84.149071, 279010.875000 };
		direction = 60.718005;
		positionGeo = { latitude = 69.721532, longitude = 29.861209 };
		sceneObjects = {'t:41590826'};
		chartOffsetX = 2194.000000;
	};
	{
		display_name = _('banak');
		beaconId = 'airfield1_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ba';
		frequency = 108300000.000000;
		channel = 20;
		position = { 233866.828125, 5.275348, 88618.070313 };
		direction = -5.675013;
		positionGeo = { latitude = 70.059883, longitude = 24.978103 };
		sceneObjects = {'t:183599105'};
		chartOffsetX = 3048.000000;
	};
	{
		display_name = _('banak');
		beaconId = 'airfield1_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ba';
		frequency = 108300000.000000;
		position = { 233845.156250, 5.275348, 88658.460938 };
		direction = 171.287990;
		positionGeo = { latitude = 70.059666, longitude = 24.979124 };
		sceneObjects = {'t:136511996'};
		chartOffsetX = 3048.000000;
	};
	{
		display_name = _('BANAK');
		beaconId = 'airfield1_2';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'BNA';
		frequency = 114400000.000000;
		channel = 91;
		position = { 246748.562500, 21.884482, 86649.906250 };
		direction = 0.000000;
		positionGeo = { latitude = 70.176266, longitude = 24.948432 };
		sceneObjects = {'t:30934764'};
	};
	{
		display_name = _('ENNA');
		beaconId = 'airfield1_3';
		type = BEACON_TYPE_TACAN;
		callsign = 'BNK';
		frequency = 111000000.000000;
		channel = 47;
		position = { 234484.437500, 5.275348, 88257.328125 };
		direction = -62.842590;
		positionGeo = { latitude = 70.065619, longitude = 24.969704 };
		sceneObjects = {'t:41894138'};
	};
	{
		display_name = _('banak');
		beaconId = 'airfield1_4';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ba';
		frequency = 108300000.000000;
		position = { 236272.218750, 1.404329, 88172.085938 };
		direction = 171.732062;
		positionGeo = { latitude = 70.081661, longitude = 24.970528 };
		sceneObjects = {'t:41894133'};
		chartOffsetX = 2734.000000;
	};
	{
		display_name = _('TC');
		beaconId = 'airfield37_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'tc';
		frequency = 110900000.000000;
		position = { 186915.515625, 8.057156, -143701.859375 };
		direction = 14.999997;
		positionGeo = { latitude = 69.670738, longitude = 18.910561 };
		sceneObjects = {'t:41066702'};
		chartOffsetX = 2242.000000;
	};
	{
		display_name = _('TR');
		beaconId = 'airfield37_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'tr';
		frequency = 109900000.000000;
		position = { 189729.859375, 2.961201, -142947.562500 };
		direction = -164.999995;
		positionGeo = { latitude = 69.696189, longitude = 18.927541 };
		sceneObjects = {'t:41157808'};
		chartOffsetX = 2729.000000;
	};
	{
		display_name = _('TR');
		beaconId = 'airfield37_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'TR';
		frequency = 109900000.000000;
		position = { 188864.515625, 4.064139, -143267.078125 };
		direction = 9.822140;
		positionGeo = { latitude = 69.688337, longitude = 18.920056 };
		sceneObjects = {'t:131516314'};
	};
	{
		display_name = _('TR');
		beaconId = 'airfield37_4';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'tr';
		frequency = 15415000000;
		channel = 1;
		position = { 189729.859375, 2.961201, -142947.562500 };
		direction = -164.999995;
		positionGeo = { latitude = 69.696189, longitude = 18.927541 };
		sceneObjects = {'t:41157808'};
		chartOffsetX = 2729.000000;
	};
	{
		display_name = _('TR');
		beaconId = 'airfield37_5';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'TR';
		frequency = 15415000000;
		channel = 1;
		position = { 188864.515625, 4.064139, -143267.078125 };
		direction = 9.822140;
		positionGeo = { latitude = 69.688337, longitude = 18.920056 };
		sceneObjects = {'t:131516314'};
	};
	{
		display_name = _('TC');
		beaconId = 'airfield37_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'TC';
		frequency = 110900000.000000;
		position = { 187341.140625, 7.419933, -143508.359375 };
		direction = -167.444000;
		positionGeo = { latitude = 69.674612, longitude = 18.915173 };
		sceneObjects = {'t:130973977'};
	};
{
		display_name = _('TC');
		beaconId = 'airfield37_6';
		type = BEACON_TYPE_ICLS_LOCALIZER;
		callsign = 'tc';
		frequency = 15625000000;
		channel = 18;
		position = { 186915.515625, 8.057156, -143701.859375 };
		direction = 14.999997;
		positionGeo = { latitude = 69.670738, longitude = 18.910561 };
		sceneObjects = {'t:41066702'};
		chartOffsetX = 2242.000000;
	};
	{
		display_name = _('TC');
		beaconId = 'airfield37_7';
		type = BEACON_TYPE_ICLS_GLIDESLOPE;
		callsign = 'TC';
		frequency = 15625000000;
		channel = 18;
		position = { 187341.140625, 7.419933, -143508.359375 };
		direction = -167.444000;
		positionGeo = { latitude = 69.674612, longitude = 18.915173 };
		sceneObjects = {'t:130973977'};
	};
	{
		display_name = _('Tromso');
		beaconId = 'airfield37_7'; 
		type = BEACON_TYPE_VORTAC;
		callsign = 'TRO';
		frequency = 113800000;
		channel = 85;
		position = { 187787, 7.419933, -143367 };
		direction = 41.500201;
		positionGeo = { latitude = 69.67865, longitude = 18.9184166667 };
		sceneObjects = {'t:298090496'};
	};
	{
		display_name = _('kiruna');
		beaconId = 'airfield5_0';
		type = BEACON_TYPE_VOR_DME;
		callsign = 'KRA';
		frequency = 115200000.000000;
		channel = 99;
		position = { -20773.302734, 448.574515, -90604.937500 };
		direction = 0.000000;
		positionGeo = { latitude = 67.819159, longitude = 20.337697 };
		sceneObjects = {'t:23710662'};
	};
	{
		display_name = _('kiruna');
		beaconId = 'airfield5_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'nq';
		frequency = 110300000.000000;
		channel = 0;
		position = { -19763.384766, 439.153393, -90019.617188 };
		direction = 41.341962;
		positionGeo = { latitude = 67.828273, longitude = 20.351338 };
		sceneObjects = {'t:98500880'};
	};
	{
		display_name = _('OP');
		beaconId = 'airfield5_2';
		type = BEACON_TYPE_HOMER;
		callsign = 'OP';
		frequency = 360000.000000;
		position = { -13196.632813, 388.636283, -85692.046875 };
		direction = 0.000000;
		positionGeo = { latitude = 67.887545, longitude = 20.452711 };
		sceneObjects = {'t:7364608'};
	};
	{
		display_name = _('kiruna');
		beaconId = 'airfield5_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'nq';
		frequency = 110300000.000000;
		channel = 0;
		position = { -21857.253906, 460.000460, -91594.265625 };
		direction = 34.295009;
		positionGeo = { latitude = 67.809341, longitude = 20.314502 };
		sceneObjects = {'t:37347330'};
		chartOffsetX = 2941.000000;
	};
	{
		display_name = _('NX');
		beaconId = 'airfield36_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'nx';
		frequency = 111500000.000000;
		position = { -268657.531250, 378.000378, -141319.390625 };
		direction = 127.149956;
		positionGeo = { latitude = 65.587226, longitude = 19.295169 };
		sceneObjects = {'t:51986870'};
	};
	{
		display_name = _('ARV');
		beaconId = 'airfield36_1';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'arv';
		frequency = 109350000.000000;
		position = { -267438.125000, 378.000347, -142767.265625 };
		direction = -48.175145;
		positionGeo = { latitude = 65.597806, longitude = 19.263059 };
		sceneObjects = {'t:52781269'};
	};
	{
		display_name = _('NX');
		beaconId = 'airfield36_2';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'nx';
		frequency = 111500000.000000;
		position = { -267186.625000, 371.834173, -143274.515625 };
		direction = 129.800094;
		positionGeo = { latitude = 65.599936, longitude = 19.251909 };
		sceneObjects = {'t:32645547'};
		chartOffsetX = 2753.000000;
	};
	{
		display_name = _('ARV');
		beaconId = 'airfield36_3';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'arv';
		frequency = 109350000.000000;
		position = { -269325.531250, 376.656627, -140707.468750 };
		direction = -50.200029;
		positionGeo = { latitude = 65.581383, longitude = 19.308821 };
		sceneObjects = {'t:32645548'};
		chartOffsetX = 3091.000000;
	};
	{
		display_name = _('KALLAX');
		beaconId = 'airfield15_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'SPA';
		frequency = 109900000.000000;
		position = { -272688.968750, 23.881887, -12231.873047 };
		direction = 136.230021;
		positionGeo = { latitude = 65.556679, longitude = 22.093108 };
		sceneObjects = {'t:32514729'};
		chartOffsetX = 3638.000000;
	};
	{
		display_name = _('KALLAX');
		beaconId = 'airfield15_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'PA';
		frequency = 110300000.000000;
		position = { -275523.625000, 2.356733, -9515.799805 };
		direction = -43.770000;
		positionGeo = { latitude = 65.530817, longitude = 22.150798 };
		sceneObjects = {'t:32333968'};
		chartOffsetX = 3642.000000;
	};
	{
		display_name = _('KALLAX');
		beaconId = 'airfield15_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'PA';
		frequency = 110300000.000000;
		position = { -273069.179195, 19.704110, -11697.089735 };
		direction = -44.461525;
		positionGeo = { latitude = 65.553185, longitude = 22.104544 };
		sceneObjects = {'t:50808301'};
	};
	{
		display_name = _('KALLAX');
		beaconId = 'airfield15_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'SPA';
		frequency = 109900000.000000;
		position = { -275030.785846, 8.093541, -9815.298648 };
		direction = 135.400544;
		positionGeo = { latitude = 65.535287, longitude = 22.144513 };
		sceneObjects = {'t:50242231'};
	};
	{
		display_name = _('VIDSEL');
		beaconId = 'airfield17_0';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'VDL';
		frequency = 109500000.000000;
		position = { -237705.687500, 181.000181, -100583.320313 };
		direction = 117.341749;
		positionGeo = { latitude = 65.872232, longitude = 20.169496 };
		sceneObjects = {'t:60817528'};
	};
	{
		display_name = _('VIDSEL');
		beaconId = 'airfield17_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'VDL';
		frequency = 109500000.000000;
		position = { -236667.656250, 181.000181, -102802.382813 };
		direction = 117.384014;
		positionGeo = { latitude = 65.881272, longitude = 20.120534 };
		sceneObjects = {'t:33923219'};
		chartOffsetX = 2615.000000;
	};
	{
		display_name = _('IRD');
		beaconId = 'airfield12_0';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ird';
		frequency = 108500000.000000;
		position = { 132933.890625, 75.043944, 408287.125000 };
		direction = 135.339994;
		positionGeo = { latitude = 68.794244, longitude = 32.728113 };
		sceneObjects = {'t:39903446'};
		chartOffsetX = 2989.000000;
	};
	{
		display_name = _('IPF');
		beaconId = 'airfield12_1';
		type = BEACON_TYPE_ILS_LOCALIZER;
		callsign = 'ipf';
		frequency = 110300000.000000;
		position = { 130118.757813, 84.202355, 411072.562500 };
		direction = -44.660001;
		positionGeo = { latitude = 68.764782, longitude = 32.782387 };
		sceneObjects = {'t:39813120'};
		chartOffsetX = 3600.000000;
	};
	{
		display_name = _('IRD');
		beaconId = 'airfield12_2';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ird';
		frequency = 108500000.000000;
		position = { 131009.187500, 79.373988, 410014.500000 };
		direction = 131.947180;
		positionGeo = { latitude = 68.774404, longitude = 32.760946 };
		sceneObjects = {'t:119283893'};
	};
	{
		display_name = _('IPF');
		beaconId = 'airfield12_3';
		type = BEACON_TYPE_ILS_GLIDESLOPE;
		callsign = 'ipf';
		frequency = 110300000.000000;
		position = { 132368.437500, 76.383728, 408667.343750 };
		direction = -43.834051;
		positionGeo = { latitude = 68.788632, longitude = 32.734679 };
		sceneObjects = {'t:119784001'};
	};
}
