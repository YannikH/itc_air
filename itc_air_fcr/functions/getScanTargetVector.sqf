params ["_az","_range"];
private _plane = vehicle player;
private _scanPos = _plane getPos [_range, _az + getDir _plane];
private _scanDir = (getPosASL _plane) vectorFromTo (AGLtoASL [_scanPos # 0, _scanPos # 1, 0]);
_scanDir
