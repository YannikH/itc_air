params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if(([] call itc_air_wpt_fnc_getCurrent) # 0 == "N/A") exitWith{};
if (!local _gunner) exitWith {};
_angle = ITC_AIR_IMPANGLE;

_targetCoordinates = itc_air_spi;

(vehicle player) setVariable ["bomb_flying_target", _targetCoordinates];
_dropTime = cba_missionTime;
(vehicle player) setVariable ["bomb_flying", _projectile];

_laserCode = -1;
_seekers = (configFile >> "CfgAmmo" >> _ammo >> "seekers") call BIS_fnc_getCfgData;
if("laser" in _seekers) then {
  _laserCode = (vehicle player) getVariable "laser_code_recv";
};

[itc_air_jdam_fnc_guidePfh, 0, [_projectile, _dropTime, _targetCoordinates,_laserCode,_angle,"SEP",_dropTime,time, nil,[0,0,0]]] call CBA_fnc_addPerFrameHandler;
_this call itc_air_jdam_fnc_fuzing;
