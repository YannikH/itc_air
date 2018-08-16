params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
(_btn splitString "") params ["_side", "_num"];
switch(_btn) do {
  case "T3": {
    _display setVariable ["page","stat"];
  };
  case "T4": {
    _display setVariable ["page","sys"];
  };
  case "R4": {
    [_display getVariable "displayVariable", "targetAlt", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "R5": {
    [_display getVariable "displayVariable", "targetHdg", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    switch(_variable) do {
      case "targetAlt": {
        ITC_AP_TargetAlt = _value;
        itc_air_ap_apman = true;
        // [ITC_AP_TargetAlt, ITC_AP_TargetHdg] remoteExec ["itc_air_autopilot_fnc_update", (crew _vehicle), false];
        // Todo: send update ALT/HDG to crews
      };
      case "targetHdg": {
        ITC_AP_TargetHdg = _value;
        itc_air_ap_apman = true;
        // [ITC_AP_TargetAlt, ITC_AP_TargetHdg] remoteExec ["itc_air_autopilot_fnc_update", (crew _vehicle), false];
      };
    };
  };
};
false
