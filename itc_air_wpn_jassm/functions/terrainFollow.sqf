/*
params ["_guidance","_diveRate","_pitch", "_bankRate","_bank"];
_guidance params ["_projectile", "_steerPoint","_frameTime", "_angleX", "_angleY","_stage"];



private _highestPoint5km = getTerrainHeightASL

private _absBank = abs _bank;
private _levelTime = _absBank / _bankRate;
private _pitchClimbTime = (45 - _pitch) / _pitchRate;

private _speed = vectorMagnitude (velocity _projectile);

private _pitchLevelDist = (_levelTime * _speed) + (_pitchClimbTime * _speed);

private _intersectPos
*/
