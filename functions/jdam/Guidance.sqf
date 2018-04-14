params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];

_seekers = (configFile >> "CfgAmmo" >> _ammo >> "seekers") call BIS_fnc_getCfgData;

if (!local _gunner) exitWith {};

if((vehicle player) getVariable "stpt_name" == "NO WP") exitWith{};

_angle = ITC_AIR_IMPANGLE;
_targetCoordinates = nil;
_laserCode = 1111;
if("gps" in _seekers) then {
    _targetCoordinates = ((vehicle player) getVariable "stpt_pos") vectorAdd [0,0,1];
    (vehicle player) setVariable ["bomb_flying_target", _targetCoordinates];
};
if("laser" in _seekers) then {
  _laserCode = (vehicle player) getVariable "laser_code_recv";
};
_dropTime = time;
//GUIDANCE
[{
    (_this select 0) params ["_projectile", "_ammo", "_position", "_targetCoordinates", "_stage", "_time", "_angle", "_seekers", "_laserCode"];
    if (!alive _projectile) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    if("laser" in _seekers) then {
        _spot = [getPosASL _projectile, velocity _projectile, 45, 5000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
        if(!isNil{_spot select 0}) then {
            _targetCoordinates = _spot select 0;
            (_this select 0) set [3, _targetCoordinates];
        };
    };

    _position = getPosASL _projectile;
    (_this select 0) set [2, _position];
    (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
    _speed = vectorMagnitude (velocity _projectile);

    _dElev = (_position select 2) - (_targetCoordinates select 2);
    _distHorizontal = [_position select 0, _position select 1, 0] distance [_targetCoordinates select 0, _targetCoordinates select 1, 0];
    _angleTo = atan(_dElev / _distHorizontal);
    _angleToHoriz = _projectile getRelDir _targetCoordinates;
    _angleToHoriz = if(_angleToHoriz > 180) then [{_angleToHoriz - 360},{_angleToHoriz}];

    //KILL THE GUIDANCE IF TARGET IS BEHIND PROJECTILE
    if(abs _angleToHoriz > 90) exitWith{[_this select 1] call CBA_fnc_removePerFrameHandler;};

    //player sideChat format ["HeightDiff %1 Dist %2 Pitch %3",round  _dElev, round _distHorizontal, round _angleTo];

    _dist = _position distance _targetCoordinates;
    _tof = _dist / _speed;
    //SEPARATION STAGE
    if(_stage == "SEP") then {
        //player sideChat "SEPARATION";
        if(time > _time + 2) then {
            (_this select 0) set [4, "GLIDE"];
            //player sideChat "GLIDING";
        };
    };

    if(_stage == "GLIDE" || _stage == "DIVE") then {
      if((_projectile getDir _targetCoordinates) > getDir _projectile) then {
          _projectile setDir (getDir _projectile + 0.5);
      } else {
          _projectile setDir (getDir _projectile - 0.5);
      };
    };

    _angleDiff = abs(_pitch - _angle);
    _turnRate = 5;
    _turnDistRequired = (0.7 * (_angleDiff / _turnRate)) * (_speed / 10);

    if(_stage == "GLIDE") then {
        //player sideChat format ["%1 %2", _angleDiff, _turnDistRequired];
        if(_pitch < 0) then {
            [_projectile, _pitch + 0.1, 0] call BIS_fnc_setPitchBank;
        };
        if(_angleTo > _angle || _distHorizontal < _turnDistRequired) then {
            (_this select 0) set [4, "DIVE"];
        };
    };



    if(_stage == "DIVE") then {
        _diff = abs(_pitch - (_angleTo * -1));
        if(_pitch > (_angleTo * -1)) then {
            [_projectile, _pitch - (_diff / _turnRate), 0] call BIS_fnc_setPitchBank;
        } else {
            [_projectile, _pitch + (_diff / _turnRate), 0] call BIS_fnc_setPitchBank;
        };
    };
}, 0.1, [_projectile, _ammo, getPosATL _projectile, _targetCoordinates, "SEP", _dropTime, _angle, _seekers, _laserCode]] call CBA_fnc_addPerFrameHandler;
