//Variables required by mission initVar + can be overriden by mission initVar

OT_hasAce = true;
OT_hasTFAR = (isClass (configFile >> "CfgPatches" >> "task_force_radio"));
OT_hasJetsDLC = ("B_Plane_Fighter_01_F" isKindOf "Air");

//Buildings (mission override)
OT_shopBuildings = [];
OT_spawnHouseBuildings = [];
OT_carShopBuildings = [];

if ((["ot_setmodunits", 0] call BIS_fnc_getParamValue) == 1) then {
//Default Loadouts
OT_CRIMBaseLoadout = [
	["LIB_M9130","","","",["LIB_5Rnd_762x54",5],[],""],
	[],
	["hgun_P07_khk_F","","","",["16Rnd_9x21_Mag",17],[],""],
	["U_I_C_Soldier_Para_4_F",[["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2]]],
	["V_PlateCarrier1_tna_F",[]],
	[],
	"",
	"",
	[],
	["ItemMap","","","","",""]
];

OT_Unit_Police = "LIB_US_Tank_Crew";
OT_Loadout_Police = [
	[["LIB_M1_Carbine","","","",["LIB_15Rnd_762x33",15],[],""],[],[],
	["U_LIB_US_Tank_Crew",[["FirstAidKit",1],["LIB_15Rnd_762x33",2,15],["LIB_US_Mk_2",1,1]]],
	[],
	["U_LIB_US_Tank_Crew",[["LIB_15Rnd_762x33",2,15],["LIB_US_Mk_2",1,1]]],
	["V_LIB_US_Vest_Carbine",[["LIB_US_Mk_2",1,1]]],
	[],
	"H_Cap_police",
	"",
	[],
	["","","","","",""]
];

//Default recruit types and squads
OT_Recruitables = [
    //US Rifleman (IFA3)
		["LIB_US_Rifleman",[
		["LIB_M1_Garand","","","",["LIB_8Rnd_762x63",8],[],""],
		[],[],
		["U_LIB_US_Private",[["LIB_ACC_M1_Bayo",1],[["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1],["LIB_8Rnd_762x63",3,8]]],
		["V_LIB_US_Vest_Garand",[["LIB_8Rnd_762x63",4,8],["LIB_US_Mk_2",2,1]]],
		["B_LIB_US_Backpack",[]],
		"H_LIB_US_Helmet","",[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US Sniper (IFA3)
		["LIB_US_Sniper",[
		["LIB_M1903A4_Springfield","","","",["LIB_5Rnd_762x63",5],[],""],
		[],
		["LIB_Colt_M1911","","","",["LIB_7Rnd_45ACP",7],[],""],
		["U_LIB_US_Snipe",[["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1],["LIB_5Rnd_762x63",5,5],["LIB_7Rnd_45ACP",3,7]]],
		["V_LIB_US_Vest_Garand",[["LIB_US_M18",2,1],["LIB_US_Mk_2",1,1]]],[],
		"H_LIB_US_Helmet_Net","",
		["LIB_Binocular_US","","","",[],[],""],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US AT Soldier (IFA3)
		["LIB_US_AT_Soldier",[
		["LIB_M1_Carbine","","","",["LIB_15Rnd_762x33",15],
		[],""],
		["LIB_M1A1_Bazooka","","","",["LIB_1Rnd_60mm_M6",1],[],""],
		["U_LIB_US_Private_1st",[], [["LIB_15Rnd_762x33",2,15]]],
		["V_LIB_US_Vest_Carbine",[["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1]]],
		["B_LIB_US_Backpack_RocketBag",[["LIB_1Rnd_60mm_M6",1,1]]],
		"H_LIB_US_Helmet","",
		[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US Medic (IFA3)
		["LIB_US_Medic",[
		["LIB_M1_Garand","","","",["LIB_8Rnd_762x63",8],[],""],
		[],[],
		["U_LIB_US_Med",[["LIB_8Rnd_762x63",4,8]]],
		["V_LIB_US_Vest_Medic",[]],
		["B_LIB_US_MedicBackpack",[["ACE_morphine",10],["ACE_epinephrine",10],["ACE_fieldDressing",20],["ACE_EarPlugs",1]]],
		"H_LIB_US_Helmet_Med","",[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US SMG Gunner / Team Leader (IFA3)
		["LIB_US_Smgunner",[
		["LIB_M1A1_Thompson","","","",["LIB_30Rnd_45ACP",30],[],""],[],
		["LIB_FLARE_PISTOL","","","",["LIB_1Rnd_flare_white",1],[],""],
		["U_LIB_US_Sergeant",[["LIB_30Rnd_45ACP",1,30],["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1]]],
		["V_LIB_US_Vest_Thompson",[["LIB_30Rnd_45ACP",3,30],["LIB_US_Mk_2",1,1],["LIB_1Rnd_flare_red",1,1]]],
		["B_LIB_US_Backpack",[]],
		"H_LIB_US_Helmet_Net","",
		[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US Grenadier (IFA3)
		["LIB_US_Grenadier",[
		["LIB_M1_Garand_M7","LIB_ACC_GL_M7","","",["LIB_8Rnd_762x63",8],["LIB_1Rnd_G_Mk2",1],""],[],[],
		["U_LIB_US_Private_1st",[["LIB_ACC_M1_Bayo",1],["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1],["LIB_8Rnd_762x63",3,8]]],
		["V_LIB_US_Vest_Grenadier",[["LIB_8Rnd_762x63",3,8],["LIB_1Rnd_G_Mk2",1,1],["LIB_1Rnd_G_M9A1",2,1]]],
		["B_LIB_US_Bandoleer",[]],"H_LIB_US_Helmet_Net","",[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
	//US Machine Gunner (IFA3)
		["LIB_US_Mgunner",[
		["LIB_M1918A2_BAR","","","",["LIB_20Rnd_762x63",20],[],""],[],[],
		["U_LIB_US_Private_1st",[["ACE_morphine",1],["ACE_epinephrine",1],["ACE_fieldDressing",2],["ACE_EarPlugs",1],["LIB_20Rnd_762x63",2,20]]],
		["V_LIB_US_Vest_Bar",[["LIB_20Rnd_762x63",3,20],["LIB_US_Mk_2",2,1]]],
		["B_LIB_US_Backpack",[]],
		"H_LIB_US_Helmet","",[],
		["ItemMap","","","ItemCompass","ItemWatch",""]]
		],
];

OT_Squadables = [
	["Sentry",["LIB_US_SMgunner","LIB_US_Rifleman"],"SEN"],
	["Sniper Squad",["LIB_US_Sniper","LIB_US_Sniper"],"SNI"],
	["Light AT Squad",["LIB_US_SMgunner","LIB_US_AT_Soldier","LIB_US_Grenadier","LIB_US_Medic"],"LAT"],
	["AT Squad",["LIB_US_SMgunner","LIB_US_AT_Soldier","LIB_US_AT_Soldier","LIB_US_Medic"],"AT"],
//	["AA Squad",["LIB_US_SMgunner","I_Soldier_AA_F","I_Soldier_AAA_F","LIB_US_Medic"],"AA"],
	["Fire Team",["LIB_US_SMgunner","LIB_US_Rifleman","LIB_US_Mgunner","LIB_US_AT_Soldier","LIB_US_Sniper","LIB_US_Medic"],"FIR"],
	["Infantry Team",["LIB_US_SMgunner","LIB_US_Rifleman","LIB_US_Mgunner","LIB_US_AT_Soldier","LIB_US_Sniper","LIB_US_Medic","LIB_US_AT_Soldier"],"INF"]
];
};
