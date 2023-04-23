
[compileScript ["core\init.sqf"]] call CBA_fnc_directCall;


//EDEN - ARSENAL 
[] call compileFinal preprocessFileLineNumbers "scripts\rolearsenal.sqf";



ARSENAL_CRATES = [];
Arsenal_typename = "C_supplyCrate_F"; // CONFIG - ARSENAL TYPE

[Arsenal_typename, "init",
{
    private _box = (_this select 0);
    private _player = player;

    diag_log format ["ROLE ARSENAL EH Role: %1", roleDescription _player];


    ARSENAL_CRATES pushback _box;
    [roleArsenal, [_box, _player], 5] call CBA_fnc_waitAndExecute;
},
true,
[],
true
] call CBA_fnc_addClassEventHandler;

// MASTER CONFIG - ECONOMY
[west, btc_global_economy, [
["UK3CB_GAF_O_Gaz66_ZU23", 250], //GAZ-66 ZU-23
["UK3CB_GAF_O_BMD1R", 500], //BMD-1R
["UK3CB_GAF_O_BMD1P", 650], //BMD-1P
["rhs_bmd2m", 750], //BMD-2M
["UK3CB_GAF_B_BMP1", 600],  //BMP1
["UK3CB_GAF_B_BRM1K", 650], //BRM1K
["UK3CB_GAF_B_BMP2K", 700],  //BMP2K
["UK3CB_GAF_B_MTLB_BMP", 500], //MTLB BMP
["UK3CB_GAF_B_MTLB_KPVT", 450], //MTLB KPVT
["UK3CB_GAF_B_MTLB_Cannon", 475],  //MTLB Cannon
["UK3CB_GAF_B_BTR70", 400], //BTR70
["UK3CB_GAF_B_BTR80", 450], //BTR80
["UK3CB_GAF_B_BTR80a", 600], //BTR80A
["FA_UAF_BTR3", 650], //BTR3
["FA_UAF_BTR4", 700], //BTR4
["FA_UAF_Fiona_Ambulance", 550], //BTR80A
["FA_UAF_Fiona", 500], //BTR80A
["FA_UAF_Novator", 350], //BTR80A
["UK3CB_GAF_B_BRDM2", 300], //BRDM2
["UK3CB_GAF_B_BRDM2_ATGM", 700], //BRDM2 ATGM
["UK3CB_GAF_O_Gaz66_Med", 150], //GAZ-66
["UK3CB_GAF_B_Gaz66_Ammo", 150], //GAZ-66
["UK3CB_GAF_B_Gaz66_Covered", 150], //GAZ-66
["UK3CB_GAF_B_Gaz66_Radio", 150], //GAZ-66
["UK3CB_GAF_B_Gaz66_Repair", 150], //GAZ-66
["UK3CB_GAF_B_Ural_Recovery", 150], //GAZ-66
["UK3CB_GAF_B_M1030", 50], //Motorcycle
["UK3CB_GAF_B_Offroad", 100], //Offroad
["UK3CB_GAF_B_UAZ_AGS30", 200], //UAZ AGS30
["UK3CB_GAF_B_UAZ_MG", 175], //UAZ MG
["UK3CB_GAF_B_UAZ_Open", 125], //UAZ
["UK3CB_GAF_B_UAZ_SPG9", 200], //UAZ SPG9
["UK3CB_GAF_B_Mi_24P", 1500], //Hind
["UK3CB_GAF_B_Mi_24V", 1750], //Hind
["UK3CB_GAF_B_Mi8AMTSh", 1300], //Mi8AMTSh
["UK3CB_GAF_B_Mi8", 1150], //Mi8
["UK3CB_GAF_B_MIG21_CAS", 2000], //MiG21 CAS
["UK3CB_GAF_B_MIG29S", 2500], //MiG29
["UK3CB_GAF_B_Su25SM", 2750], //SU25 CAS
["UK3CB_GAF_B_T80UK", 950], //T80UK
["UK3CB_GAF_B_T72A", 750], //T72A
["UK3CB_GAF_B_T80A", 800], //T80A
["UK3CB_GAF_B_T80BVK", 900], //T80BVK
["UK3CB_GAF_B_T72BC", 875], //T72BC
["UK3CB_GAF_B_T72BA", 800], //T72BA
["UK3CB_GAF_B_ZU23", 400], //ZU23
["UK3CB_FIA_B_Hilux_Igla_Chair", 400], //Hilux Igla
["UK3CB_FIA_B_Hilux_Rocket_Arty", 500], //Hilux Rocket Arty
["UK3CB_FIA_B_Hilux_Mortar", 550], //Hilux Mortar
["UK3CB_FIA_B_Hilux_Zu23_Front", 375], //Hilux ZU23
["UK3CB_FIA_B_Hilux_Metis", 375], //Hilux Metis
["UK3CB_GAF_B_BRDM2_HQ", 300], //BRDM2 HQ
["UK3CB_GAF_B_BRDM2_UM", 350], //BRDM2UM
["RHS_Mi24Vt_vvsc", 200], //Mi24VT
["UK3CB_GAF_B_BM21", 2000], //BM21
["UK3CB_GAF_B_2S1", 1750], //2S1
["UK3CB_GAF_O_ZsuTank", 1250], //Shiika AA
["UK3CB_GAF_O_2S6M_Tunguska", 3000] //Tunguska AA
]] call acex_fortify_fnc_registerObjects;


["acex_fortify_objectPlaced", {
  params ["_player", "_side", "_objectPlaced"];
    _objectPlaced call btc_veh_fnc_add;
    btc_global_economy = [west] call acex_fortify_fnc_getBudget;
    clearWeaponCargoGlobal _objectPlaced;
    clearItemCargoGlobal _objectPlaced;
    clearMagazineCargoGlobal _objectPlaced;
    clearBackpackCargoGlobal _objectPlaced;
}] call CBA_fnc_addEventHandler;

["acex_fortify_objectDeleted", {
  params ["_player", "_side", "_objectDeleted"];
   [] spawn { sleep 5; btc_global_economy = [west] call acex_fortify_fnc_getBudget;
}
}] call CBA_fnc_addEventHandler;

[{
    params ["_unit", "_object", "_cost"];
    private _return = (getPosATL _object) select 2 < 1;
    //Add blocked for distance to other vehicles
    _return
}] call ace_fortify_fnc_addDeployHandler;

["acex_fortify_onDeployStart", {
  params ["_player", "_object", "_cost"];
   _object enableSimulation false;
}] call CBA_fnc_addEventHandler;
 