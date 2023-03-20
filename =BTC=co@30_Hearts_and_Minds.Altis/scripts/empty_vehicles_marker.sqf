private [ "_vehmarkers", "_markedveh", "_cfg", "_vehtomark", "_marker" ];

_vehmarkers = [];
_markedveh = []; 
_cfg = configFile >> "cfgVehicles";
_vehtomark = [];

_vehtomark = [
// EDEN - CONFIG - VEHICLES TO BE MARKED
// Medical Vehicle
"UK3CB_CW_US_B_LATE_UH1H_MED", 
"rhsusf_m113d_usarmy_medical", 
// Humvee unarmed and armed
"rhsusf_m998_d_4dr", 
"rhsusf_m998_d_2dr_halftop", 
"rhsusf_m1043_d", 
"rhsusf_m1043_d_m2", 
"rhsusf_m1043_d_mk19",
"rhsusf_m1152_sicps_usarmy_d", 
"rhsusf_m1045_d", // TOW
// M113
"rhsusf_m113d_usarmy_M240", 
"rhsusf_m113d_usarmy", 
"rhsusf_m113d_usarmy_MK19", 
// BRADLEY
"RHS_M2A2",
"RHS_M6", 
// PALADIN ARTY
"rhsusf_m109d_usarmy",
// M119 HOWITZER 
"RHS_M119_D",
"itc_land_rhsusf_m119_d",
// MTVR OPEN, CLOSED, AND FLATBED 
"UK3CB_B_MTVR_Open_DES", 
"UK3CB_B_MTVR_Closed_DES",
"UK3CB_B_MTVR_Recovery_DES",
//  HEMTT REPAIR, REARM, REFUEL, & FLATBED
"rhsusf_M977A4_REPAIR_usarmy_d",
"rhsusf_M977A4_AMMO_usarmy_d",
"rhsusf_M978A4_usarmy_d",
"rhsusf_M977A4_usarmy_d",
"rhsusf_M1078A1R_SOV_M2_D_fmtv_socom",
// HELI UNARMED/ DOOR GUNS
"RHS_MELB_MH6M",
"UK3CB_CW_US_B_LATE_UH1H_M240",
"RHS_UH60M_d",
// HELI CARGO
"RHS_CH_47F_10",
// HELI ATTACK
"RHS_MELB_AH6M",
"fza_ah64d_b2e_nr",
"UK3CB_CW_US_B_LATE_UH1H_GUNSHIP"
];


// Misc variables
markers_reset = [99999,99999,0];

while { true } do {

    _markedveh = [];
    {
        if (alive _x && (typeof _x) in _vehtomark && (_x distance2d btc_gear_object) > 250 && (count (crew _x)) == 0) then {
            _markedveh pushback _x;
        };
    } foreach vehicles;

    if ( count _markedveh != count _vehmarkers ) then {
        { deleteMarkerLocal _x; } foreach _vehmarkers;
        _vehmarkers = [];

        {
            _marker = createMarkerLocal [ format [ "markedveh%1" ,_x], markers_reset ];
            _marker setMarkerColorLocal "ColorKhaki";
            _marker setMarkerTypeLocal "mil_dot";
            _marker setMarkerSizeLocal [ 0.75, 0.75 ];
            _vehmarkers pushback _marker;

        } foreach _markedveh;
    };

    {
        _marker = _vehmarkers select (_markedveh find _x);
        _marker setMarkerPosLocal getpos _x;
        _marker setMarkerTextLocal  (getText (_cfg >> typeOf _x >> "displayName"));

    } foreach _markedveh;

    sleep 15;
};