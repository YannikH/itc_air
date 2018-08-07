params ["_projectile", "_steerPoint","_frameTime", "_angleX", "_angleY","_stage","_targetCoordinates","_azimuth","_angle"];
private _speed = vectorMagnitude (velocity _projectile);
private _dElev = (_position select 2) - (_targetCoordinates select 2);
private _turnDistRequired = ((abs _angleY) / 30) * _speed;
private _diveInitDist = (_dElev / tan(_angle)) + _turnDistRequired;
private _ktsMul = 1.94384;
private _speedKts = _speed * _ktsMul;

private _dirTo = (_projectile getRelDir _targetCoordinates);
if(_dirTo > 180) then {_dirTo = _dirTo - 360};
if(_dirTo < -180) then {_dirTo = _dirTo + 360};

private _turnRadius = ((_speedKts*_speedKts) / (11.26 * tan(60))) / 3.28;
player sideChat format ["radius %1 %2 %3", _turnRadius, _diveInitDist, _dirTo];
//private _turnRadius = 800;
private _steerPointBase = _targetCoordinates getPos [-_diveInitDist,_azimuth];
[ASLtoAGL (_steerPointBase), "ColorRed"] call test_fnc_mark;
private _planeDir = getDir _plane;
_turnInitPoint = _steerPointBase getPos [-(_turnRadius*2), _dirTo + 180];
[ASLtoAGL (_turnInitPoint), "ColorYellow"] call test_fnc_mark;
//if(_projectile distance2D _steerPointBase > _projectile distance2D _targetCoordinates) then {
//  private _turnPointSide = if(_angleX > 0) then [{90},{-90}];
//  _turnInitPoint = _steerPointBase getPos [_turnRadius * 2, (getDir _projectile) + _turnPointSide];
//};
_turnInitPoint
