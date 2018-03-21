_SOI = (vehicle player) getVariable "SOI";
if(_SOI == "HMCS") exitWith {
  call itc_air_mfd_fnc_hmcs_slew;
};

_mfd = uiNamespace getVariable _SOI;
_page = _mfd getVariable "page";
switch(_page) do {
  case "tad": {[_mfd, _this] call itc_air_mfd_fnc_tad_soi_slew};
};
