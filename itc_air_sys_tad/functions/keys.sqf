params ["_key","_dir","_long"];
_vehicle = vehicle player;
private _hook = ["HOOK"] call itc_air_tad_fnc_getHookPosByMode;
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        if(_long) then {
          if(!isNil{_hook}) then {
            ITC_AIR_MAVERICK_GSTAB = true;
            ITC_AIR_MAVERICK_TRACK = ASLtoATL (_hook);
            [_hook, vehicle player] call itc_air_tgp_fnc_target;
          };
        } else {
          [] call itc_air_tad_fnc_attemptHook;
        };
      };
      case "DOWN": {
        [] call itc_air_tad_fnc_expand;
      };
      case "LEFT": {
        _target = [] call itc_air_tad_fnc_cursorPos;
        [_target] call itc_air_wpt_fnc_generate;
      };
    }
  };
};

switch (_key) do {
  case "DMS": {
    switch (_dir) do {
      case "UP": {
        [-1] call itc_air_tad_fnc_zoom;
      };
      case "DOWN": {
        [1] call itc_air_tad_fnc_zoom;
      };
    }
  };
};
