params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if(([] call itc_air_wpt_fnc_getCurrent) # 0 == "N/A") exitWith{};
if (!local _gunner) exitWith {};
_angle = ITC_AIR_IMPANGLE;
_azimuth = 0;
_targetCoordinates = itc_air_spi;
(vehicle player) setVariable ["bomb_flying_target", _targetCoordinates];
_dropTime = time;
//GUIDANCE
[itc_air_jassm_fnc_guidePfh, 0, [_projectile, _ammo, getPosATL _projectile, _targetCoordinates, "SEP", _dropTime, _angle, time,_azimuth, _targetCoordinates]] call CBA_fnc_addPerFrameHandler;
