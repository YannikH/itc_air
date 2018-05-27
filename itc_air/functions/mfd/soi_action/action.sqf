_name = ((vehicle player) getVariable "SOI");
_mfd = uiNamespace getVariable _name;
_sensor = _mfd getVariable "sensor";
switch(toLower _sensor) do {
  case "tad": {[_mfd] call itc_air_mfd_fnc_tad_soi_action};
};
