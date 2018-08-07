params ["_key", "_dir"];
if(!("SOI" in ((vehicle player) getVariable ["itc_air_systems",[]]))) exitWith {};
private _functionName = format ["itc_air_%1_fnc_keys", ITC_AIR_SOI];
private _function = missionNameSpace getVariable _functionName;
if(!isNil{_function}) then {
  [_key,_dir,(time > itc_air_soi_down_time + 0.2)] call _function;
};
