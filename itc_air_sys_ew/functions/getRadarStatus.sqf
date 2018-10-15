params ["_vehicle","_radar"];

if(!alive _radar) exitWith {-2}; //radar dead
if(!isVehicleRadarOn _radar || _radar == _vehicle) exitWith {-1}; //radar off or is player

private _maxRange = getNumber (
  configFile >>
  "CfgVehicles" >>
  (typeOf _radar) >>
  "Components" >>
  "SensorsManagerComponent" >>
  "Components" >>
  "ActiveRadarSensorComponent" >>
  "AirTarget" >>
  "maxRange"
);

if(_vehicle distance _radar > _maxRange) exitWith {-1}; //out of radar range

//private _blockedLOS = lineIntersects [_vehicle, _radar, _vehicle, _radar];
private _visibility = [_vehicle, "VIEW", _radar] checkVisibility [getPosASL _vehicle,(getPosASL _radar) vectorAdd [0,0,2]];

if(_visibility < 0.1) exitWith {-1}; //LOS blocked

private _assignedTarget = assignedTarget _radar;
private _aimedAtTarget = _vehicle aimedAtTarget [_assignedTarget];

if((_radar getVariable ["itc_air_ew_fired",false] && {_aimedAtTarget > 0.5}) && {_assignedTarget == _vehicle}) exitWith {2};
//_radar setVariable ["itc_air_ew_fired", true];

if(_assignedTarget == _vehicle && {_aimedAtTarget > 0}) exitWith {1};

0
