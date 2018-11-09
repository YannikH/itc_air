itc_air_wpt_waypoints = [];
itc_air_wpt_waypoints_last = -1;
itc_air_wpt_waypoints_sel = 0;

//itc_air_wpt_markpoints = [["A","",[0,0,0]],["B","",[0,0,0]],["C","",[0,0,0]],["D","",[0,0,0]],["E","",[0,0,0]],["F","",[0,0,0]],["G","",[0,0,0]],["H","",[0,0,0]],["I","",[0,0,0]],["J","",[0,0,0]],["K","",[0,0,0]],["L","",[0,0,0]],["M","",[0,0,0]],["N","",[0,0,0]],["O","",[0,0,0]],["P","",[0,0,0]],["Q","",[0,0,0]],["R","",[0,0,0]],["S","",[0,0,0]],["T","",[0,0,0]],["U","",[0,0,0]],["V","",[0,0,0]],["W","",[0,0,0]],["X","",[0,0,0]],["Y","",[0,0,0]],["Z","",[0,0,0]]];
itc_air_wpt_markpoints = [];
itc_air_wpt_markpoints_chars = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y"];
itc_air_wpt_markpoints_z = ["Z","",[0,0,0]];
itc_air_wpt_markpoints_last = -1;
itc_air_wpt_markpoints_sel = 0;

itc_air_wpt_tof = "0";
itc_air_wpt_name = "N/A";
itc_air_wpt_pos = [0,0,0];

itc_air_wpt_flt_plan = [];
[nil,"MISSION","HOME"] call itc_air_wpt_fnc_generate;
itc_air_wpt_flt_plan_sel = 0;

itc_air_wpt_steer_pt_modes = ["FLT PLAN", "MISSION", "MARK"];
itc_air_wpt_steer_pt_var = "waypoints";
itc_air_wpt_steer_pt_vars = ["flt_plans","waypoints","markpoints"];
itc_air_wpt_steer_pt_mode = "MISSION";

itc_air_steer_pt = (itc_air_wpt_flt_plan # 0);

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [0,"WPT MDE"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [0,"MISSION"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [0,itc_air_wpt_fnc_mode];

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [4,"MARK"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [4,""];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [4,itc_air_wpt_fnc_generate];

ITC_AIR_UFC_FXD1_COLUMNS_BTN set [1,"STEER"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [1,"PREV"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [1,itc_air_wpt_fnc_prev];
ITC_AIR_UFC_FXD1_COLUMNS_BTN set [5,"STEER"];
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [5,"NEXT"];
ITC_AIR_UFC_FXD1_COLUMNS_FNC set [5,itc_air_wpt_fnc_next];

itc_air_wpt_tacanCSEL = 000;
itc_air_wpt_tacanCDE = 000;

itc_air_wpt_tcn_on = false;
itc_air_wpt_tcn_pos = [0,0,0];
itc_air_wpt_tcn_id = "FRE";
