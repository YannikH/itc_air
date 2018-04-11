params["_target"];
if(!((vehicle player) isKindOf "Air")) exitWith {};
_capable = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capable}) exitWith {};

_plane = vehicle player;
_target = if(isNil{_target}) then [{_plane getVariable "tgp_dir"}, {[true, _target]}];

_target params ["_tracking", "_position", "_object"];
if(_tracking) then {
    [_plane, format["Mark %1", ITC_AIR_POI_NUM], _position, ITC_AIR_POI_NUM + 1] remoteExec ["itc_air_steerpoints_fnc_create", (crew _plane), false];
    if(_plane getVariable "stpt_name" == "NO WP") then {
      [0] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew _plane), false];
    };
    //player sideChat format["Mark %1 Stored in nav", ITC_AIR_POI_NUM];
};

true
