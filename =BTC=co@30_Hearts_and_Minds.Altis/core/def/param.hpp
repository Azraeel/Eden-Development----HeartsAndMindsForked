class Params {
    class btc_p_time_title { // << Time options >>
        title = $STR_BTC_HAM_PARAM_TIME_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_time { // Set the start time:
        title = __EVAL(format ["      %1", localize "STR_A3_CFGVEHICLES_MODULEDATE_F_ARGUMENTS_HOUR_0"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"};
        default = 12;
    };
    class btc_p_acctime { // Acceleration time multiplier:
        title = __EVAL(format ["      %1", localize "STR_USRACT_TIME_INC"]);
        values[]={1,2,3,4,5,6,7,8,9,10,11,12};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12"};
        default = 7;
    };
    class btc_p_change_time { // Enable change day time for officer on the arsenal box:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_CHANGE_TIME_ENABLEARSENAL"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };    
    class btc_p_change_weather { // Enable change weather for officer on the arsenal box
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_CHANGE_WEATHER_ENABLEARSENAL"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_db_title { // << Server management >>
        title = $STR_BTC_HAM_PARAM_DB_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_load { // Load the savegame (if available)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_LOAD"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_auto_db { // Auto savegame when all players disconnected
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_ASAVE"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED}; // texts[]={"Off","On"};
        default = 1;
    };
    class btc_p_db_autoRestartTime { // Time before auto restart/shutdown server
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_ARESTARTTIME"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,24,48,72};
        texts[]={$STR_DISABLED, "1h","2h","3h","4h","5h","6h","7h","8h","9h","10h","11h","12h","24h","48h","72h"};
        default = 6;
    };
    class btc_p_db_autoRestartHour1 { // Hour of auto restart/shutdown server
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_HRESTARTTIME"]);
        values[]={-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
        texts[]={$STR_DISABLED,"00h00","01h00","02h00","03h00","04h00","05h00","06h00","07h00","08h00","09h00","10h00","11h00","12h00","13h00","14h00","15h00","16h00","17h00","18h00","19h00","20h00","21h00","22h00","23h00"};
        default = -1;
    };
    class btc_p_db_autoRestartHour2 { // Hour of auto restart/shutdown server
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_HRESTARTTIME"]);
        values[]={-1,0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
        texts[]={$STR_DISABLED,"00h00","01h00","02h00","03h00","04h00","05h00","06h00","07h00","08h00","09h00","10h00","11h00","12h00","13h00","14h00","15h00","16h00","17h00","18h00","19h00","20h00","21h00","22h00","23h00"};
        default = -1;
    };
    class btc_p_db_autoRestartType { // Auto restart/shutdown server (Must define in server.cfg: serverCommandPassword = "btc_password")
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_DB_ARESTART"]);
        values[]={1,2,3,4};
        texts[]={$STR_DISP_MP_DS_RESTART,$STR_BTC_HAM_PARAM_DB_SHUTDOWN,$STR_BTC_HAM_PARAM_DB_SAVERESTART, $STR_BTC_HAM_PARAM_DB_SAVESHUTDOWN}; // texts[]={"Off","Restart", "Shutdown","Save and restart", "Save and shutdown"};
        default = 3;
    };
    class btc_p_respawn_title { // << Respawn options >>
        title = $STR_BTC_HAM_RESP_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_respawn_location { // Respawn locations available:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_LOCATION"]);
        values[]={0,1,2,3,4};
        texts[]={$STR_BTC_HAM_RESP_FOBRALLY, $STR_BTC_HAM_RESP_FOBRALLYHELO, $STR_BTC_HAM_RESP_FOBRALLYHELI, $STR_BTC_HAM_RESP_FOBRALLYHELIVEHI, $STR_BTC_HAM_RESP_FOBRALLYHELIVEHILEADER};
        default = 1;
    };
    class btc_p_respawn_fromFOBToBase { // Allow respawn from FOB to base:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_FOBTOBASE"]);
        values[]={0,1};
        texts[]={$STR_DISABLED, $STR_ENABLED};
        default = 1;
    };
    class btc_p_rallypointTimer { // Time before rallypoint self-destruction:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_RALLYTIMER"]);
        values[]={0,5,10,30,60};
        texts[]={$STR_DISABLED,"5 min","10 min","30 min","60 min"};
        default = 30;
    };
    class btc_p_respawn_ticketsAtStart { // Number of tickets at mission start:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_TICKETSATSTART"]);
        values[]={-1,0,1,2,3,4,5,10,15,20,25,30,50,70,100,150,200};
        texts[]={$STR_DISABLED,"0","1","2","3","4","5","10","15","20","25","30","50","70","100","150","200"};
        default = 100;
    };
    class btc_p_respawn_ticketsLost { // Number of tickets lost per death:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_TICKETSLOST"]);
        values[]={1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 1;
    };
    class btc_p_respawn_ticketsShare { // Tickets are share between:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_TICKETSHARE"]);
        values[]={0,1};
        texts[]={$STR_BTC_HAM_RESP_SAMEFACTION, $STR_BTC_HAM_RESP_NOTSHARE};
        default = 0;
    };
    class btc_p_respawn_ticketsFromPrisoners { // Attribute tickets from prisoners to (Enable only if tickets are not share):
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_TICKETPRISONER"]);
        values[]={1,2,3,4};
        texts[]={$STR_BTC_HAM_RESP_ALLCONNECTED, $STR_BTC_HAM_RESP_PLAYER, $STR_BTC_HAM_RESP_DEADPLAYER, $STR_BTC_HAM_RESP_LOWESTPLAYER};
        default = 1;
    };
    class btc_p_body_timeBeforeShowMarker { // Time before showing marker of dead player's body:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_TIMEBEFORESHOWMARKER"]);
        values[]={-1,0,5,10,30,60};
        texts[]={$STR_DISABLED,"0 min","5 min","10 min","30 min","60 min"};
        default = 0;
    };
    class btc_p_respawn_arsenal { // ACE Arsenal available on respawn after been killed:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_RESP_ENABLEARSENAL"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_slot_isShare { // Each slot is share between players
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SLOT_ISSHARE"]);
        values[]={0,1};
        texts[]={$STR_DISABLED, $STR_ENABLED};
        default = 0;
    };
    class btc_p_type_title { // << Faction options >>
        title = $STR_BTC_HAM_PARAM_FAC_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_en { // Enemy type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETYPE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202};
        texts[]={"0 - Bohemia Interactive: AAF (Side: GUER)","1 - Bohemia Interactive: CSAT (Side: EAST)","2 - Bohemia Interactive: FIA (Side: EAST)","3 - Bohemia Interactive: FIA (Side: GUER)","4 - Bohemia Interactive: FIA (Side: WEST)","5 - Bohemia Interactive: LDF (Side: GUER)","6 - Bohemia Interactive: Looters (Side: GUER)","7 - Bohemia Interactive: NATO (Side: WEST)","8 - Bohemia Interactive: Syndikat (Side: GUER)","9 - Enoch Bohemia Interactive: Spetsnaz (Side: EAST)","10 - Expansion Bohemia Interactive: CSAT (Pacific) (Side: EAST)","11 - Expansion Bohemia Interactive: CTRG (Side: WEST)","12 - Expansion Bohemia Interactive: Gendarmerie (Side: EAST)","13 - Expansion Bohemia Interactive: Gendarmerie (Side: WEST)","14 - Expansion Bohemia Interactive: NATO (Pacific) (Side: WEST)","15 - FZA Rosd6(Dryden): AH-64D Project (Side: WEST)","16 - LOP_LeightsOPFOR Project OPFOR: Afghan National Army and Police (Side: WEST)","17 - LOP_LeightsOPFOR Project OPFOR: African Militia (Side: EAST)","18 - LOP_LeightsOPFOR Project OPFOR: African Militia (Side: GUER)","19 - LOP_LeightsOPFOR Project OPFOR: Boko Haram (Side: EAST)","20 - LOP_LeightsOPFOR Project OPFOR: CDF (Project OPFOR) (Side: WEST)","21 - LOP_LeightsOPFOR Project OPFOR: ChDKZ (Project OPFOR) (Side: EAST)","22 - LOP_LeightsOPFOR Project OPFOR: Chernarussian National Insurgents (Side: GUER)","23 - LOP_LeightsOPFOR Project OPFOR: Hellenic Armed Forces (Side: WEST)","24 - LOP_LeightsOPFOR Project OPFOR: Iranian Armed Forces (Side: GUER)","25 - LOP_LeightsOPFOR Project OPFOR: Iraqi Armed Forces (Side: WEST)","26 - LOP_LeightsOPFOR Project OPFOR: Irish Republican Army (Side: EAST)","27 - LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: EAST)","28 - LOP_LeightsOPFOR Project OPFOR: Islamic State (Side: GUER)","29 - LOP_LeightsOPFOR Project OPFOR: Korean People's Army (Side: EAST)","30 - LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: GUER)","31 - LOP_LeightsOPFOR Project OPFOR: Kurdish Peshmerga Forces (Side: WEST)","32 - LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: EAST)","33 - LOP_LeightsOPFOR Project OPFOR: Middle Eastern Militia (Side: GUER)","34 - LOP_LeightsOPFOR Project OPFOR: Private Military Company (Side: GUER)","35 - LOP_LeightsOPFOR Project OPFOR: Royal Army Corps of Sahrani (Side: GUER)","36 - LOP_LeightsOPFOR Project OPFOR: Sahrani Liberation Army (Side: EAST)","37 - LOP_LeightsOPFOR Project OPFOR: Syrian Armed Forces (Side: EAST)","38 - LOP_LeightsOPFOR Project OPFOR: Takistani Armed Forces (Side: EAST)","39 - LOP_LeightsOPFOR Project OPFOR: Turkish Armed Forces (Side: GUER)","40 - LOP_LeightsOPFOR Project OPFOR: Ukrainian Armed Forces (Side: GUER)","41 - LOP_LeightsOPFOR Project OPFOR: Ulster Volunteer Force (Side: GUER)","42 - LOP_LeightsOPFOR Project OPFOR: Ultranationalists (Side: GUER)","43 - LOP_LeightsOPFOR Project OPFOR: United Armed Forces of Novorossiya (Side: EAST)","44 - LOP_LeightsOPFOR Project OPFOR: United Nations (Side: GUER)","45 - Mark Bohemia Interactive: NATO (Woodland) (Side: WEST)","46 - RHS Red Hammer Studios: Russia (VMF) (Side: EAST)","47 - RHS_AFRF Red Hammer Studios: Russia (MSV) (Side: EAST)","48 - RHS_AFRF Red Hammer Studios: Russia (RVA) (Side: EAST)","49 - RHS_AFRF Red Hammer Studios: Russia (TV) (Side: EAST)","50 - RHS_AFRF Red Hammer Studios: Russia (VDV) (Side: EAST)","51 - RHS_AFRF Red Hammer Studios: Russia (VPVO) (Side: EAST)","52 - RHS_AFRF Red Hammer Studios: Russia (VV) (Side: EAST)","53 - RHS_AFRF Red Hammer Studios: Russia (VVS - Camo) (Side: EAST)","54 - RHS_AFRF Red Hammer Studios: Russia (VVS - Grey) (Side: EAST)","55 - RHS_GREF Red Hammer Studios: CDF (Air Forces) (Side: WEST)","56 - RHS_SAF Red Hammer Studios: SAF (KOV) (Side: GUER)","57 - RHS_SAF RHS (A2 port): SAF (KOV) (Side: EAST)","58 - RHS_SAF RHS (A2 port): SAF (RVIPVO) (Side: EAST)","59 - RHS_SAF RHS (A2 port): SAF (RVIPVO) (Side: GUER)","60 - RHS_SAF RHS (A2 port): SAF (UN Peacekeepers) (Side: GUER)","61 - RHS_USAF Red Hammer Studios: USA (Army - D) (Side: WEST)","62 - RHS_USAF Red Hammer Studios: USA (Army - W) (Side: WEST)","63 - RHS_USAF Red Hammer Studios: USA (Navy) (Side: WEST)","64 - RHS_USAF Red Hammer Studios: USA (SOCOM) (Side: WEST)","65 - RHS_USAF Red Hammer Studios: USA (USAF) (Side: WEST)","66 - RHS_USAF Red Hammer Studios: USA (USMC - D) (Side: WEST)","67 - RHS_USAF Red Hammer Studios: USA (USMC - W) (Side: WEST)","68 - RHSGREF Red Hammer Studios: CDF (UN) (Side: GUER)","69 - RHSGREF Red Hammer Studios: NAPA (Side: GUER)","70 - RHSGREF Red Hammer Studios: Tanoan Liberation Army (Side: EAST)","71 - RHSGREF Red Hammer Studios: Tanoan Liberation Army (Side: GUER)","72 - RHSGREF www.3commandobrigade.com: CDF (Ground Forces) (Side: GUER)","73 - RHSGREF www.3commandobrigade.com: CDF (Ground Forces) (Side: WEST)","74 - SIMC Bohemia Interactive: US Army (65) (Side: WEST)","75 - SIMC Casper_TFG: USMC (81) (Side: WEST)","76 - SIMC GrumpyRhino: US Army (67) (Side: WEST)","77 - SIMC smicdaro: US Army (81) (Side: WEST)","78 - SIMC Smithcardrone: US Army (78) (Side: WEST)","79 - SIMC Smithcardrone: USMC (78) (Side: WEST)","80 - UK3CB_Factions www.3commandobrigade.com: 3CB AAF (Side: EAST)","81 - UK3CB_Factions www.3commandobrigade.com: 3CB AAF (Side: GUER)","82 - UK3CB_Factions www.3commandobrigade.com: 3CB AAF (Side: WEST)","83 - UK3CB_Factions www.3commandobrigade.com: 3CB Afghan National Army (Side: WEST)","84 - UK3CB_Factions www.3commandobrigade.com: 3CB Afghan National Police (Side: WEST)","85 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army (Side: EAST)","86 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army (Side: GUER)","87 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army (Side: WEST)","88 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army Paramilitary (Side: EAST)","89 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army Paramilitary (Side: GUER)","90 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Army Paramilitary (Side: WEST)","91 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilian Militia (Side: EAST)","92 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilian Militia (Side: GUER)","93 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilian Militia (Side: WEST)","94 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilians (Side: EAST)","95 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilians (Side: GUER)","96 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilians (Side: WEST)","97 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Extremists (Side: EAST)","98 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Extremists (Side: GUER)","99 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Militia (Side: EAST)","100 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Militia (Side: GUER)","101 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Militia (Side: WEST)","102 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert National Police (Side: EAST)","103 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert National Police (Side: GUER)","104 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert National Police (Side: WEST)","105 - UK3CB_Factions www.3commandobrigade.com: 3CB Altis Police Department (Side: EAST)","106 - UK3CB_Factions www.3commandobrigade.com: 3CB Altis Police Department (Side: GUER)","107 - UK3CB_Factions www.3commandobrigade.com: 3CB Altis Police Department (Side: WEST)","108 - UK3CB_Factions www.3commandobrigade.com: 3CB Ardistan Army (Side: EAST)","109 - UK3CB_Factions www.3commandobrigade.com: 3CB Ardistan Army (Side: GUER)","110 - UK3CB_Factions www.3commandobrigade.com: 3CB Ardistan Army (Side: WEST)","111 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDKZ (Chernarussian Movement of the Red Star) (Side: EAST)","112 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDKZ Winter (Chernarussian Movement of the Red Star) (Side: EAST)","113 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDSZ (Chernarussian Movement of the Blue Star) (Side: WEST)","114 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDSZ Winter (Chernarussian Movement of the Blue Star) (Side: WEST)","115 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDZZ (Chernarussian Movement of the Green Star) (Side: GUER)","116 - UK3CB_Factions www.3commandobrigade.com: 3CB ChDZZ Winter (Chernarussian Movement of the Green Star) (Side: GUER)","117 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: EAST)","118 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: GUER)","119 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: WEST)","120 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Communist Militia (Side: EAST)","121 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Local Defence Volunteers (Side: WEST)","122 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Nationalist Militia (Side: GUER)","123 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Police Department (Side: EAST)","124 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Police Department (Side: GUER)","125 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Police Department (Side: WEST)","126 - UK3CB_Factions www.3commandobrigade.com: 3CB Cold War US - Early (Side: WEST)","127 - UK3CB_Factions www.3commandobrigade.com: 3CB Cold War US - Late (Side: WEST)","128 - UK3CB_Factions www.3commandobrigade.com: 3CB Cold War USSR - Early (Side: EAST)","129 - UK3CB_Factions www.3commandobrigade.com: 3CB Cold War USSR - Late (Side: EAST)","130 - UK3CB_Factions www.3commandobrigade.com: 3CB FIA (Side: EAST)","131 - UK3CB_Factions www.3commandobrigade.com: 3CB FIA (Side: GUER)","132 - UK3CB_Factions www.3commandobrigade.com: 3CB FIA (Side: WEST)","133 - UK3CB_Factions www.3commandobrigade.com: 3CB Grozovia Armed Forces (Side: EAST)","134 - UK3CB_Factions www.3commandobrigade.com: 3CB Grozovia Armed Forces (Side: GUER)","135 - UK3CB_Factions www.3commandobrigade.com: 3CB Grozovia Armed Forces (Side: WEST)","136 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Desert (Side: EAST)","137 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Desert (Side: GUER)","138 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Desert (Side: WEST)","139 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Urban (Side: EAST)","140 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Urban (Side: GUER)","141 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Urban (Side: WEST)","142 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Winter (Side: EAST)","143 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Winter (Side: GUER)","144 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Winter (Side: WEST)","145 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Woodland (Side: EAST)","146 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Woodland (Side: GUER)","147 - UK3CB_Factions www.3commandobrigade.com: 3CB ION Services - Woodland (Side: WEST)","148 - UK3CB_Factions www.3commandobrigade.com: 3CB Karzeghistan Royal Guard (Side: EAST)","149 - UK3CB_Factions www.3commandobrigade.com: 3CB Karzeghistan Royal Guard (Side: GUER)","150 - UK3CB_Factions www.3commandobrigade.com: 3CB Karzeghistan Royal Guard (Side: WEST)","151 - UK3CB_Factions www.3commandobrigade.com: 3CB Kolgujev Defence Force (Side: EAST)","152 - UK3CB_Factions www.3commandobrigade.com: 3CB Kolgujev Defence Force (Side: GUER)","153 - UK3CB_Factions www.3commandobrigade.com: 3CB Kolgujev Defence Force (Side: WEST)","154 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Defence Force (Side: EAST)","155 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Defence Force (Side: GUER)","156 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Defence Force (Side: WEST)","157 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Forest Rangers (Side: EAST)","158 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Forest Rangers (Side: GUER)","159 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Forest Rangers (Side: WEST)","160 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Separatist Militia (Side: EAST)","161 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Separatist Militia (Side: GUER)","162 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonia Separatist Militia (Side: WEST)","163 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonian Nationalist Militia (Side: EAST)","164 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonian Nationalist Militia (Side: GUER)","165 - UK3CB_Factions www.3commandobrigade.com: 3CB Livonian Nationalist Militia (Side: WEST)","166 - UK3CB_Factions www.3commandobrigade.com: 3CB Malden Defence Force (Side: EAST)","167 - UK3CB_Factions www.3commandobrigade.com: 3CB Malden Defence Force (Side: GUER)","168 - UK3CB_Factions www.3commandobrigade.com: 3CB Malden Defence Force (Side: WEST)","169 - UK3CB_Factions www.3commandobrigade.com: 3CB Middle East Extremists (Side: EAST)","170 - UK3CB_Factions www.3commandobrigade.com: 3CB Middle East Extremists (Side: GUER)","171 - UK3CB_Factions www.3commandobrigade.com: 3CB Middle East Insurgents (Side: EAST)","172 - UK3CB_Factions www.3commandobrigade.com: 3CB Middle East Insurgents (Side: GUER)","173 - UK3CB_Factions www.3commandobrigade.com: 3CB Middle East Insurgents (Side: WEST)","174 - UK3CB_Factions www.3commandobrigade.com: 3CB NAPA (The National Party) (Side: EAST)","175 - UK3CB_Factions www.3commandobrigade.com: 3CB NAPA (The National Party) (Side: GUER)","176 - UK3CB_Factions www.3commandobrigade.com: 3CB NAPA (The National Party) (Side: WEST)","177 - UK3CB_Factions www.3commandobrigade.com: 3CB NFA (Nogovan Freedom Alliance) (Side: EAST)","178 - UK3CB_Factions www.3commandobrigade.com: 3CB NFA (Nogovan Freedom Alliance) (Side: GUER)","179 - UK3CB_Factions www.3commandobrigade.com: 3CB NFA (Nogovan Freedom Alliance) (Side: WEST)","180 - UK3CB_Factions www.3commandobrigade.com: 3CB Nogova Police Department (Side: EAST)","181 - UK3CB_Factions www.3commandobrigade.com: 3CB Nogova Police Department (Side: GUER)","182 - UK3CB_Factions www.3commandobrigade.com: 3CB Nogova Police Department (Side: WEST)","183 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: EAST)","184 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: GUER)","185 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: WEST)","186 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Insurgents (Side: EAST)","187 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: EAST)","188 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: GUER)","189 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Army (Side: WEST)","190 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: EAST)","191 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: GUER)","192 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan National Police (Side: WEST)","193 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Pro-Government Militia (Side: WEST)","194 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Tribal Fighters (Side: GUER)","195 - UK3CB_Factions www.3commandobrigade.com: 3CB UN Peacekeepers (Side: GUER)","196 - UK3CB_Factions www.3commandobrigade.com: 3CB UN Peacekeepers (Side: WEST)","197 - UK3CB_Factions www.3commandobrigade.com: CDF (Air Forces) (Side: GUER)","198 - UK3CB_Factions www.3commandobrigade.com: CDF (National Guard) (Side: GUER)","199 - UK3CB_Factions www.3commandobrigade.com: CDF (National Guard) (Side: WEST)","200 - UK3CB_Factions www.3commandobrigade.com: ChDKZ (Side: EAST)","201 - UK3CB_Factions www.3commandobrigade.com: ChDKZ (Side: GUER)","202 - UK3CB_Factions www.3commandobrigade.com: Horizon Islands Defence Force (Side: WEST)"};
        default = 1;
    };
    class btc_p_AA { // Anti-Air infantry:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_EAA"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_tank { // Enemy uses Tank:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_ETANK"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_civ { // Civil type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPE"]);
        values[]={0,1,2,3,4,5,6,7,8};
        texts[]={"0 - Bohemia Interactive: Civilians (Side: CIV)","1 - Justin N.: Other (Side: CIV)","2 - LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","3 - LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","4 - LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","5 - ORANGE Bohemia Interactive: IDAP (Side: CIV)","6 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilians (Side: CIV)","7 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","8 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)"};
        default = 0;
    };
    class btc_p_civ_veh { // Civil vehicle type:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_FAC_CTYPEVEH"]);
        values[]={0,1,2,3,4,5,6,7,8};
        texts[]={"0 - Bohemia Interactive: Civilians (Side: CIV)","1 - Justin N.: Other (Side: CIV)","2 - LOP_LeightsOPFOR Project OPFOR: Civilians (African) (Side: CIV)","3 - LOP_LeightsOPFOR Project OPFOR: Civilians (Eastern European) (Side: CIV)","4 - LOP_LeightsOPFOR Project OPFOR: Civilians (Middle Eastern) (Side: CIV)","5 - ORANGE Bohemia Interactive: IDAP (Side: CIV)","6 - UK3CB_Factions www.3commandobrigade.com: 3CB African Desert Civilians (Side: CIV)","7 - UK3CB_Factions www.3commandobrigade.com: 3CB Chernarus Civilians (Side: CIV)","8 - UK3CB_Factions www.3commandobrigade.com: 3CB Takistan Civilians (Side: CIV)"};
        default = 0;
    };
    class btc_p_spawn_title { // << Spawn options >>
        title = $STR_BTC_HAM_PARAM_SPAWN_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_density_of_occupiedCity { // Density of city occupied:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ISOCCUPIED_DENSITY"]);
        values[]={0,10,20,30,40,45,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","45%","50%","60%","70%","80%","90%","100%"};
        default = 100;
    };
    class btc_p_mil_group_ratio { // Enemy density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ENEMY_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 40;
    };
    class btc_p_wp_houseDensity { // Density of military in house: (Can't be above 100%)
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_MIL_INHOUSE_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default =   ;
    };
    class btc_p_mil_static_group_ratio { // Enemy static density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ENEMY_STATIC_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 60;
    };
    class btc_p_civ_group_ratio { // Civilian density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIVILIAN_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 40;
    };
    class btc_p_animals_group_ratio { // Animal density:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_ANIMALS_DENSITY"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 20;
    };
    class btc_p_veh_armed_ho { // Add armed vehicles in Hideout:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDHIDEOUT"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_veh_armed_spawn_more { // Add armed vehicles in Side mission/Cache:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPAWN_ARMEDOTHER"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_patrol_max { // Maximum number of military patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_PATROL_MAX"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"1","2","3","4","5","6","7","8","9","10"};
        default = 8;
    };
    class btc_p_civ_max_veh { // Maximum number of civilian patrol:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_SPWAN_CIV_MAX_VEH"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15};
        texts[]={"1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"};
        default = 10;
    };
    class btc_p_IED_title { // << IED options >>
        title = $STR_BTC_HAM_PARAM_IED_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_ied { // IEDs ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_RATIO"]);
        values[]={0, 1, 2, 3};
        texts[]={$STR_DISABLED,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Off","Low","Normal","High"};
        default = 2;
    };
    class btc_p_ied_spot { // IEDs spotting difficulty:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_SPOT"]);
        values[]={0, 1, 2};
        texts[]={$STR_BTC_HAM_PARAM_IED_SPOT_VERYEASY,$STR_BTC_HAM_PARAM_IED_SPOT_EASY,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL}; //texts[]={"Very easy","Easy","Normal"};
        default = 2;
    };
    class btc_p_ied_placement { // IEDs type of placement:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_PLACEMENT"]);
        values[]={2, -1, 3};
        texts[]={$STR_BTC_HAM_PARAM_IED_PLACEMENT_ROADSIDE,$STR_BTC_HAM_PARAM_IED_PLACEMENT_MIDDLE,$STR_3DEN_ATTRIBUTES_OBJECTTEXTURE_RANDOM_TEXT}; //texts[]={"Roadside", "Middle", "Random"};
        default = 3;
    };
	class btc_p_ied_power { // Power of IED explosion:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_POWER"]);
        values[]={0, 1};
        texts[]={$STR_MEDIUM,$STR_SMALL};
        default = 0;
	};
    class btc_p_ied_drone { // Drone bomber:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_IED_DRONE"]);
        values[]={0, 1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_hideout_cache_title { // << Hideout/Cache options >>
        title = $STR_BTC_HAM_PARAM_HIDE_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_hideout_n { // Hideout numbers:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_HIDE_NUMBERS"]);
        values[]={99,0,1,2,3,4,5,6,7,8,9,10};
        texts[]={$STR_3DEN_ATTRIBUTES_OBJECTTEXTURE_RANDOM_TEXT,"0","1","2","3","4","5","6","7","8","9","10"}; //texts[]={"Random","0","1","2","3","4","5"};
        default = 10;
    };
    class btc_p_cache_info_def { // Info cache distance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DISTANCE"]);
        values[]={500,1000,1500,2000,2500,3000,3500,4000,5000};
        texts[]={"500 m","1000 m","1500 m","2000 m","2500 m","3000 m","3500 m","4000 m","5000 m"};
        default = 1000;
    };
    class btc_p_cache_info_ratio { //Cache info ratio:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_RATIO"]);
        values[]={50,100};
        texts[]={"50 m","100 m"};
        default = 50;
    };
    class btc_p_info_chance { // Intel from dead bodies chance:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_DEADINFO"]);
        values[]={0,10,20,30,40,50,60,70,80,90,100};
        texts[]={"100 %","90 %","80 %","70 %","60 %","50 %","40 %","30 %","20 %","10 %","0 %"};
        default = 80;
    };
    class btc_p_info_houseDensity { // Density of intel in house:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_CACHE_HOUSEINFO"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10,20,30,40,50,60,70,80,90,100};
        texts[]={"0%","1%","2%","3%","4%","5%","6%","7%","8%","9%","10%","20%","30%","40%","50%","60%","70%","80%","90%","100%"};
        default = 10;
    };
    class btc_p_skill_title { // << A3 Skill options >>
        title = $STR_BTC_HAM_PARAM_SKILL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_set_skill { // Set skill?
        title = __EVAL(format ["      %1?", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_set_skill_general { // Set skill, general
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_3DEN_SCENARIO_TEXTSINGULAR"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 0;
    };
    class btc_p_set_skill_aimingAccuracy { // Set skill, aimingAccuracy
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMACC"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 6;
    };
    class btc_p_set_skill_aimingShake { // Set skill, aimingShake
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSKILL"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 6;
    };
    class btc_p_set_skill_aimingSpeed { // Set skill, aimingSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_AIMSPEED"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 7;
    };
    class btc_p_set_skill_endurance { // Set skill, endurance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_VR_STAMINA"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 5;
    };
    class btc_p_set_skill_spotDistance { // Set skill, spotDistance
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTDIST"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 6;
    };
    class btc_p_set_skill_spotTime { // Set skill, spotTime
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_SPOTTIME"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 6;
    };
    class btc_p_set_skill_courage { // Set skill, courage
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_COURAGE"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 4;
    };
    class btc_p_set_skill_reloadSpeed { // Set skill, reloadSpeed
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_BTC_HAM_PARAM_SKILL_RELOAD"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 8;
    };
    class btc_p_set_skill_commanding { // Set skill, commanding
        title = __EVAL(format ["      %1, %2", localize "STR_A3_CFGVEHICLES_MODULESKILL_F_0", localize "STR_A3_CFGHINTS0"]);
        values[]={0,1,2,3,4,5,6,7,8,9,10};
        texts[]={"0","0.1","0.2","0.3","0.4","0.5","0.6","0.7","0.8","0.9","1"};
        default = 6;
    };
    class btc_p_gameplay_title { // << Gameplay options >>
        title = $STR_BTC_HAM_PARAM_GAMEPLAY_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_sea { // Extend battlefield to sea:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SEA"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 0;
    };
    class btc_p_chem { // Chemical warfare
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_CHEM"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_spect { // Spectrum devices
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SPECT"]);
        values[] = {0,1};
        texts[] = {$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_side_mission_cycle { // Side mission cycle:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_GAMEPLAY_SIDEM"]);
        values[] = {0,1,2,3,4};
        texts[] = {$STR_DISABLED,1,2,3,4};
        default = 4;
    };
    class btc_p_arsenal_title { // << Arsenal options >>
        title = $STR_BTC_HAM_PARAM_ARSENAL_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_arsenal_Type { // Type of the arsenal:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE"]);
        values[]={0,1,2,3,4};
        texts[]={$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BIS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_BA_PLUS,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALTYPE_ACE_PLUS}; //texts[]={"BIS - Vanilla","BIS - Vanilla and ACE 3","BIS - Vanilla and ACE 3 (scroll wheel action)","ACE 3","ACE 3 (scroll wheel action)"};
        default = 4;
    };
    class btc_p_arsenal_Restrict { // Restricted arsenal (See /define_mod.sqf):
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR"]);
        values[]={0,1,2,3};
        texts[] = {$STR_DISABLED,$STR_3DEN_ATTRIBUTES_SPEEDMODE_FULL,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_REMOVEONLY,$STR_BTC_HAM_PARAM_ARSENAL_ARSENALRESTR_FILTER}; //texts[]={"Off","Full","Remove only (works only with ACE3-Arsenal)","Filter on player role (works only with ACE3-Arsenal)"};
        default = 1;
    };
    class btc_p_autoloadout { // loadout:
        title = __EVAL(format ["      %1:", localize "STR_ACE_Interaction_Equipment"]);
        values[]={0,1,2};
        texts[]={$STR_DISABLED,$STR_BTC_HAM_PARAM_ARSENAL_AUTOLOADOUT, $STR_BTC_HAM_PARAM_ARSENAL_RMVWEAPONS};
        default = 0;
    };
    class btc_p_garage { // Activate garage for admin:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_ARSENAL_GARAGEADMIN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_main_title { // << Other options >>
        title = $STR_BTC_HAM_PARAM_OTHER_TITLE;
        values[]={0};
        texts[]={""};
        default = 0;
    };
    class btc_p_rep { // Reputation at start:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_REPSTART"]);
        values[]={0, 200, 500, 750};
        texts[]={$STR_ACE_ViewDistance_object_verylow,$STR_A3_TIME_TRIALS_MISCTT_ROF_25,$STR_3DEN_ATTRIBUTES_SPEEDMODE_NORMAL,$STR_A3_TIME_TRIALS_MISCTT_ROF_21}; //texts[]={"Very Low","Low","Normal","High"};
        default = 200;
    };
    class btc_p_rep_notify { // Show reputation change above of:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_SHOWREP"]);
        values[]={-1, 0, 1, 2, 3, 5, 10, 25, 50, 100, 200};
        texts[]={$STR_DISABLED, 0, 1, 2, 3, 5, 10, 25, 50, 100, 200};
        default = -1;
    };
    class btc_p_city_radiusOffset { // Spawn city radius offset:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_SPAWNRAD"]);
        values[]={0,1,2,3,4,5,6,7,8};
        texts[]={"0 m","100 m","200 m",$STR_BTC_HAM_PARAM_OTHER_SPAWNRAD_DEF,"400 m","500 m (Takistan)","600 m","700 m","800 m"}; // texts[]={"0 m","100 m","200 m","300 m","400 m","500 m (Takistan)","600 m","700 m","800 m"};
        default = 3;
    };
    class btc_p_trigger { // Disable city activation when a plane or helicopter (>190Km/h) is flying above:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DISABLESPAWN"]);
        values[]={0,1};
        texts[]={$STR_DISABLED,$STR_ENABLED};
        default = 1;
    };
    class btc_p_city_free_trigger { // City will be free if number of enemies is equal or lower than:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_CITYFREE"]);
        values[]={0,1,2,3};
        texts[]={$STR_DISABLED,"1","2","3"};
        default = 2;
    };
    class btc_p_flag { // Allow the use of flag:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_ALLOWFLAG"]);
        values[]={0,1,2,3};
        texts[]={$STR_DISABLED,$STR_BTC_HAM_PARAM_OTHER_FLAGVEH,$STR_BTC_HAM_PARAM_OTHER_FLAGVEHLEADER,$STR_BTC_HAM_PARAM_OTHER_FLAGVEHPLAYER};
        default = 3;
    };
    class btc_p_debug { // Debug:
        title = __EVAL(format ["      %1", localize "STR_BTC_HAM_PARAM_OTHER_DEBUG"]);
        values[]={0,1,2};
        texts[]={$STR_DISABLED,$STR_ENABLED, $STR_BTC_HAM_PARAM_OTHER_DEBUG_LOGONLY}; // texts[]={"Off","On","Log only"};
        default = 0;
    };
};
