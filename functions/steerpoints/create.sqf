params ["_vehicle","_name", "_pos", "_newIndex"];

_waypoints = _vehicle getVariable "stpt_list";
_vehicle setVariable ["stpt_list", _waypoints + [[_name, _pos]]];
ITC_AIR_POI_NUM = _newIndex;
