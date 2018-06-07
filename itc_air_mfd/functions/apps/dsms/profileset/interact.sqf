params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
#include "..\dsmsMacros.hpp"
PROFILELOAD(PROFILEEDITNAME);
(_btn splitString "") params ["_side", "_num"];
_profileOptionsIndex = _display getVariable "profileOptionIndex";
switch(_btn) do {
  case "T1": {
    _display setVariable ["page", "dsms_status"];
  };
  case "T2": {
    _display setVariable ["page", "profilemain"];
  };
  case "L2": {
    _profileOptionsIndex = (_profileOptionsIndex - 1) max 0;
  };
  case "L4": {
    (_profileOptions # _profileOptionsIndex) params ["_key","_value","_label", "_dataType","_dataOptions"];
    switch(_dataType) do {
      case "UFC": {
        [_display getVariable "displayVariable", "profile", true] call itc_air_ufc_fnc_prepareInput;
      };
      case "cycle": {
        _value = CYCLEVALUE(_dataOptions,_value);
      };
      case "STPT": {
        _value = vehicle player getVariable "stpt_name";
        _dataOptions = vehicle player getVariable "stpt_pos";
      };
    };
    _profileOptions set [_profileOptionsIndex, [_key, _value, _label, _dataType, _dataOptions]];
  };
  case "L5": {
    _profileOptionsIndex = (_profileOptionsIndex + 1) min ((count _profileOptions) - 1);
  };
  case "R2": {
    _modes = ["SGL","PRS","RIP SGL", "RIP PRS"];
    _rip_mode = CYCLEVALUE(_modes,_rip_mode);
    _releaseSettings set [1, _rip_mode];
    (_display displayCtrl R2) ctrlSetText _rip_mode;
  };
  case "R3": {
    [_display getVariable "displayVariable", "qty", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "R4": {
    [_display getVariable "displayVariable", "dist", true] call itc_air_ufc_fnc_prepareInput;
  };
  case "R5": {
    _modes = ["CCIP","CCRP"];
    _release_mode = CYCLEVALUE(_modes,_release_mode);
    _releaseSettings set [0, _release_mode];
    (_display displayCtrl 121007) ctrlSetText _release_mode;
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    switch(_variable) do {
      case "qty": {
        _releaseSettings set [2, _value];
        (_display displayCtrl 121003) ctrlSetText str _value;
      };
      case "dist": {
        _releaseSettings set [3, _value];
        (_display displayCtrl 121005) ctrlSetText str _value;
      };
      case "profile": {
        _profile = (_profileOptions # _profileOptionsIndex);
        _profile set [1, str _value];
        _profileOptions set [_profileOptionsIndex, _profile];
      };
    };
  };
};
_display setVariable ["profileOptionIndex", _profileOptionsIndex];
if(_side in ["L","R","U"]) then {
  [] call itc_air_dsms_fnc_weaponChanged;
};
if(count _profileOptions > 0) then {
  //player sideChat format["optionsPrint %1 ",_profileOptionsIndex];
  (_profileOptions # _profileOptionsIndex) params ["_key","_value","_label", "_dataType"];
  (_display displayCtrl 121010) ctrlSetText "SEL";
  (_display displayCtrl 121011) ctrlSetText _label;
  (_display displayCtrl 121012) ctrlSetText "VAL";
  (_display displayCtrl 121013) ctrlSetText _value;

  _text = "";
  {
    _x params ["_key","_value","_label"];
    _text = _text + "<t color='#00ff00' align='left'>" + _label + ":</t>";
    _text = _text + "<t color='#00ff00' align='right'>" + _value + "</t>";
    _text = _text + "<br/>";
  }forEach _profileOptions;
  (_display displayCtrl 121100) ctrlSetStructuredText parseText _text;
};
PROFILESAVE;
false
