params ["_vehicle"];
private _memPointName = getText (configFile >> "CfgVehicles" >> typeOf _vehicle >> "memoryPointDriverOptics");
private _memPointPos = _vehicle selectionPosition _memPointName;
private _targetPos = if(!isNull (laserTarget _vehicle)) then [
  {
    getPosASL laserTarget _vehicle;
  },{
    (_vehicle getVariable ["itc_air_network_target", [0,0,0]]);
  }
];
[
  true,
  _targetPos,
  _vehicle modelToWorldVisualWorld _memPointPos
];
