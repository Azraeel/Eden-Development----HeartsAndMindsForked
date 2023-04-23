private [ "_vehmarkers", "_markedveh", "_cfg", "_vehtomark", "_marker" ];

_vehmarkers = [];
_markedveh = []; 
_markedveh1 = [];
_cfg = configFile >> "cfgVehicles";
_vehtomark = [];

_vehtomark = [
// EDEN - CONFIG - VEHICLES TO BE MARKED
// Medical Vehicle
"UK3CB_GAF_O_Gaz66_Med", 

// Humvee MRAP and SUV unarmed and armed
"UK3CB_FIA_B_Hilux_Igla_Chair",
"UK3CB_FIA_B_Hilux_Rocket_Arty",
"UK3CB_FIA_B_Hilux_Mortar",
"UK3CB_FIA_B_Hilux_Zu23_Front",
"UK3CB_FIA_B_Hilux_Metis",
"UK3CB_GAF_B_BRDM2_HQ",
"UK3CB_GAF_B_BRDM2_UM",
"UK3CB_GAF_B_BRDM2_ATGM",
"UK3CB_GAF_B_BRDM2",
"UK3CB_GAF_B_BTR80a",
"UK3CB_GAF_B_BTR80",
"UK3CB_GAF_B_BTR70",
"UK3CB_GAF_B_MTLB_Cannon",
"UK3CB_GAF_B_MTLB_KPVT",
"UK3CB_GAF_B_MTLB_BMP",
"UK3CB_GAF_B_BMP2K",
"UK3CB_GAF_B_BRM1K",
"UK3CB_GAF_B_BMP1",
"rhs_bmd2m",
"UK3CB_GAF_O_BMD1P",
"UK3CB_GAF_O_BMD1R",
"UK3CB_GAF_O_Gaz66_ZU23",
"UK3CB_GAF_B_UAZ_AGS30",
"UK3CB_GAF_B_UAZ_MG",
"UK3CB_GAF_B_UAZ_Open",
"UK3CB_GAF_B_UAZ_SPG9",
"UK3CB_FIA_B_Hilux_Igla_Chair",
"UK3CB_FIA_B_Hilux_Rocket_Arty",
"UK3CB_FIA_B_Hilux_Mortar",
"UK3CB_FIA_B_Hilux_Zu23_Front",
"UK3CB_FIA_B_Hilux_Metis",
"UK3CB_GAF_B_BM21",
"UK3CB_GAF_B_2S1",
"UK3CB_GAF_O_ZsuTank",
"UK3CB_GAF_O_2S6M_Tunguska",
"FA_UAF_Fiona_Ambulance",
"FA_UAF_BTR4",
"FA_UAF_BTR3",
"FA_UAF_Fiona",
"FA_UAF_Novator",

// REPAIR, REARM, REFUEL, & FLATBED
"UK3CB_GAF_B_Gaz66_Ammo",
"UK3CB_GAF_B_Gaz66_Covered",
"UK3CB_GAF_B_Gaz66_Radio",
"UK3CB_GAF_B_Gaz66_Repair",
"UK3CB_GAF_B_Ural_Recovery",

// HELI UNARMED/ DOOR GUNS
"UK3CB_GAF_B_Mi8",

// HELI CARGO
"UK3CB_GAF_B_Mi8",
"RHS_Mi24Vt_vvsc",

// HELI ATTACK
"UK3CB_GAF_B_Mi_24P",
"UK3CB_GAF_B_Mi_24V",
"UK3CB_GAF_B_Mi8AMTSh",
"UK3CB_ION_O_Woodland_UH1H_GUNSHIP",

//JETs
"UK3CB_GAF_B_MIG21_CAS",
"UK3CB_GAF_B_MIG29S",
"UK3CB_GAF_B_Su25SM",

//TANKs
"UK3CB_GAF_B_T80UK",
"UK3CB_GAF_B_T72A",
"UK3CB_GAF_B_T80A",
"UK3CB_GAF_B_T80BVK",
"UK3CB_GAF_B_T72BC",
"UK3CB_GAF_B_T72BA",
"UK3CB_GAF_B_ZU23",

// Offroad
"UK3CB_GAF_B_Offroad",

//Motorbike
"UK3CB_GAF_B_M1030"
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