itc_air_wpt_waypoints = [];
itc_air_wpt_waypoints_sel = 0;

itc_air_wpt_markpoints = [["A"],["B"],["C"],["D"],["E"],["F"],["G"],["H"],["I"],["J"],["K"],["L"],["M"],["N"],["O"],["P"],["Q"],["R"],["S"],["T"],["U"],["V"],["W"],["X"],["Y"]];
itc_air_wpt_markpoints_last = 0;
itc_air_wpt_markpoints_sel = 0;

itc_air_wpt_flt_plans = [];
itc_air_wpt_flt_plans_sel = 0;

itc_air_wpt_steer_pt_modes = ["FLT PLAN", "MISSION", "MARK"];
itc_air_wpt_steer_pt_mode = "MISSION";

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [0,"WAYPT"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [0,"MISSION"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [0,itc_air_taxi_fnc_speedLimit];

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [4,"MARK"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [4,""];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [4,itc_air_taxi_fnc_speedLimit];

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [1,"STEER"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [1,"PREV"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [1,itc_air_taxi_fnc_speedLimit];
ITC_AIR_UFC_FXD1_COLUMNS_BTN set [5,"STEER"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [5,"NEXT"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [5,itc_air_taxi_fnc_speedLimit];
