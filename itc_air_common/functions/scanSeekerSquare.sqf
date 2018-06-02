
params ["_target","_fov","_resolution","_distance"];
private ["_intersectPos","_intersect","_xDirection"];
private _plane = vehicle player;

private _vectorToTarget = (getPosASL _plane) vectorFromTo _target;
private _reverseVector = _vectorToTarget vectorMultiply -1500;
private _beyondVector = _vectorToTarget vectorMultiply 15;

private _targetStartPos = _target vectorAdd _reverseVector;
private _targetEndPos = _target vectorAdd _beyondVector;
private _targetDistance = _targetStartPos vectorDistance _targetEndPos;
private _targetDirection = _vectorToTarget call CBA_fnc_vectDir;
private _targetElevation = _vectorToTarget call CBA_fnc_vectElev;

private _pointAngle = (_fov / _resolution);
private _startPoint = [_targetDirection - (_pointAngle * (_resolution / 2)), _targetElevation - (_pointAngle * (_resolution / 2))];
//drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _targetStartPos,[0,0,0],1,1.275,1.0,0.0,[1],[[0,0,1,1]],[0],0.0,2.0,"","",""];
//drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _targetEndPos,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
private _intersectResults = [];
private _intersectObjects = [];
for "_x" from 0 to (_resolution - 1) step 1 do {
  for "_y" from 0 to (_resolution - 1) step 1 do {
    private _targetVector = [_targetDistance, (_startPoint # 0) + (_x * _pointAngle), (_startPoint # 1) + (_y * _pointAngle)] call CBA_fnc_polar2vect;
    private _targetPos = _targetStartPos vectorAdd _targetVector;
    _intersect = lineIntersectsSurfaces [_targetStartPos, _targetPos, _plane];
    if(count _intersect > 0) then {
      if(!isNull (_intersect # 0 # 2)) then {
        _intersectResults pushBack (_intersect # 0);
        _intersectObjects pushBack ((_intersect # 0) # 2);
      };
      //drop ["\a3\data_f\Cl_basic","","Billboard",1,1,ASLtoATL (_intersect # 0 # 0),[0,0,0],1,1.275,1.0,0.0,[1],[[0,1,0,1]],[0],0.0,2.0,"","",""];
    };
  };
};
[_intersectResults, _intersectObjects]
