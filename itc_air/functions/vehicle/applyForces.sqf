params ["_plane", "_frameTime"];

_frameMultiplier = _frameTime / 0.008;

_mass = _plane getVariable "mass";
_massMultiplier = ITC_AIR_MASS;
_plane addForce [[0,0,-(_mass * _massMultiplier * _frameMultiplier)],getCenterOfMass _plane];

_dragMultiplier = ITC_AIR_DRAG;
_speed = (velocityModelSpace _plane select 1);

_baseDrag = _plane getVariable "drag";
_drag = _dragMultiplier * _speed * _baseDrag * _frameMultiplier;
_vectorDir = vectorDir _plane;
_dragVector = _vectorDir vectorMultiply -(_drag);
_plane addForce [_dragVector, getCenterOfMass _plane];
//player sideChat format["%1 %2 %3 %4", _baseDrag, round _drag, _mass, _frameMultiplier];
