params ["_plane"];

_mass = _plane getVariable "mass";
_massMultiplier = 0.25;
_plane addForce [[0,0,-(_mass * _massMultiplier)],getCenterOfMass _plane];

_dragMultiplier = 0.5;
_speed = (velocityModelSpace _plane select 1);

_baseDrag = _plane getVariable "drag";
_drag = _dragMultiplier * _speed * _baseDrag;
_vectorDir = vectorDir _plane;
_dragVector = _vectorDir vectorMultiply -(_drag);
_plane addForce [_dragVector, getCenterOfMass _plane];
