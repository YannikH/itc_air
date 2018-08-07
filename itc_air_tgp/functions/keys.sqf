params ["_key","_dir","_long"];
_vehicle = vehicle player;
switch (_key) do {
  case "TMS": {
    switch (_dir) do {
      case "UP": {
        if(_long) then {
          ITC_AIR_MAVERICK_GSTAB = true;
          ITC_AIR_MAVERICK_TRACK = ASLtoATL ((_vehicle getVariable "tgp_dir") # 1);
        } else {
          _targetPos = ASLtoAGL ((getPilotCameraTarget _vehicle) select 1);
          _nearestObjects = nearestObjects [_targetPos, ["AllVehicles"], 20];
          if(!isNil {_nearestObjects} && count _nearestObjects > 0) then {
            [(_nearestObjects select 0), _vehicle] call itc_air_tgp_fnc_target;
          };
        };
      };
      case "DOWN": {
        _index = _vehicle getVariable "tgp_mode";
        _index = if(_index + 1 > 2) then [{0}, {_index + 1}];
        _vehicle setVariable ["tgp_mode", _index];
      };
      case "LEFT": {
        [nil] call itc_air_steerpoints_fnc_store;
      };
      case "RIGHT": {
        ["Laserdesignator_pilotCamera","Laserdesignator_pilotCamera"] call itc_air_ammo_fnc_fireAndResetWeapon;
      };
    }
  };
};

switch (_key) do {
  case "DMS": {
    switch (_dir) do {
      case "UP": {
        _curStep = _vehicle getVariable "tgp_fov_index";
        _steps = _vehicle getVariable "tgp_fov_steps";
        _curStep = (_curStep + 1) min ((count _steps) - 1);
        _vehicle setVariable ["tgp_fov_index", _curStep];
        _vehicle setVariable ["tgp_fov", _steps select _curStep];
      };
      case "DOWN": {
        _curStep = _vehicle getVariable "tgp_fov_index";
        _steps = _vehicle getVariable "tgp_fov_steps";
        _curStep = (_curStep - 1) max 0;
        _vehicle setVariable ["tgp_fov_index", _curStep];
        _vehicle setVariable ["tgp_fov", _steps select _curStep];
      };
      case "LEFT": {
          ITC_AIR_TGP_SLEWSPD = if(ITC_AIR_TGP_SLEWSPD > 3) then [{1},{ITC_AIR_TGP_SLEWSPD + 2}];
      };
    }
  };
};
