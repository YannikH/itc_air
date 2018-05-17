if(!((vehicle player) isKindOf "Air")) exitWith {};
_capableHMD = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "hmd")  call BIS_fnc_getCfgData;
_capableTGP = (configFile >> "CfgVehicles" >> (typeOf vehicle player) >> "itc_air" >> "tgp")  call BIS_fnc_getCfgData;
if(isNil {_capableHMD} || isNil {_capableTGP}) exitWith {};

_plane = vehicle player;
_targetPos = getPosASL cursorTarget;
[_targetPos, _plane] call itc_air_tgp_fnc_target;
