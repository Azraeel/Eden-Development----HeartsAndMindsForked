roleArsenal = {
	params ["_box", "_player"];


	Private _UnitRole = roleDescription _player;

	//Clear the inventory
	clearMagazineCargoGlobal _box;
	clearItemCargoGlobal _box;
	clearBackpackCargoGlobal _box;
	clearWeaponCargoGlobal _box;

	_Role = [];

	// Command
	if (_UnitRole == "Company Commander @ CROSSROADS") then
	{_Role = "CO"};

    // GROUND
		//SL
			if ((_UnitRole == "Alpha Squad Leader@Alpha (Infantry)")
			or (_UnitRole == "Bravo Squad Leader@Bravo (Infantry)")
			or (_UnitRole == "Charlie Squad Leader@Charlie (Infantry)")) then
			{_Role = "SL"};
		//MEDIC
			if ((_UnitRole == "Alpha Medic")
			or (_UnitRole == "Bravo Medic")
			or (_UnitRole == "Charlie Medic")) then
			{_Role = "MEDIC"};
		//FTL
			if ((_UnitRole == "Alpha FTL")
			or (_UnitRole == "Bravo FTL")
			or (_UnitRole == "Charlie FTL")) then
			{_Role = "FTL"};
		//AUTORIFLEMAN
			if ((_UnitRole == "Alpha AutoRifleman")
			or (_UnitRole == "Bravo AutoRifleman")
			or (_UnitRole == "Charlie AutoRifleman")) then
			{_Role = "AUTORIFLEMAN"};
		//AT
			if ((_UnitRole == "Alpha AT")
			or (_UnitRole == "Bravo AT")
			or (_UnitRole == "Charlie AT")) then
			{_Role = "AT"};
    //GRENADIER
			if ((_UnitRole == "Alpha Grenadier")
			or (_UnitRole == "Bravo Grenadier")
			or (_UnitRole == "Charlie Grenadier")) then
			{_Role = "GRENADIER"};
    //RIFLEMAN
			if ((_UnitRole == "Alpha Rifleman")
			or (_UnitRole == "Bravo Rifleman")
			or (_UnitRole == "Charlie Rifleman")) then
			{_Role = "RIFLEMAN"};

  //Armor
    if ((_UnitRole == "Warpig Commander@Armor 1")
	or (_UnitRole == "Warpig Commander@Armor 2")
    or (_UnitRole == "Warpig Driver")
    or (_UnitRole == "Warpig Gunner")) then
    {_Role = "WARPIG"};  
  //O.G.R.E
    if ((_UnitRole == "O.G.R.E Commander@O.G.R.E (Logistics)")
    or (_UnitRole == "O.G.R.E Engineer")) then
    {_Role = "OGRE"};
  //STALKER
    if ((_UnitRole == "STALKER 1 Pilot@Joint Air Command 1")
    or (_UnitRole == "STALKER 1 Crew")
    or (_UnitRole == "STALKER 2 Pilot@Joint Air Command 2")
    or (_UnitRole == "STALKER 2 Crew")) then
    {_Role = "STALKER"};

	//Empty array of gear to add to the arsenal per player.
	Private _GearToAdd = [];

	//Define the gear for each Role
	Private _DefaultGear = [
//PRIMARY
//SECONDARY
"rhsusf_weap_m1911a1","rhsusf_mag_7x45acp_MHP",
"rhsusf_weap_m9","rhsusf_mag_15Rnd_9x19_FMJ",
"hgun_esd_01_F","acc_esd_01_flashlight", "muzzle_antenna_02_f","muzzle_antenna_03_f","muzzle_antenna_01_f",
"ACE_VMH3",
"ACE_VMM3",
//LAUNCHER
//HELM
//UNIFORM
//VEST
//BACKPACK
//M40GasMask
"M40_Gas_mask_nbc_f2_d",
"M40_Gas_mask_nbc_f4_d",
"M40_Gas_mask_nbc_c1_d",
//FACEWARE
"G_Simc_tacticool",
"G_Aviator",
//NVG
"UK3CB_PVS5A",
"rhsusf_ANPVS_14",
"UK3CB_ANPVS7",
//BINOCULARS
"rhssaf_zrak_rd7j",
//RADIO
"TFAR_anprc152",
//GRENADE
"ACE_M14",
"rhs_mag_an_m14_th3",
"B_IR_Grenade",
"rhs_mag_an_m8hc",
"SmokeShellBlue",
"SmokeShellGreen",
"SmokeShellOrange",
"SmokeShellPurple",
"SmokeShellRed",
"SmokeShellYellow",
"ACE_HandFlare_White",
"ACE_HandFlare_Yellow",
"ACE_HandFlare_Red",
"ACE_HandFlare_Green",
"rhs_mag_m67",
"Chemlight_blue",
"Chemlight_green",
"ACE_Chemlight_HiBlue",
"ACE_Chemlight_HiGreen",
"ACE_Chemlight_HiRed",
"ACE_Chemlight_HiWhite",
"ACE_Chemlight_HiYellow",
"ACE_Chemlight_IR",
"ACE_Chemlight_Orange",
"Chemlight_red",
"ACE_Chemlight_UltraHiOrange",
"ACE_Chemlight_White",
"Chemlight_yellow",
//EXPLOSIVES
"rhsusf_m112_mag",
"rhsusf_m112x4_mag",
//MEDICAL
"kat_Painkiller",
"ACE_adenosine",
"ACE_fieldDressing",
"ACE_elasticBandage",
"ACE_packingBandage",
"ACE_quikclot",
"ACE_bodyBag",
"ACE_epinephrine",
"ACE_morphine",
"ACE_tourniquet",
"ACE_splint",
//MISC ITEMS
"ACE_CableTie",
"ACE_EarPlugs",
"MineDetector",
"ACE_RangeTable_82mm",
"ACE_artilleryTable",
"ACE_Banana",
"ACE_Canteen",
"ACE_Chemlight_Shield",
"ACE_DAGR",
"ACE_EarPlugs",
"ACE_EntrenchingTool",
"ACE_Flashlight_MX991",
"ACE_Humanitarian_Ration",
"ACE_IR_Strobe_Item",
"ACE_M26_Clacker",
"ACE_Clacker",
"ACE_Flashlight_XL50",
"ACE_MapTools",
"ACE_microDAGR",
"ACE_RangeCard",
"ACE_rope27",
"ACE_rope36",
"ACE_Sandbag_empty",
"ACE_SpareBarrel_Item",
"ACE_SpottingScope",
"ACE_SpraypaintRed",
"ACE_WaterBottle",
"ACE_wirecutter",
"ItemcTabHCam",
"tfw_rf3080Item",
//TERMINAL
"ItemGPS",
"Laserbatteries",
"ItemAndroid",
"ItemMicroDAGR",
"ChemicalDetector_01_watch_F",
"ItemWatch",
"ACE_Altimeter",
"ItemcTab"
	];

	Private _ADMIN = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc",
"UK3CB_M16A2", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc",
"UK3CB_M16_Carbine", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc", "rhsusf_acc_rx01_nofilter",
"UK3CB_M16A1_LSW", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc", 
"UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"H_Simc_pasgt_desu_b",
"H_Simc_pasgt_desu_SWDG_low_b",
"H_Simc_pasgt_desu_b_SWDG",
"H_Simc_pasgt_desu_SWDG_low",
"H_Simc_pasgt_desu_SWDG",
"H_Simc_Hat_Patrol_desu",
"H_Simc_Boon_desu_2",
//UNIFORM
"U_Simc_DCU_blench",
"U_Simc_DCU_blench_knee_trop",
"U_Simc_DCU_blench_knee",
"U_Simc_DCU_blench_trop",
//VEST
"V_Simc_vest_rba_mk1_alice_45_1",
"V_Simc_vest_rba_mk1_alice_45_2",
"V_Simc_vest_RBA_mk1",
"V_Simc_Alice_45",
//BACKPACK
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_flak_2",
"B_simc_rajio_gasbag_flak_1",
"UK3CB_B_Invisible",
//FACEWARE
//NVG
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
"B_Respawn_Sleeping_bag_brown_F",
"B_Respawn_TentDome_F" 
//TERMINAL

	];
	Private _CO = [
//PRIMARY
"rhs_weap_sr25_ec", "optic_erco_blk_f", "rhsusf_acc_su230a_mrds", "rhsusf_acc_acog_mdorhsusf_acc_acog2_usmc", "rhsusf_acc_compm4", "rhsusf_acc_harris_bipod", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag","rhsusf_acc_anpeq15a", "rhsusf_acc_m952v", "rhsusf_acc_wmx_bk",
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc",
"UK3CB_M16A2", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc",
"UK3CB_M16_Carbine", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc", "rhsusf_acc_rx01_nofilter",
"UK3CB_M16A1_LSW", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "a3cn_anpvs4", "a3cn_m68cco", "rhsusf_acc_acog_usmc", 
"UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"H_Simc_pasgt_desu_b",
"H_Simc_pasgt_desu_SWDG_low_b",
"H_Simc_pasgt_desu_b_SWDG",
"H_Simc_pasgt_desu_SWDG_low",
"H_Simc_pasgt_desu_SWDG",
//UNIFORM
"U_Simc_DCU_blench",
"U_Simc_DCU_blench_knee_trop",
"U_Simc_DCU_blench_knee",
"U_Simc_DCU_blench_trop",
//VEST
"V_Simc_Alice_45",
"V_Simc_vest_rba_mk1_alice_45_1",
"V_Simc_vest_rba_mk1_alice_45_2",
"V_Simc_vest_RBA_mk1",
//BACKPACK
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_flak_2",
"B_simc_rajio_gasbag_flak_1",
"UK3CB_B_Invisible",
"B_Respawn_TentDome_F",
"B_UAV_01_backpack_F",
"B_Respawn_Sleeping_bag_brown_F",
//FACEWARE
//NVG
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
"Laserbatteries",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
"B_Respawn_Sleeping_bag_brown_F",
"B_Respawn_TentDome_F" 
//TERMINAL

  ];

	Private _SL = [
//PRIMARY
"rhs_weap_sr25_ec", "optic_erco_blk_f", "rhsusf_acc_su230a_mrds", "rhsusf_acc_acog_mdorhsusf_acc_acog2_usmc", "rhsusf_acc_compm4", "rhsusf_acc_harris_bipod", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_acc_anpeq15a", "rhsusf_acc_m952v", "rhsusf_acc_wmx_bk",
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
//BACKPACK
"UK3CB_B_I_Alice_Radio_Backpack",
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_1",
"B_simc_rajio_gasbag_2",
"UK3CB_B_Invisible",
"B_UAV_01_backpack_F",
"ACE_TacticalLadder_Pack",
"B_UAV_01_backpack_F",
//FACEWARE
//NVG
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
"Laserbatteries",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
"B_Respawn_Sleeping_bag_brown_F",
"B_Respawn_TentDome_F", 
//TERMINAL
"B_UavTerminal"

	];

	Private _FTL = [
//PRIMARY
"rhs_weap_sr25_ec", "optic_erco_blk_f", "rhsusf_acc_su230a_mrds", "rhsusf_acc_acog_mdorhsusf_acc_acog2_usmc", "rhsusf_acc_compm4", "rhsusf_acc_harris_bipod", "rhsusf_20Rnd_762x51_SR25_m118_special_Mag", "rhsusf_20Rnd_762x51_SR25_m62_Mag", "rhsusf_20Rnd_762x51_SR25_m993_Mag", "rhsusf_20Rnd_762x51_SR25_mk316_special_Mag", "rhsusf_acc_anpeq15a", "rhsusf_acc_m952v", "rhsusf_acc_wmx_bk",	
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
//BACKPACK
"UK3CB_B_I_Alice_Radio_Backpack",
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_1",
"B_simc_rajio_gasbag_2",
"UK3CB_B_Invisible",
//FACEWARE
//NVG
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
"Laserbatteries",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
"kat_IV_16",
"ACE_adenosine",
"kat_AED",
"kat_X_AED",
"ACE_bloodIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"kat_plate",
"kat_clamp",
"kat_vacuum",
"ACE_epinephrine",
"kat_etomidate",
"kat_IO_FAST",
"kat_flumazenil",
"kat_lidocaine",
"kat_lorazepam",
"ACE_morphine",
"kat_naloxone",
"kat_nitroglycerin",
"kat_norepinephrine",
"ACE_personalAidKit",
"kat_phenylephrine",
"kat_phenylephrine_inject",
"ACE_plasmaIV",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"kat_retractor",
"ACE_salineIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"kat_scalpel",
"ACE_splint",
"ACE_surgicalKit",
"kat_TXA",
"kat_Carbonate"
//MISC ITEMS
//TERMINAL

	];

	Private _MEDIC = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
"V_Simc_vest_fauf_alice_249",
//BACKPACK
"B_simc_pack_med_m5",
"UK3CB_B_Alice_Bedroll_2_K",
"UK3CB_ION_B_B_RIF_MED_BLK",
"UK3CB_ION_B_B_RIF_MED_BRN",
"UK3CB_ION_B_B_RIF_MED_OLI",
"UK3CB_B_Invisible",
"B_Respawn_TentDome_F",
"B_Respawn_Sleeping_bag_brown_F",
//FACEWARE
//NVG
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
"kat_IV_16",
"ACE_adenosine",
"kat_AED",
"kat_X_AED",
"ACE_bloodIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"kat_plate",
"kat_clamp",
"kat_vacuum",
"ACE_epinephrine",
"kat_etomidate",
"kat_IO_FAST",
"kat_flumazenil",
"kat_lidocaine",
"kat_lorazepam",
"ACE_morphine",
"kat_naloxone",
"kat_nitroglycerin",
"kat_norepinephrine",
"ACE_personalAidKit",
"kat_phenylephrine",
"kat_phenylephrine_inject",
"ACE_plasmaIV",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"kat_retractor",
"ACE_salineIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"kat_scalpel",
"ACE_splint",
"ACE_surgicalKit",
"kat_TXA",
"kat_Carbonate"
//MISC ITEMS
//TERMINAL
	];

	Private _AUTORIFLEMAN = [
//PRIMARY
"UK3CB_M60", "rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51_m62_tracer", "rhsusf_100Rnd_762x51_m61_ap",
"rhs_weap_m240G", "rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51_m62_tracer", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_acc_acog_mdo", "rhsusf_acc_acog_rmr",
"rhs_weap_fnmag", "rhsusf_100Rnd_762x51", "rhsusf_100Rnd_762x51_m62_tracer", "rhsusf_100Rnd_762x51_m61_ap", "rhsusf_acc_acog_mdo", "rhsusf_acc_acog_rmr",
"rhs_weap_m249", "rhsusf_200Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_acc_saw_bipod",
"rhs_weap_m249_pip", "rhsusf_200Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_200Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_soft_pouch_coyote", "rhsusf_100Rnd_556x45_M855_mixed_soft_pouch_coyote", "rhsusf_acc_acog_rmr", "rhsusf_acc_eotech_552", "rhsusf_acc_saw_bipod",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
"V_Simc_vest_fauf_alice_249",
//BACKPACK
"UK3CB_B_Kitbag_DPM_68",
"UK3CB_ION_B_B_RIF_BLK_01",
"UK3CB_B_Alice_K",
"UK3CB_B_Alice_Bedroll_2_K",
"UK3CB_B_Kitbag_RHB",
"UK3CB_CW_US_B_LATE_B_RIF_04",
"UK3CB_B_Invisible"
//FACEWARE
//NVG
//BINOCULARS
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
//TERMINAL
	];

	Private _AT = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
//SECONDARY
//LAUNCHER
"rhs_weap_maaws",
"rhs_optic_maaws",
"rhs_weap_fim92","rhs_fim92_mag",
"rhs_weap_M136",
"rhs_weap_M136_hedp",
"rhs_weap_M136_hp",
"rhs_mag_maaws_HEAT",
"rhs_mag_maaws_HEDP",
"rhs_mag_maaws_HE",
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
//BACKPACK
"UK3CB_B_Kitbag_DPM_68",
"UK3CB_ION_B_B_RIF_BLK_01",
"UK3CB_B_Alice_K",
"UK3CB_B_Alice_Bedroll_2_K",
"UK3CB_B_Kitbag_RHB",
"UK3CB_CW_US_B_LATE_B_RIF_04",
"UK3CB_B_Invisible"
//FACEWARE
//NVG
//BINOCULARS
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
//TERMINAL
	];

  Private _GRENADIER = [
//PRIMARY
"UK3CB_M16A2_UGL", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_M441_HE", "rhs_mag_m576", "ACE_40mm_Flare_white", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_ir",
"rhs_weap_m21a_pr_pbg40", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_VOG25", "rhs_VOG25P", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m4a1_m320", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_M441_HE", "rhs_mag_m576", "ACE_40mm_Flare_white", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_ir", "rhsusf_acc_acog_usmc", "rhsusf_acc_acog_rmr", "rhsusf_acc_nt4_black", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_compm4", "rhsusf_acc_elcan",
"rhs_weap_ak74m_gp25", "rhs_30Rnd_762x39mm_polymer", "rhs_30Rnd_762x39mm_polymer_tracer", "rhs_GRD40_Green", "rhs_GRD40_Red", "rhs_GRD40_White", "rhs_VG40MD", "rhs_VG40OP_white", "rhs_VOG25", "rhs_VOG25P", "rhs_acc_dtk4screws", "rhs_acc_okp7_dovetail", "rhs_acc_1p78", "rhs_acc_pkas",
"rhs_weap_m79", "rhs_mag_M433_HEDP", "rhs_mag_M397_HET", "rhs_mag_M441_HE", "rhs_mag_m576", "ACE_40mm_Flare_white", "rhs_mag_m713_Red", "rhs_mag_m714_White", "rhs_mag_m715_Green", "rhs_mag_m716_yellow", "ACE_40mm_Flare_ir",
"UK3CB_MP5N_UGL", "rhsusf_acc_wmx_bk", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
"V_Simc_nadevest_alice_mc",
"V_Simc_vest_rba_mk1_alice_nade",
//BACKPACK
"UK3CB_B_Kitbag_DPM_68",
"UK3CB_ION_B_B_RIF_BLK_01",
"UK3CB_B_Alice_K",
"UK3CB_B_Alice_Bedroll_2_K",
"UK3CB_B_Kitbag_RHB",
"UK3CB_CW_US_B_LATE_B_RIF_04",
"UK3CB_B_Invisible"
//FACEWARE
//NVG
//BINOCULARS
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
//TERMINAL
  ];

  Private _WARPIG = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
"UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"rhsusf_cvc_green_alt_helmet",
"rhsusf_cvc_alt_helmet",
"H_Simc_CVC_G_low",
"H_Simc_CVC_G",
"H_Simc_CVC",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
"V_Simc_vest_fauf_2",
"V_Simc_vest_fauf",
//BACKPACK
"UK3CB_B_I_Alice_Radio_Backpack",
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_1",
"B_simc_rajio_gasbag_2",
"UK3CB_B_Invisible",
"B_UAV_01_backpack_F",
//FACEWARE
//NVG
"rhsusf_ANPVS_15",
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
"Laserbatteries",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
//MISC ITEMS
"ToolKit",
//TERMINAL
"B_UavTerminal"
  ];

	Private _OGRE = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
"UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"H_Cap_oli",
"H_Cap_khaki_specops_UK",
"H_Cap_usblack",
"UK3CB_H_Cap_Earpiece_APD",
"PO_H_cap_tub",
"UK3CB_H_Woolhat_BLK",
"UK3CB_H_Woolhat_GRN",
"rhsusf_Bowman",
"rhsusf_bowman_cap",
"rhsusf_mich_bare_norotos_arc_headset",
"rhsusf_mich_bare_norotos_arc_alt",
"rhsusf_mich_bare_norotos_arc",
"rhsusf_mich_bare_norotos_arc_alt_tan_headset",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"rhsusf_mich_bare_norotos_arc_alt_tan",
"H_Simc_Boon_green_8",
"H_Simc_Boon_green_5",
"H_Simc_Boon_tigre_6",
"rhsusf_opscore_bk",
"rhsusf_opscore_bk_pelt",
"rhsusf_cvc_green_alt_helmet",
"rhsusf_cvc_alt_helmet",
"H_Simc_CVC_G_low",
"H_Simc_CVC_G",
"H_Simc_CVC",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
//BACKPACK
"UK3CB_B_I_Alice_Radio_Backpack",
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_1",
"B_simc_rajio_gasbag_2",
"UK3CB_B_Invisible",
"B_UAV_01_backpack_F",
//FACEWARE
//NVG
"rhsusf_ANPVS_15",
//BINOCULARS
"ACE_MX2A",
"rhsusf_bino_leopold_mk4",
"Laserdesignator",
"Laserbatteries",
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
"kat_IV_16",
"ACE_adenosine",
"kat_AED",
"kat_X_AED",
"ACE_bloodIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"kat_plate",
"kat_clamp",
"kat_vacuum",
"ACE_epinephrine",
"kat_etomidate",
"kat_IO_FAST",
"kat_flumazenil",
"kat_lidocaine",
"kat_lorazepam",
"ACE_morphine",
"kat_naloxone",
"kat_nitroglycerin",
"kat_norepinephrine",
"ACE_personalAidKit",
"kat_phenylephrine",
"kat_phenylephrine_inject",
"ACE_plasmaIV",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"kat_retractor",
"ACE_salineIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"kat_scalpel",
"ACE_splint",
"ACE_surgicalKit",
"kat_TXA",
"kat_Carbonate",
//MISC ITEMS
"ToolKit",
//TERMINAL
"B_UavTerminal"

	];

	Private _STALKER = [
//PRIMARY
"UK3CB_M16A3", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", 
"rhs_weap_mk18", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_mk18_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4a1_d", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_anpeq15_wmx", "rhsusf_acc_anpeq15_wmx_light", "rhsusf_acc_anpeq15_bk", "rhsusf_acc_anpeq15_bk_light", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4", "rhsusf_acc_acog_d",
"rhs_weap_m4_carryhandle", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "ACE_30Rnd_556x45_Stanag_M995_AP_mag", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_l1a1_wood", "rhs_mag_20Rnd_762x51_m80a1_fnfal", "rhs_mag_20Rnd_762x51_m80_fnfal", "rhs_mag_20Rnd_762x51_m62_fnfal", "rhs_mag_20Rnd_762x51_m61_fnfal", "rhsusf_acc_aac_762sdn6_silencer", "rhsgref_acc_falmuzzle_l1a1", "rhsgref_acc_l1a1_anpvs2", "rhsgref_acc_l1a1_l2a2", 
"rhs_weap_g36c", "rhssaf_30rnd_556x45_EPR_G36", "rhssaf_30rnd_556x45_Tracers_G36", "rhs_acc_grip_ffg2", "rhsusf_acc_tacsac_tan", "rhsusf_acc_grip1", "rhsusf_acc_tdstubby_blk", "rhsusf_acc_rvg_de", "rhsusf_acc_anpeq15side", "ace_acc_pointer_green", "rhsusf_acc_anpeq15side_bk", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_m21s_pr", "rhsgref_30rnd_556x45_m21", "rhsgref_30rnd_556x45_m21_t", "rhsusf_acc_nt4_black", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhsusf_acc_acog_rmr", "rhsusf_acc_acog_usmc", "rhsusf_acc_g33_xps3", "rhsusf_acc_compm4", "rhsusf_acc_su230",  "a3cn_anpvs4",
"rhs_weap_ak74m_camo_npz", "rhs_30Rnd_545x39_7N10_camo_AK", "rhs_30Rnd_545x39_7N22_camo_AK", "rhs_acc_dtk4short", "rhs_acc_dtk", "rhs_acc_2dpzenit", "rhs_acc_perst1ik", "rhs_acc_1p87", "rhs_acc_ekp8_18", "rhs_acc_okp7_picatinny", "rhsusf_acc_acog_rmr",
"uk3cb_auga2_sr_carb_blk", "UK3CB_AUG_30Rnd_556x45_Magazine", "UK3CB_AUG_30Rnd_556x45_Magazine_RT", "rhs_mag_30Rnd_556x45_M855_Stanag", "rhs_mag_30Rnd_556x45_M855_Stanag_Tracer_Red", "rhsusf_acc_nt4_black", "rhsusf_acc_acog_rmr", "rhs_acc_ekp8_18", "rhsusf_acc_acog", "rhsusf_acc_su230",
"UK3CB_MP5A3", "UK3CB_MP5_30Rnd_9x19_Magazine", "UK3CB_MP5_30Rnd_9x19_Magazine_RT", "uk3cb_muzzle_snds_mp5", "uk3cb_acc_surefiregrip", "rhsusf_acc_rx01_nofilter",
//SECONDARY
//LAUNCHER
//HELM
"rhsusf_hgu56p_black",
"rhsusf_hgu56p_visor_black",
"rhsusf_hgu56p",
"rhsusf_hgu56p_visor",
"rhsusf_hgu56p_pink",
//UNIFORM
"U_Simc_SF_TS_jean",
"U_Simc_SF_TS_jean_trop",
"U_simc_civ_jean_blau_dunkel",
"U_simc_civ_jean_blau_dunkel_trop",
"U_simc_civ_jean_weiss",
"U_simc_civ_jean_blau",
"U_simc_civ_jean_rot_ligt",
"U_simc_civ_jean_grun",
"U_simc_civ_jean_grun_tuck_trop",
"U_simc_civ_jean_weiss_dunkel",
"U_simc_civ_jean_weiss_tuck",
"U_simc_civ_jean_khk",
"U_simc_bdu_civ_surf",
"U_simc_surf",
//VEST
"V_Simc_vest_fauf_alice_45",
"V_Simc_vest_fauf_rig_3",
"V_Simc_vest_fauf_rig_2",
"V_Simc_vest_fauf_rig_4",
"V_Simc_vest_fauf_rig_1",
"V_Simc_vest_aws_rig_2",
"V_Simc_vest_aws_rig_1",
"V_Simc_Alice_lc2_45",
"V_Simc_vest_fauf_2",
"V_Simc_vest_fauf",
//BACKPACK
"UK3CB_B_I_Alice_Radio_Backpack",
"B_simc_pack_alice_flak_frame_rajio",
"B_simc_rajio_gasbag_1",
"B_simc_rajio_gasbag_2",
"UK3CB_B_Invisible",
"B_UAV_01_backpack_F",
//FACEWARE
//NVG
"rhsusf_ANPVS_15",
//BINOCULARS
//RADIO
//GRENADE
//EXPLOSIVES
//MEDICAL
"kat_IV_16",
"ACE_adenosine",
"kat_AED",
"kat_X_AED",
"ACE_bloodIV",
"ACE_bloodIV_250",
"ACE_bloodIV_500",
"kat_plate",
"kat_clamp",
"kat_vacuum",
"ACE_epinephrine",
"kat_etomidate",
"kat_IO_FAST",
"kat_flumazenil",
"kat_lidocaine",
"kat_lorazepam",
"ACE_morphine",
"kat_naloxone",
"kat_nitroglycerin",
"kat_norepinephrine",
"ACE_personalAidKit",
"kat_phenylephrine",
"kat_phenylephrine_inject",
"ACE_plasmaIV",
"ACE_plasmaIV_250",
"ACE_plasmaIV_500",
"kat_retractor",
"ACE_salineIV",
"ACE_salineIV_250",
"ACE_salineIV_500",
"kat_scalpel",
"ACE_splint",
"ACE_surgicalKit",
"kat_TXA",
"kat_Carbonate",
//MISC ITEMS
"ToolKit",
//TERMINAL
"B_UavTerminal"

	];

	switch (_Role) do {
	  case "ADMIN": {
	    _GearToAdd = _DefaultGear + _ADMIN;
	  };
	  case "CO": {
	    _GearToAdd = _DefaultGear + _CO;
	  };
	  case "SL": {
	    _GearToAdd = _DefaultGear + _SL;
	  };
	  case "MEDIC": {
	    _GearToAdd = _DefaultGear + _MEDIC;
	  };
	  case "FTL": {
	    _GearToAdd = _DefaultGear + _FTL;
	  };
	  case "AUTORIFLEMAN": {
	    _GearToAdd = _DefaultGear + _AUTORIFLEMAN;
	  };
	  case "AT": {
	    _GearToAdd = _DefaultGear + _AT;
    };
	  case "GRENADIER": {
	    _GearToAdd = _DefaultGear + _GRENADIER;
    };
	  case "RIFLEMAN": {
	    _GearToAdd = _DefaultGear + _RIFLEMAN;
    };
    case "WARPIG": {
	    _GearToAdd = _DefaultGear + _WARPIG;
	  };
		case "OGRE": {
	    _GearToAdd = _DefaultGear + _OGRE;
	  };
	  case "STALKER": {
	    _GearToAdd = _DefaultGear + _STALKER;
	  };
	  default {
	    _GearToAdd = _DefaultGear + ["ACE_Banana"];
	  };
	};

	[_box, false] call ace_arsenal_fnc_removeBox;
	[_box, _GearToAdd, false] call ace_arsenal_fnc_initBox;
}