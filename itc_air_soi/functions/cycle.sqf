//params [["_desired","_next"]];
private ["_capable"];
private _options = ["left", "right", "hmd"];
private _sources = ["ITC_AIR_MFD_L","ITC_AIR_MFD_R","HMCS"];
private _current = _sources find ((vehicle player) getVariable "SOI");
private _foundNext = false;
while {!_foundNext} do {
  _current = if(_current == (count _sources) - 1) then [{0},{_current + 1}];
  _capable = [_options # _current] call itc_air_mfd_fnc_soi_capable;
  if(_capable) then {
    [_sources # _current] call itc_air_mfd_fnc_soi_set;
    _foundNext = true;
  };
};
