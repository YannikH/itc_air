params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];
_vehicle = (vehicle player);
switch(_btn) do {
  case "R1": {
    [_vehicle] call itc_air_ir_laser_fnc_toggle;
  };
  case "R2": {
    [_vehicle] call itc_air_ir_laser_fnc_toggle_pulse;
  };
  case "R3": {
    _curStep = _vehicle getVariable "tgp_fov_index";
    _steps = _vehicle getVariable "tgp_fov_steps";
    _curStep = (_curStep + 1) min ((count _steps) - 1);
    _vehicle setVariable ["tgp_fov_index", _curStep];
    _vehicle setVariable ["tgp_fov", _steps select _curStep];
  };
  case "R4" : {
    _curStep = _vehicle getVariable "tgp_fov_index";
    _steps = _vehicle getVariable "tgp_fov_steps";
    _curStep = (_curStep - 1) max 0;
    _vehicle setVariable ["tgp_fov_index", _curStep];
    _vehicle setVariable ["tgp_fov", _steps select _curStep];
  };
  case "R5": {
    _index = _vehicle getVariable "tgp_mode";
    _index = if(_index + 1 > 2) then [{0}, {_index + 1}];
    _vehicle setVariable ["tgp_mode", _index];
  };
  case "L1": {
    _mode = _vehicle getVariable "tgp_lsst_mode";
    switch(_mode) do {
      case "LSS OFF": {_vehicle setVariable ["tgp_lsst_mode", "LSS"];};
      case "LSS": {_vehicle setVariable ["tgp_lsst_mode", "LSS OFF"];};
      case "LST": {_vehicle setVariable ["tgp_lsst_mode", "LSS OFF"];};
    };
  };
  case "L2": {
    [_display getVariable "displayVariable", "LSS", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "L3": {
    ["Laserdesignator_pilotCamera","Laserdesignator_pilotCamera"] call itc_air_ammo_fnc_fireAndResetWeapon;
  };
  case "L4": {
    [_display getVariable "displayVariable", "LSR", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "L5": {
      ITC_AIR_TGP_SLEWSPD = if(ITC_AIR_TGP_SLEWSPD > 3) then [{1},{ITC_AIR_TGP_SLEWSPD + 2}];
  };
  case "T3": {
    [_vehicle, objNull] remoteExec ["setPilotCameraTarget", (crew _vehicle), false];
    [_vehicle, [0,0]] remoteExec ["setPilotCameraRotation", (crew _vehicle), false];
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    switch(_variable) do {
      case "LSS": {
        if([_value] call itc_air_common_fnc_is_laser_code) then {
          _vehicle setVariable ["laser_code_recv",_value];
        };
      };
      case "LSR": {
        if([_value] call itc_air_common_fnc_is_laser_code) then {
          _vehicle setVariable ["ace_laser_code",_value];
        };
      };
    };
  };
};
false
