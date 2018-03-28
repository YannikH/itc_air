params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_laserCode = (vehicle player) getVariable "apkws_laser_code";

[{
    (_this select 0) params ["_projectile", "_ammo", "_position", "_laserCode","_launchTime"];
    if (!alive _projectile) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    _spot = [getPosASL _projectile, velocity _projectile, 40, 5500, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
    if(!isNil{_spot select 0} && time > _launchTime + 0.5) then {
        _targetCoordinates = _spot select 0;
        _position = getPosASL _projectile;
        (_this select 0) set [2, _position];
        (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
        _speed = vectorMagnitude (velocity _projectile);
        _distHorizontal = [_position select 0, _position select 1, 0] distance [_targetCoordinates select 0, _targetCoordinates select 1, 0];
        _targetCoordinates = _targetCoordinates vectorAdd [0,0,(_distHorizontal / 10)];

        _dElev = (_position select 2) - (_targetCoordinates select 2);
        _angleTo = atan(_dElev / _distHorizontal);
        _angleToHoriz = _projectile getRelDir _targetCoordinates;
        _angleToHoriz = if(_angleToHoriz > 180) then [{_angleToHoriz - 360},{_angleToHoriz}];

        if((_projectile getDir _targetCoordinates) > getDir _projectile) then {
            _projectile setDir (getDir _projectile + 0.8);
        } else {
            _projectile setDir (getDir _projectile - 0.8);
        };

        _diff = abs(_pitch - (_angleTo * -1));
        _turnRate = 5;
        if(_pitch > (_angleTo * -1)) then {
            [_projectile, _pitch - (_diff / _turnRate), 0] call BIS_fnc_setPitchBank;
        } else {
            [_projectile, _pitch + (_diff / _turnRate), 0] call BIS_fnc_setPitchBank;
        };
    };
}, 0, [_projectile, _ammo, getPosATL _projectile, _laserCode, time]] call CBA_fnc_addPerFrameHandler;
