params [["_markZ",false]];
private _return = [];
switch(itc_air_wpt_steer_pt_mode) do {
  case "MISSION": {
    _return = itc_air_wpt_waypoints;
  };
  case "FLT PLAN": {
    _return = itc_air_wpt_flt_plan;
  };
  case "MARK": {
    //player sideChat format ["markZ %1", _markZ];
    if(_markZ) then {
      if(itc_air_wpt_markpoints_z # 1 != "") then {
        _return = itc_air_wpt_markpoints + [itc_air_wpt_markpoints_z];
      } else {
        _return = itc_air_wpt_markpoints;
      };
    } else {
      _return = itc_air_wpt_markpoints;
    };
  };
};

_return
