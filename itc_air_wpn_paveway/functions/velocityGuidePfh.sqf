(_this select 0) params ["_projectile", "_ammo", "_lastFrameTime", "_laserCode"];

private _frameTime = cba_missionTime - _lastFrameTime;
(_this select 0) set [2, time];

if (!alive _projectile) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
};

_spot = [getPosASL _projectile, velocity _projectile, 60, 8000, [1500, 1550], _laserCode] call ace_laser_fnc_seekerFindLaserSpot;
if(!isNil{_spot select 0}) then {
    private _targetCoordinates = _spot select 0;
    //drop ["\a3\data_f\Cl_basic","","Billboard",1,20,getPos _projectile,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];

    private _position = getPosASL _projectile;
    (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
    private _vectToTarget = _position vectorFromTo _targetCoordinates;
    private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
    private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
    private _angleX = asin (_vectorModelSpace # 0);
    private _angleY = asin (_vectorModelSpace # 2);
    private _turnRate = 2 * _frameTime;

    private _turn = if(_angleX > 0) then [{_turnRate},{-_turnRate}];
    private _pitchMod = if(_angleY > 0) then [{_turnRate},{-_turnRate}];

    _projectile setDir (getDir _projectile) + _turn;
    [_projectile, _pitch + _pitchMod, 0] call BIS_fnc_setPitchBank;
};
