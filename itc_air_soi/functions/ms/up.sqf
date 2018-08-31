params ["_key", "_dir"];
if(!("SOI" in ((vehicle player) getVariable ["itc_air_systems",[]]))) exitWith {};
private _long = (time > itc_air_soi_down_time + 0.2);
//player sideChat str (_this + [_long]);

switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "DOWN": {
        if(_long) exitWith {
          private _target = ([] call itc_air_wpt_fnc_getCurrent) # 2;

          ITC_AIR_MAVERICK_GSTAB = true;
          ITC_AIR_MAVERICK_TRACK = ASLtoATL _target;

          [_target, vehicle player] call itc_air_tgp_fnc_target;
        };
      }
    };
  };
};

private _functionName = format ["itc_air_%1_fnc_keys", ITC_AIR_SOI];
private _function = missionNameSpace getVariable _functionName;
if(!isNil{_function}) then {
  [_key,_dir,_long] call _function;
};
