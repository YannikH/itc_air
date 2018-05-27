params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_laserCode = (vehicle player) getVariable "itc_air_lmav_code";
(vehicle player) setVariable ["itc_air_lmav_code",1111];
[{
    (_this select 0) params ["_projectile", "_ammo", "_position", "_laserCode","_lastFrameTime"];
    private _frameTime = time - _lastFrameTime;
    (_this select 0) set [4, time];

    if (!alive _projectile) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    _spot = [getPosASL _projectile, velocity _projectile, 5, 16000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
    if(!isNil{_spot select 0}) then {
        _targetCoordinates = (_spot select 0) vectorAdd [0,0,1];
        _position = getPosASL _projectile;
        (_this select 0) set [2, _position];
        (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
        _speed = vectorMagnitude (velocity _projectile);
        _distHorizontal = [_position select 0, _position select 1, 0] distance [_targetCoordinates select 0, _targetCoordinates select 1, 0];
        if(_distHorizontal > 150) then {
          _targetCoordinates = _targetCoordinates vectorAdd [0,0,(_distHorizontal / 30)];
        };

        _dElev = (_position select 2) - (_targetCoordinates select 2);
        _angleTo = atan(_dElev / _distHorizontal);
        _angleToHoriz = _projectile getRelDir _targetCoordinates;
        _angleToHoriz = if(_angleToHoriz > 180) then [{_angleToHoriz - 360},{_angleToHoriz}];

        _turnRate = 4 * _frameTime;

        if((_projectile getDir _targetCoordinates) > getDir _projectile) then {
            _projectile setDir (getDir _projectile + _turnRate);
        } else {
            _projectile setDir (getDir _projectile - _turnRate);
        };

        _diff = abs(_pitch - (_angleTo * -1));
        if(_pitch > (_angleTo * -1)) then {
            [_projectile, _pitch - (_turnRate), 0] call BIS_fnc_setPitchBank;
        } else {
            [_projectile, _pitch + (_turnRate), 0] call BIS_fnc_setPitchBank;
        };
    };
}, 0, [_projectile, _ammo, getPosATL _projectile, _laserCode, time]] call CBA_fnc_addPerFrameHandler;
