//params [["_desired","_next"]];
private ["_current","_foundNext","_timesCycled","_source"];
/*
private _options = ["left", "right", "hmd"];
private _sources = ["ITC_AIR_MFD_L","ITC_AIR_MFD_R","HMD"];
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
*/
private _current = (itc_air_soi_providers find itc_air_soi_provider) max 0;
private _foundNext = false;
private _timesCycled = 0;
while {!_foundNext && _timesCycled < (count itc_air_soi_providers)} do {
  //systemChat str _timesCycled;
  //systemChat "CYCLING";
  _timesCycled = _timesCycled + 1;
  _source = itc_air_soi_providers # _current;
  private _functionName = format ["itc_air_%1_fnc_cycle", _source];
  //systemChat str _functionName;
  private _function = missionNameSpace getVariable _functionName;
  if(!isNil{_function}) then {
    _cycled = [] call _function;
    if(_cycled) then {
      _foundNext = true;
    };
  };
  _current = if(_current == (count itc_air_soi_providers) - 1) then [{0},{_current + 1}];
};
