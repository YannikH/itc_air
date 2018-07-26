(_this select 0) params ["_projectile","_lastFrameTime","_settings","_stage","_launchPos","_target","_lastScan"];
private _targetVehicle = nil;
private _closestBearing = 50;
{
  if(_x isKindOf "ship" || _x isKindOf "boat") then {
    private _bearingToTarget = _projectile getRelDir _x;
    _bearingToTarget = abs ([_bearingToTarget] call CBA_fnc_simplifyAngle180);
    if(_bearingToTarget < 45 && (_bearingToTarget < _closestBearing || isNil {_targetVehicle})) then {
      _targetVehicle = _x;
      _closestBearing = 50;
    };
  };
}forEach vehicles;
_targetVehicle
