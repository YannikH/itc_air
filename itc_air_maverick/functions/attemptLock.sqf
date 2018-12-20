private _target = AGLtoASL ITC_AIR_MAVERICK_TRACK;
private _plane = vehicle player;
private _targetDistance = _plane distance _target;
private _intersectResults = [_target, 0.1, 10, _plane distance _target] call itc_air_common_fnc_scanSeekerSquare;
_intersectResults params ["_intersectResultsArray","_intersectObjects"];
private _intersectCounts = _intersectObjects call CBA_fnc_getArrayElements;
if(count _intersectObjects == 0) exitWith {};
private _targetObject = _intersectObjects # 0;
private _targetIntersects = [_intersectResultsArray, {(_this select 2) == _targetObject}] call CBA_fnc_select;
private _totalPosition = [0,0,0];
private _targetIntersectCounts = count _targetIntersects;
for "_i" from 0 to (_targetIntersectCounts - 1) step 1 do {
  _totalPosition = _totalPosition vectorAdd (_targetIntersects # _i # 0);
};
private _averagePosition = [_totalPosition # 0 / _targetIntersectCounts, _totalPosition # 1 / _targetIntersectCounts, _totalPosition # 2 / _targetIntersectCounts];
//drop ["\a3\data_f\Cl_basic","","Billboard",1,20,ASLtoAGL _averagePosition,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
private _targetPositionObject = _targetObject worldToModel (ASLtoAGL _averagePosition);
ITC_AIR_MAVERICK_LOCK = [_targetObject, _targetPositionObject];
ITC_AIR_MAVERICK_LOCK
