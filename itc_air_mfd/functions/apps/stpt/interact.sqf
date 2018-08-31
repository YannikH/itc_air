params ["_display", "_btn"];
itc_air_mfd_wpt_last_render = -1; //this forces the view to re-render immediately
switch (_btn) do {
  case "T2": {
    itc_air_wpt_steer_pt_mode = "FLT PLAN";
    _display setVariable ["page","flt_pln"];
  };
  case "T3": {
    itc_air_wpt_steer_pt_mode = "MISSION";
    _display setVariable ["page","waypt"];
  };
  case "T4": {
    itc_air_wpt_steer_pt_mode = "MARK";
    _display setVariable ["page","mrk"];
  };
  case "L1": {
    call itc_air_wpt_fnc_prev;
  };
  case "L2": {
    call itc_air_wpt_fnc_next;
  };
};
ITC_AIR_UFC_FXD1_COLUMNS_TXT set [0,itc_air_wpt_steer_pt_mode];
false
