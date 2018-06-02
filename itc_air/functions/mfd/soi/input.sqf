  _mfd = uiNamespace getVariable ((vehicle player) getVariable "SOI");
  _sensor = _mfd getVariable "sensor";
  switch(_sensor) do {
    case "tgp": {[_mfd, _this] call itc_air_mfd_fnc_tgp_soi};
    case "tad": {[_mfd, _this] call itc_air_mfd_fnc_tad_soi};
    case "maverick": {[_mfd, _this] call itc_air_maverick_fnc_slew};
  };
