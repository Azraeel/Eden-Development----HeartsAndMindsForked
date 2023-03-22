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

player setVariable ["APW_initAddaction",true];