[player] remoteExec ["requestResupplyFlags", 2];

{
    private _box = _x;
    if (!isNull _box) then 
    {
        [_box, player] call roleArsenal;
    };
} forEach ARSENAL_CRATES;

//SUPPORT CODE

Private _UnitRole = roleDescription player;

if ((_UnitRole == "Company Commander @ CROSSROADS")
    or (_UnitRole == "Alpha Squad Leader@Alpha (Infantry)")
    or (_UnitRole == "Bravo Squad Leader@Bravo (Infantry)")
    or (_UnitRole == "Charlie Squad Leader@Charlie (Infantry)")) then {
player setVariable ["APW_initRadioTrig",true];
};


if ((_UnitRole == "Company Commander @ CROSSROADS")
    or (_UnitRole == "Alpha Medic")
    or (_UnitRole == "Bravo Medic")
    or (_UnitRole == "Charlie Medic")
    or (_UnitRole == "O.G.R.E Commander@O.G.R.E (Logistics)")
    or (_UnitRole == "STALKER 1 Pilot@Joint Air Command 1")
    or (_UnitRole == "STALKER 1 Pilot@Joint Air Command 2")) then {
[player, BIS_requesterMod, BIS_providerMod] call BIS_fnc_addSupportLink;
};

[player,"initPlayer"] call APW_fnc_APWMain;