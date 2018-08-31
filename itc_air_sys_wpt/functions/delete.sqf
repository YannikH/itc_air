private _list = [] call itc_air_wpt_fnc_getList;
private _index = [true] call itc_air_wpt_fnc_getCurrent;

_list deleteAt _index;
call itc_air_wpt_fnc_prev;
