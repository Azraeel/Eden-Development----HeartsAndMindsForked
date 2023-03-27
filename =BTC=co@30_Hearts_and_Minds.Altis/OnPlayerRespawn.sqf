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

if ((typeOf player) in ["",""]) then  {
    [player, BIS_requesterMod, BIS_providerMod] call BIS_fnc_addSupportLink;
};

player setVariable ["APW_initRadioTrig",true];