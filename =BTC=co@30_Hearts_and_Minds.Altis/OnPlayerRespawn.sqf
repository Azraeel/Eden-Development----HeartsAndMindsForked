[player] remoteExec ["requestResupplyFlags", 2];

{
    private _box = _x;
    if (!isNull _box) then 
    {
        [_box, player] call roleArsenal;
    };
} forEach ARSENAL_CRATES;

//Incon Airpower
[player,"initPlayer"] call APW_fnc_APWMain;

if ((typeOf player) in ["rhsusf_army_ocp_medic","rhsusf_army_ocp_medic","rhsusf_army_ocp_medic","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_combatcrewman","rhsusf_army_ocp_combatcrewman","rhsusf_army_ocp_helipilot","rhsusf_army_ocp_engineer"]) then  { // MASTER CONFIG - MEDEVAC ROLES
    [player, BIS_requesterMod, BIS_providerMod] call BIS_fnc_addSupportLink;
};

if ((typeOf player) in ["rhsusf_army_ocp_squadleader","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_squadleader","rhsusf_army_ocp_officer"]) then  { // MASTER CONFIG - CAS ROLES
    player setVariable ["APW_initRadioTrig",true];
};
