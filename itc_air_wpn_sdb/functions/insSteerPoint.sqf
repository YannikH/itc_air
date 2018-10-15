params ["_projectile", "_steerPoint","_frameTime", "_angleX", "_angleY","_stage","_targetCoordinates","_azimuth","_angle"];
private _speed = vectorMagnitude (velocity _projectile);
private _dElev = (_position select 2) - (_targetCoordinates select 2);
private _turnDistRequired = ((abs _angleY) / 30) * _speed;
private _diveInitDist = (_dElev / tan(_angle)) + _turnDistRequired;
(_targetCoordinates getPos [-_diveInitDist,_azimuth])
