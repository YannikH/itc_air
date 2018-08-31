params[["_pos", nil],["_forcedMode","MARK"],["_name",""]];
private _key = "";
private _plane = vehicle player;


if(isNil{_pos}) then {
  _pos = getPosASL _plane;
};

if(_forcedMode == "MARK") then {
  private _index = itc_air_wpt_markpoints_last + 1;
  if(_index == count itc_air_wpt_markpoints_chars) then {
    _index = 0;
  };
  _key = itc_air_wpt_markpoints_chars # _index;
  if(_name == "") then {
    _name = ([daytime,"HH:MM"] call BIS_fnc_timeToString);
  };
  itc_air_wpt_markpoints set [_index, [_key, _name, _pos]];
  itc_air_wpt_markpoints_last = _index;
} else {
  _key = str (itc_air_wpt_waypoints_last + 1);
  itc_air_wpt_waypoints pushBack [_key, _name, _pos];
  itc_air_wpt_waypoints_last = itc_air_wpt_waypoints_last + 1;
};
