private [ "_vehmarkers", "_markedveh", "_cfg", "_vehtomark", "_marker" ];

_vehmarkers = [];
_markedveh = []; 
_markedveh1 = [];
_cfg = configFile >> "cfgVehicles";
_vehtomark = [];

_vehtomark = [
// EDEN - CONFIG - VEHICLES TO BE MARKED
// Medical Vehicle
"UK3CB_ION_I_Urban_Bell412_Medic",
"UK3CB_ION_B_Urban_Hilux_Ambulance", 

// Humvee MRAP and SUV unarmed and armed
"UK3CB_ION_I_Urban_Offroad_Service",
"UK3CB_ION_I_Urban_MaxxPro_M2",
"UK3CB_ION_I_Urban_MaxxPro_MK19",
"UK3CB_ION_I_Urban_LR_M2",
"UK3CB_ION_I_Urban_Offroad_M2",
"UK3CB_ION_I_Urban_Pickup_M2",
"UK3CB_ION_I_Urban_SUV_Armed",
"UK3CB_ION_I_Urban_LSV_02_Armed",
"UK3CB_ION_I_Urban_LSV_02_AT",
"UK3CB_ION_I_Urban_LR_Open",
"UK3CB_ION_I_Urban_MB4WD_Unarmed",
"UK3CB_ION_I_Urban_Landcruiser",

// M113
"UK3CB_ION_I_Urban_M113_supply",

// REPAIR, REARM, REFUEL, & FLATBED
"UK3CB_KDF_B_Gaz66_Radio",
"UK3CB_ION_I_Urban_T810_Recovery",
"UK3CB_ION_I_Urban_T810_Reammo",
"UK3CB_ION_I_Urban_T810_Repair",
"UK3CB_ION_I_Urban_T810_Refuel",

// HELI UNARMED/ DOOR GUNS
"UK3CB_ION_B_Urban_MELB_MH6M",
"UK3CB_ION_B_Urban_Orca",

// HELI CARGO
"UK3CB_ION_I_Urban_Merlin",

// HELI ATTACK
"UK3CB_ION_I_Urban_Orca_Armed_CAS",
"UK3CB_ION_I_Urban_MELB_AH6M",

// Armed gunboat and rhib
"UK3CB_MDF_B_RHIB_Gunboat",
"UK3CB_FIA_B_Fishing_Boat_SPG9",

//STRYKER
"rhsusf_stryker_m1132_m2_wd"
// BRADLEY
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