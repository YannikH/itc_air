params ["_vehicle","_system"];
private _arrays = [
  _vehicle getVariable ["itc_air_systems_active", []],
  _vehicle getVariable ["itc_air_systems_pfh", []],
  _vehicle getVariable ["itc_air_systems_psh", []]
];
{
  private _funcName = format["itc_air_%1_fnc_%2", _system,toLower _x];
  private _func = (missionNamespace getVariable _funcName);
  if(!isNil {_func}) then {
    if(toLower _x == "setup") then {
      [_vehicle] call _func;
    };
    (_arrays # _forEachIndex) pushBack _system;
  };
}forEach ["setup", "perFrame", "perSecond"];
_vehicle setVariable ["itc_air_systems_active", _arrays # 0];
_vehicle setVariable ["itc_air_systems_pfh", _arrays # 1];
_vehicle setVariable ["itc_air_systems_psh", _arrays # 2];
