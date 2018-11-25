params ["_unit", "_weapon", "", "", "_ammo", "", "_projectile", "_gunner"];
private _laserCode = (vehicle player) getVariable ["paveway_laser_code",1111];
private _function = if(itc_air_paveway_realism) then [{itc_air_paveway_fnc_realGuidePfh},{itc_air_paveway_fnc_velocityGuidePfh}];
[_function,0.1,[_projectile, _ammo, cba_missionTime, _laserCode]] call cba_fnc_addPerFrameHandler;
