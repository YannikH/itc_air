params ["_display"];
if(cba_missionTime < itc_air_mfd_wpt_last_render + 0.1) exitWith {};
private _modeIndex = (itc_air_wpt_steer_pt_modes find itc_air_wpt_steer_pt_mode);
private _page = itc_air_mfd_wpt_pages # _modeIndex;
_display setVariable ["page", _page];

itc_air_mfd_wpt_last_render = cba_missionTime;
_vehicle = vehicle player;

private _wayPoints = [true] call itc_air_wpt_fnc_getList;
_curWPIndex = [true] call itc_air_wpt_fnc_getCurrent;
private _curWP = [false] call itc_air_wpt_fnc_getCurrent;
_list = (_display displayCtrl 421500);
lbClear _list;
{
  _list lbAdd format["%1 %2", (_x # 0), (_x # 1)];
}forEach _wayPoints;
_list lbSetCurSel _curWPIndex;
(_display displayCtrl 1002) ctrlSetText (_curWP # 0);
(_display displayCtrl 41000) ctrlSetText format["%1 %2", (_curWP # 0), (_curWP # 1)];
_grid = [(_curWP # 2), true] call ace_common_fnc_getMapGridFromPos;
_el = round ((_curWP # 2) # 2);

(_display displayCtrl 41001) ctrlSetText format["MGRS %1", _grid];
(_display displayCtrl 41002) ctrlSetText format["EL %1", _el];
