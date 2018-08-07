params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
if((vehicle player) getVariable "stpt_name" == "NO WP") exitWith{};
_angle = ITC_AIR_IMPANGLE;
_azimuth = 0;
_targetCoordinates = ((vehicle player) getVariable "stpt_pos") vectorAdd [0,0,1];
(vehicle player) setVariable ["bomb_flying_target", _targetCoordinates];
_dropTime = time;
//GUIDANCE
[itc_air_sdb_fnc_guidePfh, 0, [_projectile, _ammo, getPosATL _projectile, _targetCoordinates, "SEP", _dropTime, _angle, time,_azimuth, _targetCoordinates]] call CBA_fnc_addPerFrameHandler;
