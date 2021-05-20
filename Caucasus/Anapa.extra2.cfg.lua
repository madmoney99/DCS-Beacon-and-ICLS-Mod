--[[
Modified by TonyG to work with v2 of the Caucasus Beacon Mod.  Back up your original before overwriting.  This file adds the ILS and VORTAC info to the F10 Airdrome Information in game.
Last checked with DCS v2.7.1.6430 (May 20,2021)
Readme located https://github.com/madmoney99/Caucasus-and-NTTR-ICLS-Mod
]]--

if Airdromes[12] ~= nil then
	Airdromes[12]["reference_point"] = { x = -5412.409668, y = 243128.820313 }
	Airdromes[12]["runwayName"] = {}
	Airdromes[12]["runwayName"][0] = "22"
	Airdromes[12]["runwayName"][1] = "04"
	Airdromes[12]["runways"] = {}
	Airdromes[12]["runways"][0] = {}
	Airdromes[12]["runways"][0]["id"] = 1;
	Airdromes[12]["runways"][0]["name"] = "22-04";
	Airdromes[12]["runways"][0]["start"] = "22";
	Airdromes[12]["runways"][0]["end"] = "04";
	Airdromes[12]["default_camera_position"] = { pnt = {-4737.000488, 145.000000, 242694.875000 }, bearing = 164.602560} 
	Airdromes[12]["fueldepots"] = { "externalId:220001", "externalId:220002", "externalId:220003", "externalId:220004", "externalId:220005", "externalId:220006", "externalId:220007", "externalId:220008", "externalId:220009", "externalId:220010", "externalId:220011", "externalId:220012", "externalId:220013", "externalId:220014", "externalId:220015", "externalId:220016", "externalId:220017"};
	Airdromes[12]["shelters"] = { "externalId:220018", "externalId:220019", "externalId:220020", "externalId:220021", "externalId:220022", "externalId:220023", "externalId:220024", "externalId:220025", "externalId:220026", "externalId:220027", "externalId:220028", "externalId:220029", "externalId:220030", "externalId:220031", "externalId:220032", "externalId:220033", "externalId:220034", "externalId:220035", "externalId:220036", "externalId:220037", "externalId:220038", "externalId:220039", "externalId:220040", "externalId:220041", "externalId:220042", "externalId:220043", "externalId:220044", "externalId:220045", "externalId:220046", "externalId:220047", "externalId:220048", "externalId:220049", "externalId:220050", "externalId:220051", "externalId:220052", "externalId:220053", "externalId:220054", "externalId:220055", "externalId:220056", "externalId:220057", "externalId:220058", "externalId:220059", "externalId:220060", "externalId:220061", "externalId:220062", "externalId:220063", "externalId:220064", "externalId:220065", "externalId:220066", "externalId:220067", "externalId:220068", "externalId:220069"};
	Airdromes[12]["towers"] = { "externalId:220000"};
	Airdromes[12]["warehouses"] = { "externalId:220070", "externalId:220071", "externalId:220072", "externalId:220073", "externalId:220074", "externalId:220075", "externalId:220076", "externalId:220077", "externalId:220078", "externalId:220079", "externalId:220080", "externalId:220081", "externalId:220082", "externalId:220083", "externalId:220084", "externalId:220085", "externalId:220086", "externalId:220087", "externalId:220088", "externalId:220089", "externalId:220090", "externalId:220091", "externalId:220092", "externalId:220093", "externalId:220094", "externalId:220095", "externalId:220096", "externalId:220097", "externalId:220098", "externalId:220099", "externalId:220100", "externalId:220101", "externalId:220102", "externalId:220103", "externalId:220104", "externalId:220105", "externalId:220106", "externalId:220107", "externalId:220108", "externalId:220109", "externalId:220110", "externalId:220111", "externalId:220112", "externalId:220113", "externalId:220114", "externalId:220115", "externalId:220116", "externalId:220117", "externalId:220118", "externalId:220119", "externalId:220120", "externalId:220121", "externalId:220122", "externalId:220123", "externalId:220124", "externalId:220125", "externalId:220126", "externalId:220127"};
	Airdromes[12]["projectors"] = {}
	Airdromes[12]["projectors"][0] = {}
	Airdromes[12]["projectors"][0]["sceneObjects"] = { "externalId:220128", "externalId:220129"};
	Airdromes[12]["projectors"][0]["runwayId"] = 1;
	Airdromes[12]["projectors"][0]["runwaySide"] = "04";
	Airdromes[12]["projectors"][1] = {}
	Airdromes[12]["projectors"][1]["sceneObjects"] = { "externalId:220130", "externalId:220131"};
	Airdromes[12]["projectors"][1]["runwayId"] = 1;
	Airdromes[12]["projectors"][1]["runwaySide"] = "22";
	Airdromes[12]["beacons"] = {}
	Airdromes[12]["beacons"][0] = {}
	Airdromes[12]["beacons"][0]["beaconId"] = "airfield12_0";
	Airdromes[12]["beacons"][0]["runwayId"] = 1;
	Airdromes[12]["beacons"][0]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][0]["runwaySide"] = "22";
	Airdromes[12]["beacons"][1] = {}
	Airdromes[12]["beacons"][1]["beaconId"] = "airfield12_1";
	Airdromes[12]["beacons"][1]["runwayId"] = 1;
	Airdromes[12]["beacons"][1]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][1]["runwaySide"] = "22";
	Airdromes[12]["beacons"][2] = {}
	Airdromes[12]["beacons"][2]["beaconId"] = "airfield12_2";
	Airdromes[12]["beacons"][2]["runwayId"] = 1;
	Airdromes[12]["beacons"][2]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][2]["runwaySide"] = "04";
	Airdromes[12]["beacons"][3] = {}
	Airdromes[12]["beacons"][3]["beaconId"] = "airfield12_3";
	Airdromes[12]["beacons"][3]["runwayId"] = 1;
	Airdromes[12]["beacons"][3]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][3]["runwaySide"] = "04";
	Airdromes[12]["beacons"][4] = {}
	Airdromes[12]["beacons"][4]["beaconId"] = "airfield12_4";
	Airdromes[12]["beacons"][5] = {}
	Airdromes[12]["beacons"][5]["beaconId"] = "airfield12_5";
	Airdromes[12]["beacons"][5]["runwayId"] = 1;
	Airdromes[12]["beacons"][5]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][5]["runwaySide"] = "04";
	Airdromes[12]["beacons"][6] = {}
	Airdromes[12]["beacons"][6]["beaconId"] = "airfield12_6";
	Airdromes[12]["beacons"][6]["runwayId"] = 1;
	Airdromes[12]["beacons"][6]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][6]["runwaySide"] = "04";
	Airdromes[12]["beacons"][7] = {}
	Airdromes[12]["beacons"][7]["beaconId"] = "airfield12_7";
	Airdromes[12]["beacons"][7]["runwayId"] = 1;
	Airdromes[12]["beacons"][7]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][7]["runwaySide"] = "22";
	Airdromes[12]["beacons"][8] = {}	
	Airdromes[12]["beacons"][8]["beaconId"] = "airfield12_8";
	Airdromes[12]["beacons"][8]["runwayId"] = 1;
	Airdromes[12]["beacons"][8]["runwayName"] = "04-22";
	Airdromes[12]["beacons"][8]["runwaySide"] = "22";
	Airdromes[12]["radio"] = {"airfield12_0"};
end
