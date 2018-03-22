params["_target"];
if(!((vehicle player) isKindOf "Air")) exitWith {};
_capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};

_plane = vehicle player;
_target = if(isNil{_target}) then [{getPilotCameraTarget _plane}, {[true, _target]}];

_target params ["_tracking", "_position", "_object"];
if(_tracking) then {
    [
        format["Mark %1", ITC_AIR_POI_NUM],
        _position
    ] call ace_microdagr_fnc_deviceAddWaypoint;
    player sideChat format["Mark %1 Stored in nav", ITC_AIR_POI_NUM];
    ITC_AIR_POI_NUM = ITC_AIR_POI_NUM + 1;
};

true
