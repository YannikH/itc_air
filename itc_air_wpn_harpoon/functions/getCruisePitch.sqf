params ["_projectile","_goalAltitude"];

private _altitude = (ASLToAGL (getPosASL _projectile)) # 2;
private _pitch = 0;
private _diff = (_goalAltitude - _altitude) / 10;
_pitch = _diff min 45 max -25;
_pitch
