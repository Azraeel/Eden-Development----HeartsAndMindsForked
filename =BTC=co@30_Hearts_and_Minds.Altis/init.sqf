
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
["UK3CB_ION_I_Urban_MELB_AH6M_H", 900] //attack littlebird
["UK3CB_ION_I_Urban_Orca_Armed_CAS", 900] //attack Orca
["UK3CB_ION_I_Urban_LR_M2", 400] //Landrover M2
["UK3CB_ION_I_Urban_M1030", 300] //Dirtbike
["UK3CB_ION_I_Urban_MaxxPro_M2", 400]  //MRAP M2
["UK3CB_ION_I_Urban_MaxxPro_MK19", 500]  //MRAP MK19
["UK3CB_ION_I_Urban_Offroad_M2", 400] //Offroad M2
["UK3CB_ION_I_Urban_Pickup_M2", 400] //Pickup M2
["UK3CB_ION_I_Urban_LSV_02_Armed", 400] //ATV M2
["UK3CB_ION_I_Urban_LSV_02_AT", 500]  //ATV AT
["UK3CB_ION_I_Urban_SUV_Armed", 450] //mini gun SUV
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
 