params ["_sensor"];

(vehicle player) setVariable ["SOI", _sensor];

if(_sensor != "HMCS") then {
  _mfd = uiNamespace getVariable _sensor;
  _sensor = _mfd getVariable "sensor";
  ITC_AIR_SOI = _sensor;
};
