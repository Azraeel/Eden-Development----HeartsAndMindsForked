
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

//ECONOMY
[west, btc_global_reputation, [["rhsusf_m1043_d_mk19", 800],["UK3CB_CW_US_B_LATE_UH1H_M240",1000],["rhsusf_m1043_d_m2", 400],["fza_ah64d_b2e_nr", 4000],["RHS_M6", 800],["RHS_M2A2", 2000],["RHS_MELB_AH6M", 1600],["rhsusf_m113d_usarmy_M240",1000],["rhsusf_m113d_usarmy_MK19",1200],["rhsusf_m1045_d",600],["RHS_UH60M_d",800],["RHS_M119_D",800],["rhsusf_m109d_usarmy",1000]]] call acex_fortify_fnc_registerObjects;


["acex_fortify_objectPlaced", {
  params ["_player", "_side", "_objectPlaced"];
    _objectPlaced call btc_veh_fnc_add;
    btc_global_reputation = [west] call acex_fortify_fnc_getBudget;
    clearWeaponCargoGlobal _objectPlaced;
    clearItemCargoGlobal _objectPlaced;
    clearMagazineCargoGlobal _objectPlaced;
    clearBackpackCargoGlobal _objectPlaced;
}] call CBA_fnc_addEventHandler;

["acex_fortify_objectDeleted", {
  params ["_player", "_side", "_objectDeleted"];
   [] spawn { sleep 5; btc_global_reputation = [west] call acex_fortify_fnc_getBudget;
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
 