params ["_key","_dir","_long"];
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        if(ITC_AIR_MAVERICK_GSTAB) then {
          [AGLtoASL screenToWorld [0.5,0.5], vehicle player] call itc_air_tgp_fnc_target;
        };
        ITC_AIR_MAVERICK_GSTAB = true;
        ITC_AIR_MAVERICK_TRACK = screenToWorld [0.5,0.5];
      };
      case "LEFT": {
        [AGLtoASL screenToWorld [0.5,0.5]] call itc_air_steerpoints_fnc_store;
      };
    }
  };
};
