params ["_n"];
if(!((vehicle player) isKindOf "Air")) exitWith {ITC_AIR_BROADCASTING = false};
_capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};
_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
_wpCount = count _waypoints;
if(_wpCount == 0) exitWith {
    hint "NO MARKPOINTS";
};
if(_wpCount == 1) exitWith {
    ITC_AIR_CURRENTWP = 0;
    hint format ["WP %1 - %2 SELECTED", 
        ITC_AIR_CURRENTWP + 1, 
        _waypoints select ITC_AIR_CURRENTWP select 0
    ];
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
};