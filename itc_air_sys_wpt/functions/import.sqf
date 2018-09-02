//_vehicle setVariable ["stpt_index", 0];
//_vehicle setVariable ["stpt_name", "NO WP"];
//_vehicle setVariable ["stpt_pos", [0,0,0]];
//_vehicle setVariable ["stpt_pos_str", ""];
//_vehicle setVariable ["stpt_tof", "N/A"];
//if(isNil{_vehicle getVariable "stpt_list"}) then {
//  _waypoints = ([] call ace_microdagr_fnc_deviceGetWaypoints) + [];
//  _vehicle setVariable ["stpt_list", _waypoints];
//};
//_vehicle setVariable ["wpt_list", []];
//_vehicle setVariable ["mkpt_list", []];

private _waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
{
  private _newWaypoint = _x;
  //compare with existing by name
  private _existsIndex = itc_air_wpt_waypoints findIf {_x # 1 == _newWaypoint # 0};
  //if it doesn't exist, make it
  if(_existsIndex == -1) then {
    [_newWaypoint # 1, "MISSION", _newWaypoint # 0] call itc_air_wpt_fnc_generate;
  };
}forEach _waypoints;
