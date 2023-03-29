btc_map_mapIllumination = ace_map_mapIllumination;
if !(isNil "btc_custom_loc") then {
    {
        _x params ["_pos", "_cityType", "_cityName", "_radius"];
        private _location = createLocation [_cityType, _pos, _radius, _radius];
        //_location setText _cityName;
    } forEach btc_custom_loc;
};
btc_intro_done = [] spawn btc_respawn_fnc_intro;
[] call btc_int_fnc_shortcuts;
[] call btc_lift_fnc_shortcuts;

[{!isNull player}, {
    [] call compileScript ["core\doc.sqf"];
    execVM "scripts\empty_vehicles_marker.sqf";

    btc_respawn_marker setMarkerPosLocal player;
    player addRating 9999;
    //["InitializePlayer", [player]] call BIS_fnc_dynamicGroups;

    [player] call btc_eh_fnc_player;

    private _arsenal_trait = player call btc_arsenal_fnc_trait;
    if (btc_p_arsenal_Restrict isEqualTo 3) then {
        [_arsenal_trait select 1] call btc_arsenal_fnc_weaponsFilter;
    };
    [] call btc_int_fnc_add_actions;

    if (player getVariable ["interpreter", false]) then {
        player createDiarySubject ["btc_diarylog", localize "STR_BTC_HAM_CON_INFO_ASKHIDEOUT_DIARYLOG", '\A3\ui_f\data\igui\cfg\simpleTasks\types\talk_ca.paa'];
    };

    switch (btc_p_autoloadout) do {
        case 1: {
            player setUnitLoadout ([_arsenal_trait select 0] call btc_arsenal_fnc_loadout);
        };
        case 2: {
            removeAllWeapons player;
        };
        default {
        };
    };

    [] call btc_respawn_fnc_screen;

    if (btc_debug) then {
        addMissionEventHandler ["MapSingleClick", {
            params ["_units", "_pos", "_alt", "_shift"];
            if (
                alive player &&
                !_alt &&
                !_shift
            ) then {
                vehicle player setPos _pos;
            };
        }];
        player allowDamage false;

        [{!isNull (findDisplay 12)}, {
            ((findDisplay 12) displayCtrl 51) ctrlAddEventHandler ["Draw", btc_debug_fnc_marker];
        }] call CBA_fnc_waitUntilAndExecute;
    };
}] call CBA_fnc_waitUntilAndExecute;

//EDEN - CONFIG - Admin Slot WL

WHITELISTED = [
    "76561198047333011", // Tetlys
    "76561197992739622", // Paladin
    "76561198010606123", // Kyle
    "76561199182684233", // NARBAR
    "76561199078232622", // SOV
    "76561198011818172", // Cashton
    "76561199142040782", // JakMc
    "76561198807583841" // Cryptic
];


if (player getVariable ["Reserved", false]) then {
    if !(getplayerUID player in WHITELISTED) then {"end1" call BIS_fnc_endMission;};
};

//SUPPORT CODE
Private _UnitRole = roleDescription player;

if ((_UnitRole == "Company Commander @ CROSSROADS")
    or (_UnitRole == "Alpha Squad Leader@Alpha (Infantry)")
    or (_UnitRole == "Bravo Squad Leader@Bravo (Infantry)")
    or (_UnitRole == "Charlie Squad Leader@Charlie (Infantry)")) then {
player setVariable ["APW_initAddaction",true];
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