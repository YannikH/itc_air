_name = ((vehicle player) getVariable "SOI");
_mfd = uiNamespace getVariable _name;
_page = _mfd getVariable "page";
switch(toLower _page) do {
  case "tad": {[_mfd] call itc_air_mfd_fnc_tad_soi_action};
};
