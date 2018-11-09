params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
(_btn splitString "") params ["_side", "_num"];
switch(_btn) do {
  case "L1": {
    if(!itc_air_wpt_tcn_on) then {
      [] call itc_air_wpt_fnc_tacanStart;
    } else {
      itc_air_wpt_tcn_on = false;
    };
  };
  case "T3": {
    _display setVariable ["page","stat"];
  };
  case "T4": {
    _display setVariable ["page","sys"];
  };
  /*
  case "R4": {
    [_display getVariable "displayVariable", "targetAlt", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "R5": {
    [_display getVariable "displayVariable", "targetHdg", true] call itc_air_ufc_fnc_prepareInput;
  };
  */
  case "R1": {
    ITC_AIR_UFC_CTXT_PAGE = "STATNAV";
    ITC_AIR_UFC_CTXT_COLUMNS_BTN = ["TCN-CSEL","","","","TCN-FREQ","","",""];
    ITC_AIR_UFC_CTXT_COLUMNS_TXT = ["","","","","","","",""];

    private _tacanCSEL = {[nil, "itc_air_wpt_tacanCSEL", true, itc_air_wpt_fnc_tacanSetup] call itc_air_ufc_fnc_prepareInput;};
    private _tacanCDE = {[nil, "itc_air_wpt_tacanCDE", true, itc_air_wpt_fnc_tacanSetup] call itc_air_ufc_fnc_prepareInput;};

    ITC_AIR_UFC_CTXT_COLUMNS_FNC = [_tacanCSEL,{},{},{},_tacanCDE,{},{},{}];

    if ("AP-MAN" in ((vehicle player) getVariable "itc_air_systems")) then {
      //(_display displayCtrl R4) ctrlSetText format["%1m", round ITC_AP_TargetAlt];
      ITC_AIR_UFC_CTXT_COLUMNS_BTN set [5,"AP-ALT"];
      ITC_AIR_UFC_CTXT_COLUMNS_TXT set [5,""];
      ITC_AIR_UFC_CTXT_COLUMNS_FNC set [5, {[nil, "ITC_AP_TargetAlt", true, itc_air_autopilot_fnc_ufcInput] call itc_air_ufc_fnc_prepareInput;}];
      ITC_AIR_UFC_CTXT_COLUMNS_BTN set [1,"AP-HSEL"];
      ITC_AIR_UFC_CTXT_COLUMNS_TXT set [1,""];
      ITC_AIR_UFC_CTXT_COLUMNS_FNC set [1, {[nil, "ITC_AP_TargetHdg", true, itc_air_autopilot_fnc_ufcInput] call itc_air_ufc_fnc_prepareInput;}];
    };


  };
  /*
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
  */
};
false
