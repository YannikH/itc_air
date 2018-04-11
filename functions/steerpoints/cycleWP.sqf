params ["_n"];
_plane = vehicle player;
if(!(_plane isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};
_waypoints = _plane getVariable "stpt_list";
_wpCount = count _waypoints;
_currentWP = _plane getVariable "stpt_index";
if(_wpCount == 0) exitWith {
    hint "NO MARKPOINTS";
};
if(_wpCount == 1) exitWith {
    _currentWP = 0;
    _newPt = _waypoints select _currentWP;
    hint format ["WP %1 - %2 SELECTED",
        _currentWP + 1,
        _waypoints select _currentWP select 0
    ];
    _plane setVariable ["stpt_index", _currentWP];
    _plane setVariable ["stpt_name", _newPt select 0];
    _plane setVariable ["stpt_pos", _newPt select 1];
    call itc_air_steerpoints_fnc_target;
};
if(_currentWP + _n > _wpCount) then {
    _currentWP = _wpCount - _n;
};
if(_currentWP + _n < _wpCount && _currentWP + _n >= 0 && _wpCount > 0) then {
    _currentWP = _currentWP + _n;
    hint format ["WP %1 - %2 SELECTED",
        _currentWP + 1,
        _waypoints select _currentWP select 0
    ];
    _newPt = _waypoints select _currentWP;
    _plane setVariable ["stpt_index", _currentWP];
    _plane setVariable ["stpt_name", _newPt select 0];
    _plane setVariable ["stpt_pos", _newPt select 1];
    call itc_air_steerpoints_fnc_target;
};
