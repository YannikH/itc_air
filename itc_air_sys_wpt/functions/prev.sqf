itc_air_wpt_changed = true;
switch(itc_air_wpt_steer_pt_mode) do {
  case "MISSION": {
    itc_air_wpt_waypoints_sel = (itc_air_wpt_waypoints_sel - 1) max 0 min (count itc_air_wpt_waypoints);
  };
  case "FLT PLAN": {
    itc_air_wpt_flt_plan_sel = (itc_air_wpt_flt_plan_sel - 1) max 0 min (count itc_air_wpt_flt_plan);
  };
  case "MARK": {
    itc_air_wpt_markpoints_sel = (itc_air_wpt_markpoints_sel - 1) max 0 min ((count ([true] call itc_air_wpt_fnc_getList)) - 1);
  };
};
