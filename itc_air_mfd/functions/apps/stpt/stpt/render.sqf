params ["_display"];
_vehicle = vehicle player;

_wayPoints = _vehicle getVariable "stpt_list";
_curWPIndex = _vehicle getVariable "stpt_index";
_list = (_display displayCtrl 421500);
lbClear _list;
if(isNil{_wayPoints}) then {_wayPoints = []};
{
  _list lbAdd (_x select 0);
}forEach _wayPoints;
_list lbSetCurSel _curWPIndex;
(_display displayCtrl 1002) ctrlSetText (_vehicle getVariable "stpt_name");
(_display displayCtrl 41000) ctrlSetText (_vehicle getVariable "stpt_name");
_grid = [itc_air_wpt_pos, true] call ace_common_fnc_getMapGridFromPos;
_el = round ((_vehicle getVariable "stpt_pos") # 2);

(_display displayCtrl 41001) ctrlSetText format["MGRS %1", _grid];
(_display displayCtrl 41002) ctrlSetText format["EL %1", _el];
