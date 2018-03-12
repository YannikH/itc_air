/*
 *  Gets the current position a turret is pointed at
 *  Params: vehicle, turret index
 *  Returns: intersect position if the turret is pointed at an object or the ground, position 8km away if pointed at the sky
 */

params ["_vehicle","_turretIndex"];

//handle pilotCameras
if(_turretIndex == -1) exitWith {
    getPilotCameraTarget (_vehicle) params ["_locked", "_target"];
    [_locked, _target, (visiblePosition _vehicle) vectorAdd [0,0,-1]];
};

//get the turret direction from ACE and turn it in to _pos and _dir
[_vehicle, [_turretIndex]] call ace_common_fnc_getTurretDirection params ["_pos", "_dir"];
_dirNorm = vectorNormalized _dir;           //normalise the direction
_dirDist = _dirNorm vectorMultiply 8000;    //blow it out to 8km, could be lowered later or dynamically calculated, but is fine for now
_dirPoint = _pos vectorAdd _dirDist;        //make it relative to the turret position
_intersects = lineIntersectsSurfaces  [_pos, _dirPoint];    //get its intersect point so the laser doesn't clip through buildings
_intersectPos = _intersects select 0 select 0;  //get the actual intersect position

if(isNil {_intersectPos}) then {
    _intersectPos = ASLtoATL _dirPoint;
};

[true, _intersectPos, ASLtoAGL _pos]