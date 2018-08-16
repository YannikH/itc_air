params ["_key","_dir","_long"];
private _target = if(ITC_AIR_HMD_GSTAB)then[{ITC_AIR_HMD_TRACK}, {screenToWorld [0.5,0.5]}];
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        if(_long) then {
          if(ITC_AIR_HMD_GSTAB) then {
            if(ITC_AIR_MAVERICK_GSTAB) then {
              [AGLtoASL _target, vehicle player] call itc_air_tgp_fnc_target;
            };
            ITC_AIR_MAVERICK_GSTAB = true;
            ITC_AIR_MAVERICK_TRACK = _target;
          };
        } else {
          [] call itc_air_hmd_fnc_stabilise;
        };
      };
      case "DOWN" :{
        ITC_AIR_HMD_GSTAB = false;
      };
      case "LEFT": {
        [AGLtoASL _target] call itc_air_steerpoints_fnc_store;
      };
      case "RIGHT": {
        [AGLtoASL _target, vehicle player] call itc_air_tgp_fnc_target;
      };
    }
  };
};
