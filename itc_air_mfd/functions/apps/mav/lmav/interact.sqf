params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];
_vehicle = (vehicle player);
switch(_btn) do {
  case "L1": {
    [_display getVariable "displayVariable", "CODE", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    switch(_variable) do {
      case "CODE": {
        if([_value] call itc_air_common_fnc_is_laser_code) then {
          _vehicle setVariable ["itc_air_lmav_code",_value];
        };
      };
    };
  };
};
false
