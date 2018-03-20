params ["_n"];
_plane = vehicle player;
if(!(_plane isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};
_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
_wpCount = count _waypoints;
if(_wpCount == 0) exitWith {
    hint "NO MARKPOINTS";
};
if(_wpCount == 1) exitWith {
    ITC_AIR_CURRENTWP = 0;
    call itc_air_steerpoints_fnc_target;
    _newPt = _waypoints select ITC_AIR_CURRENTWP;
    hint format ["WP %1 - %2 SELECTED",
        ITC_AIR_CURRENTWP + 1,
        _waypoints select ITC_AIR_CURRENTWP select 0
    ];
    _plane setVariable ["stpt_name", _newPt select 0];
    _plane setVariable ["stpt_pos", _newPt select 1];
};
if(ITC_AIR_CURRENTWP + _n > _wpCount) then {
    ITC_AIR_CURRENTWP = _wpCount - _n;
};
if(ITC_AIR_CURRENTWP + _n < _wpCount && ITC_AIR_CURRENTWP + _n >= 0 && _wpCount > 0) then {
    ITC_AIR_CURRENTWP = ITC_AIR_CURRENTWP + _n;
    call itc_air_steerpoints_fnc_target;
    hint format ["WP %1 - %2 SELECTED",
        ITC_AIR_CURRENTWP + 1,
        _waypoints select ITC_AIR_CURRENTWP select 0
    ];
    _newPt = _waypoints select ITC_AIR_CURRENTWP;
    _plane setVariable ["stpt_name", _newPt select 0];
    _plane setVariable ["stpt_pos", _newPt select 1];
};
