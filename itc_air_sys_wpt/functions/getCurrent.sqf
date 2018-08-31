params[["_index",false]];
private _waypt = [];
private _returnIndex = -1;
switch(itc_air_wpt_steer_pt_mode) do {
  case "MISSION": {
    _waypt = itc_air_wpt_waypoints # itc_air_wpt_waypoints_sel;
    _returnIndex = itc_air_wpt_waypoints_sel;
  };
  case "FLT PLAN": {
    _waypt = itc_air_wpt_flt_plan # itc_air_wpt_flt_plan_sel;
    if(count _waypt < 3) then {_waypt = nil}; //marks alway exist, but can be empty
    _returnIndex = itc_air_wpt_flt_plan_sel;
  };
  case "MARK": {
    if(itc_air_wpt_markpoints_sel == (count itc_air_wpt_markpoints)) then {
      _waypt = itc_air_wpt_markpoints_z;
    } else {
      _waypt = itc_air_wpt_markpoints # itc_air_wpt_markpoints_sel;
    };
    _returnIndex = itc_air_wpt_markpoints_sel;
  };
};
if(isNil{_waypt}) then {_waypt = ["N/A","N/A", [0,0,0]]};
if(_index)exitWith{_returnIndex};
_waypt
