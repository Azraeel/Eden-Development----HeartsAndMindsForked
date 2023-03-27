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
player setVariable ["APW_initRadioTrig",true];

//MEDEVACLINK

Private _UnitRole = roleDescription player;

if ((_UnitRole == "Company Commander @ CROSSROADS")
    or (_UnitRole == "Alpha Medic")
    or (_UnitRole == "Bravo Medic")
    or (_UnitRole == "Charlie Medic")) then {
[player, BIS_requesterMod, BIS_providerMod] call BIS_fnc_addSupportLink;
};