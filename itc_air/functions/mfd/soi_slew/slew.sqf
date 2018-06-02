params ["_stpt"];
_SOI = (vehicle player) getVariable "SOI";

if(_SOI == "HMCS") exitWith {
  [_stpt] call itc_air_mfd_fnc_hmcs_slew;
};

_mfd = uiNamespace getVariable _SOI;
_sensor = _mfd getVariable "sensor";
switch(_sensor) do {
  case "tad": {[_mfd, _stpt] call itc_air_mfd_fnc_tad_soi_slew};
  case "tgp": {[_mfd, _stpt] call itc_air_mfd_fnc_tgp_soi_slew};
  case "maverick": {[_mfd, _this] call itc_air_maverick_fnc_attemptLock};
};
