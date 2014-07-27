//Allow player to respawn with his loadout? If true unit will respawn with all ammo from initial save! Set to false to disable this and rely on other scripts!
vas_onRespawn = true;
//Preload Weapon Config?
vas_preload = true;
//If limiting weapons its probably best to set this to true so people aren't loading custom loadouts with restricted gear.
vas_disableLoadSave = false;
//Amount of save/load slots
vas_customslots = 9; //9 is actually 10 slots, starts from 0 to whatever you set, so always remember when setting a number to minus by 1, i.e 12 will be 11.
//Disable 'VAS hasn't finished loading' Check !!! ONLY RECOMMENDED FOR THOSE THAT USE ACRE AND OTHER LARGE ADDONS !!!
vas_disableSafetyCheck = false;
/*
	NOTES ON EDITING!
	YOU MUST PUT VALID CLASS NAMES IN THE VARIABLES IN AN ARRAY FORMAT, NOT DOING SO WILL RESULT IN BREAKING THE SYSTEM!
	PLACE THE CLASS NAMES OF GUNS/ITEMS/MAGAZINES/BACKPACKS/GOGGLES IN THE CORRECT ARRAYS! TO DISABLE A SELECTION I.E
	GOGGLES vas_goggles = [""]; AND THAT WILL DISABLE THE ITEM SELECTION FOR WHATEVER VARIABLE YOU ARE WANTING TO DISABLE!
	
														EXAMPLE
	vas_weapons = ["srifle_EBR_ARCO_point_grip_F","arifle_Khaybar_Holo_mzls_F","arifle_TRG21_GL_F","Binocular"];
	vas_magazines = ["30Rnd_65x39_case_mag","20Rnd_762x45_Mag","30Rnd_65x39_caseless_green"];
	vas_items = ["ItemMap","ItemGPS","NVGoggles"];
	vas_backpacks = ["B_Bergen_sgg_Exp","B_AssaultPack_rgr_Medic"];
	vas_goggles = [""];				

												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//If the arrays below are empty (as they are now) all weapons, magazines, items, backpacks and goggles will be available
//Want to limit VAS to specific weapons? Place the classnames in the array!
vas_weapons = ["hlc_lmg_M60E4","hlc_rifle_M21","hlc_rifle_M14DMR","hlc_rifle_m14sopmod","hlc_rifle_RU556","hlc_rifle_RU5562","hlc_rifle_Colt727","hlc_rifle_Colt727_GL","hlc_rifle_bcmjack","hlc_rifle_Bushmaster300","hlc_rifle_vendimus","hlc_rifle_SAMR","hlc_rifle_honeybase","hlc_rifle_honeybadger","RH_m4","RH_m4_m203","RH_m4_ris","RH_m4_ris_m203","RH_m4a1_ris","RH_m4a1_ris_m203","RH_m4sbr","RH_m4sbr_g","RH_m4sbr_b","RH_m16a1","RH_m16a1gl","RH_m16a2","RH_m16a2gl","RH_m16a3","RH_m16a4","RH_m16a4gl","RH_m16a4_m","RH_mk12mod1","RH_samr","RH_ar10","hgun_mas_m9_F", "hgun_mas_usp_l_F", "mas_launch_maaws_F", "mas_launch_M136_F", "mas_launch_Stinger_F", "Binocular", "Rangefinder","SMG_01_F"];
//Want to limit VAS to specific magazines? Place the classnames in the array!
vas_magazines = ["hlc_100Rnd_762x51_B_M60E4","hlc_100Rnd_762x51_T_M60E4","hlc_100Rnd_762x51_M_M60E4","hlc_20Rnd_762x51_B_M14","hlc_20rnd_762x51_T_M14","hlc_50rnd_762x51_M_M14","29rnd_300BLK_STANAG","29rnd_300BLK_STANAG_S","hlc_30rnd_556x45_EPR","hlc_30rnd_556x45_SOST","hlc_30rnd_556x45_SPR","RH_20Rnd_762x51_AR10","30rnd_556x45_STANAG","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","RH_30Rnd_556x45_Mk262","1Rnd_HE_Grenade_shell","15Rnd_mas_9x21_Mag", "30Rnd_45ACP_Mag_SMG_01", "30Rnd_45ACP_Mag_SMG_01_Tracer_Green",
"12Rnd_mas_45acp_Mag", 
"mas_MAAWS", 
"mas_M136", 
"mas_Stinger", 
"HandGrenade", 
"SmokeShell", 
"SmokeShellYellow", 
"SmokeShellGreen", 
"SmokeShellRed", 
"SmokeShellPurple", 
"SmokeShellOrange", 
"Chemlight_green", 
"Chemlight_red", 
"Chemlight_blue", 
"3Rnd_UGL_FlareCIR_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareWhite_F","3Rnd_UGL_FlareYellow_F","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell","3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell","3Rnd_HE_Grenade_shell",
"DemoCharge_Remote_Mag", 
"SatchelCharge_Remote_Mag", 
"ATMine_Range_Mag", 
"ClaymoreDirectionalMine_Remote_Mag", 
"APERSMine_Range_Mag", 
"APERSBoundingMine_Range_Mag", 
"SLAMDirectionalMine_Wire_Mag", 
"APERSTripMine_Wire_Mag"];
//Want to limit VAS to specific items? Place the classnames in the array!
vas_items = ["hlc_rifle_m14sopmod","hlc_muzzle_snds_M14","hlc_optic_artel_m14","hlc_optic_LRT_m14","hlc_muzzle_556NATO_KAC","hlc_muzzle_300blk_KAC","RH_compM4s","RH_eotech553","RH_t1","RH_reflex","RH_Delft","RH_shortdot","RH_ta31rco","RH_ta31rco_2d","RH_m3lr","optic_DMS","optic_NVS","optic_NightStalker","optic_tws","optic_Arco","optic_Holosight","optic_aco","optic_ACO_grn","optic_hamr","acc_flashlight","acc_pointer_IR","muzzle_snds_M","RH_peq2","RH_peq2_top","RH_peq15","RH_peq15_top","RH_m4covers_s","RH_m4covers_f","RH_m16covers_s","RH_m16covers_f","RH_SFM952V",
"RH_SFM952V_tan","RH_qdss_nt4","RH_saker","RH_qdss_nt4b","RH_sakerb","RH_spr_mbs","NVGoggles_mas_mask", 
"NVGoggles_mas_mask2", 
"NVGoggles_mas_mask_b", 
"NVGoggles_mas_mask2_b", 
"NVGoggles_mas_mask_t", 
"NVGoggles_mas_mask2_t", 
"NVGoggles_mas_mask3", 
"NVGoggles_mas", 
"NVGoggles_o_mas", 
"H_mas_mar_HelmetB", "H_mas_mar_HelmetB_paint", "H_mas_mar_HelmetB_light", "H_mas_mar_HelmetB_d", "H_mas_mar_HelmetB_paint_d", "H_mas_mar_HelmetB_light_d", "H_mas_mar_HelmetB_v", "H_mas_mar_HelmetB_paint_v", "H_mas_mar_HelmetB_light_v", "H_mas_mar_HelmetB_g", "H_mas_mar_HelmetB_paint_g", "H_mas_mar_HelmetB_light_g", "H_mas_mar_HelmetB_b", "H_mas_mar_HelmetB_paint_b", "H_mas_mar_HelmetB_light_b", "H_mas_mar_HelmetB_w", "H_mas_mar_HelmetB_paint_w", "H_mas_mar_HelmetB_light_w", "H_mas_mar_helmetv_us", "H_mas_mar_helmetd_us", "H_mas_mar_helmetw_us", "H_mas_mar_helmetvgog_us", "H_mas_mar_helmetdgog_us", "H_mas_mar_helmetwgog_us", "H_mas_mar_helmetv_wrap_us", "H_mas_mar_helmetd_wrap_us", "H_mas_mar_helmetw_wrap_us", "H_mas_mar_helmetvgog_wrap_us", "H_mas_mar_helmetdgog_wrap_us", "H_mas_mar_helmetwgog_wrap_us", "H_mas_mar_HelmetBind_v", "H_mas_mar_HelmetBind_d", "H_mas_mar_HelmetBind_w", "H_mas_mar_Cap_headphones", "H_mas_mar_Woolhat", "H_mas_mar_Woolhat_c", "H_mas_mar_Woolhat_w", "H_mas_mar_Cap", "H_mas_mar_Booniehat_wood", "H_mas_mar_Booniehat_rgr", "H_mas_mar_Booniehat_des", "H_mas_mar_Balaclava", "H_mas_mar_Balaclava_ht", "H_mas_mar_Balaclava_b", "H_mas_mar_Balaclava_ht_b", "H_mas_mar_helmet_ht", "H_mas_mar_woolhat_ht", "H_mas_mar_pro_ht", "H_mas_mar_pro_ht_v", "H_mas_mar_pro_ht_d", "H_mas_mar_pro_ht_b", "H_mas_mar_off", "H_mas_mar_off_v", "H_mas_mar_off_d", "H_mas_mar_off_g", "H_mas_mar_helmet_us", "H_mas_mar_helmet_bala_us", "H_mas_mar_helmet_wrap_us", "H_mas_mar_helmet_l_us", "H_mas_mar_helmet_l_bala_us", "H_mas_mar_helmet_g_us", "H_mas_mar_helmet_g_bala_us", "H_mas_mar_helmet_g_wrap_us", "H_mas_mar_helmet_pro_bala", "H_mas_mar_helmet_pro_bala_b", "H_mas_mar_headset_b", "H_mas_mar_revcapheadset_b", "H_mas_mar_bandana", "H_mas_mar_bandana_v", "H_mas_mar_bandana_d", "H_mas_mar_HelmetB_camo", "H_mas_mar_HelmetB_plain", "H_mas_mar_HelmetB_plain_d",
"U_mas_mar_B_CombatUniform_des", 
"U_mas_mar_B_CombatUniform_des_tshirt", 
"U_mas_mar_B_CombatUniform_des_vest", 
"U_mas_mar_B_IndUniform1_d", 
"U_mas_mar_B_IndUniform2_d", 
"U_mas_mar_B_GhillieSuit_d", 
"V_mas_mar_Rangemaster_belt_d", 
"V_mas_mar_BandollierB_rgr_d", 
"V_mas_mar_PlateCarrier1_rgr_d", 
"V_mas_mar_PlateCarrier2_rgr_d", 
"V_mas_mar_PlateCarrierGL_rgr_d", 
"V_mas_mar_ChestrigB_rgr_d", 
"tf_anprc152","tf_anarc210","tf_rt1523g","tf_rf7800str",
"B_UavTerminal", 
"FirstAidKit", 
"I_UavTerminal", 
"ItemCompass", 
"ItemGPS", 
"AGM_EarBuds","AGM_Bandage","AGM_Morphine","AGM_Epipen","AGM_Bloodbag","AGM_UAVBattery",
"Medikit", 
"O_UavTerminal", 
"Kio_Balaclava_blk","Kio_Balaclava_blkSkull","Kio_Balaclava_grn","Kio_Balaclava_des","Kio_Balaclava_multicam","Kio_Balaclava_hex","Kio_Balaclava_wcam","Kio_Balaclava_urbcam",
"ToolKit", 
"MineDetector","FHQ_optic_ACOG","FHQ_optic_ACOG_tan","FHQ_optic_AIM","FHQ_optic_AIM_tan","FHQ_optic_TWS3050","FHQ_optic_HWS","FHQ_optic_HWS_tan","FHQ_optic_HWS_G33","FHQ_optic_HWS_G33_tan","FHQ_optic_MicroCCO","FHQ_optic_MicroCCO_tan","FHQ_optic_MicroCCO_low","FHQ_optic_MicroCCO_low_tan","FHQ_optic_LeupoldERT","FHQ_optic_LeupoldERT_tan","FHQ_acc_ANPEQ15","FHQ_acc_ANPEQ15_black","FHQ_acc_LLM01L","FHQ_acc_LLM01F","FHQ_optic_VCOG","FHQ_optic_VCOG_tan","FHQ_optic_AC11704","FHQ_optic_AC11704_tan","FHQ_optic_AC12136","FHQ_optic_AC12136_tan","FHQ_optic_MARS","FHQ_optic_MARS_tan","shemagh_faceD","shemagh_faceOD","shemagh_neckD","shemagh_neckOD","Head_Wrap","Head_WrapTAN","Tact_HoodTAN","Tact_HoodMC","Tact_HoodMAR","Tact_HoodACU","Tact_HoodOD","Ghost_ReconOD","Ghost_ReconBLK","Ghost_ReconTAN"];
//Want to limit backpacks? Place the classnames in the array!
vas_backpacks = ["B_mas_AssaultPack_des", "B_mas_Kitbag_des", "B_mas_Bergen_des", "B_mas_AssaultPack_des_Medic", "B_mas_AssaultPack_des_AA", "B_mas_AssaultPack_des_AT", "B_mas_AssaultPack_des_AT4", "B_mas_AssaultPack_des_MAAWS", "B_mas_AssaultPack_des_ATM", "B_mas_AssaultPack_des_Repair", "B_mas_Bergen_des_Exp"];
//Want to limit goggles? Place the classnames in the array!
vas_glasses = [];


/*
	NOTES ON EDITING:
	THIS IS THE SAME AS THE ABOVE VARIABLES, YOU NEED TO KNOW THE CLASS NAME OF THE ITEM YOU ARE RESTRICTING. THIS DOES NOT WORK IN 
	CONJUNCTION WITH THE ABOVE METHOD, THIs IS ONLY FOR RESTRICTING / LIMITING ITEMS FROM VAS AND NOTHING MORE
	
														EXAMPLE
	vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
	vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
	vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
	
												Example for side specific (TvT)
	switch(playerSide) do
	{
		//Blufor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
		//Opfor
		case west:
		{
			vas_r_weapons = ["srifle_EBR_F","arifle_MX_GL_F"];
			vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"]; //Removes suppressors from VAS
			vas_r_goggles = ["G_Diving"]; //Remove diving goggles from VAS
		};
	};
*/

//Below are variables you can use to restrict certain items from being used.
//Remove Weapon
vas_r_weapons = [];
vas_r_backpacks = [];
//Magazines to remove from VAS
vas_r_magazines = [];
//Items to remove from VAS
vas_r_items = ["muzzle_snds_H","muzzle_snds_B","muzzle_snds_L","muzzle_snds_H_MG"];
//Goggles to remove from VAS
vas_r_glasses = [];
