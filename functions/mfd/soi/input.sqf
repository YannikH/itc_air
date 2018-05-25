  _mfd = uiNamespace getVariable ((vehicle player) getVariable "SOI");
  _page = _mfd getVariable "page";
  switch(_page) do {
    case "tgp": {[_mfd, _this] call itc_air_mfd_fnc_tgp_soi};
    case "tad": {[_mfd, _this] call itc_air_mfd_fnc_tad_soi};
  };
