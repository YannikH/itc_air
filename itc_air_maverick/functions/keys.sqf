params ["_key","_dir","_long"];
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        if(_long) then {
          if(ITC_AIR_MAVERICK_GSTAB) then {
            [AGLtoASL ITC_AIR_MAVERICK_TRACK, vehicle player] call itc_air_tgp_fnc_target;
          };
        } else {
          call itc_air_maverick_fnc_attemptLock;
        };
      };
      case "DOWN": {
        call itc_air_maverick_fnc_stabilise;
      };
      case "LEFT": {
        if(ITC_AIR_MAVERICK_GSTAB) then {
          [AGLtoASL ITC_AIR_MAVERICK_TRACK] call itc_air_wpt_fnc_generate;
        };
      };
    }
  };
};

switch (_key) do {
  case "DMS": {
    switch (_dir) do {
      case "UP": {
        ITC_AIR_MAVERICK_CAM camSetFov 0.001;
      };
      case "DOWN": {
        ITC_AIR_MAVERICK_CAM camSetFov 0.1;
      };
      case "LEFT": {
        ITC_AIR_MAVERICK_SLEWSPD = if(ITC_AIR_MAVERICK_SLEWSPD < 2) then [{5},{ITC_AIR_MAVERICK_SLEWSPD - 2}];
      };
    }
  };
};
