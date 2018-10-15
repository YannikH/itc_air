params ["_unit", "_weapon", "", "", "_ammo", "_magazine", "_projectile", "_gunner"];

private _bombPos = getPos _projectile;
private _modelPos = _unit worldToModelVisual  _bombPos;
private _mass = getNumber (configFile >> "cfgMagazines" >> _magazine >> "mass");
private _count = getNumber (configFile >> "cfgMagazines" >> _magazine >> "count");
if(_mass == 0) then {
  _mass = getNumber (configFile >> "cfgMagazines" >> _magazine >> "weight");
};
_mass = _mass / _count;

if(_mass < 50) exitWith {};
[{
  (_this select 0) params ["_unit","_modelPos","_mass","_dropTime","_lastFrameTime"];
  private _frameTime = time - _lastFrameTime;
  (_this select 0) set [4, time];
  if(cba_missionTime > _dropTime + 0.5 || !alive _unit) exitWith {
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };
  private _timeMult = 0.5 + (_dropTime - cba_missionTime);
  private _force = [0,0,(2 * _mass) * (2 * _timeMult)];
  _unit addForce [_force,_modelPos];
}, 0, [_unit, _modelPos, _mass,cba_missionTime,cba_missionTime]] call CBA_fnc_addPerFrameHandler;
