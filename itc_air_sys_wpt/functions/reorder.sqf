//dir is numeric, 1 for forward, -1 for back
params ["_dir"];
private _list = [] call itc_air_wpt_fnc_getList;
//get the indices
private _index = [true] call itc_air_wpt_fnc_getCurrent;
private _switchIndex = _index + _dir;

//kill it if impossible
if(_switchIndex < 0 || _switchIndex >= (count _list)) exitWith {};

//copy the waypoints
private _currentCopy = ([] call itc_air_wpt_fnc_getCurrent) + []; //adding it together with an empty array copies it
private _switchCopy = (_list # _switchIndex) + [];

//set them on the new indices
_list set [_index, _switchCopy];
_list set [_switchIndex, _currentCopy];

if(_dir > 0) then {
  [] call itc_air_wpt_fnc_next;
} else {
  [] call itc_air_wpt_fnc_prev;
};
