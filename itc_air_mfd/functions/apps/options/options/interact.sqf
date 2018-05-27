params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
#include "..\..\dsms\dsmsMacros.hpp"
(_btn splitString "") params ["_side", "_num"];
_plane = vehicle player;
_options = _plane getVariable "itc_air_options";
if(count _options == 0) exitWith {false};
_list = (_display displayCtrl 51500);
_lbIndex = lbCurSel _list;
switch(_btn) do {
  case "L2": {
    _lbIndex = (_lbIndex - 1) max 0;
    _list lbSetCursel _lbIndex;
  };
  case "L4": {
    (_options # _lbIndex) params ["_namespace","_key","_value","_label","_onChange","_dataType","_dataInfo","_dataVar"];
    switch(_dataType) do {
      case "UFC": {
        [_display getVariable "displayVariable", "profile", _dataVar] call itc_air_ufc_fnc_prepareInput;
      };
      case "cycle": {
        _value = CYCLEVALUE(_dataInfo,_value);
        _namespace setVariable [_key, _value];
        if(!isNil {_onChange}) then {
          [_value] call _onChange;
        };
      };
    };
    (_options # _lbIndex) set [2, _value];
  };
  case "L5": {
    _lbIndex = (_lbIndex + 1) min ((count _options) - 1);
    _list lbSetCursel _lbIndex;
  };
  case "UFC": {
    params ["_display", "_btn", "_variable", "_value"];
    _optionsSet = (_options # _lbIndex);
    if(_value call (_optionsSet # 6)) then {
      _optionsSet set [2, _value];
      _options set [_lbIndex, _optionsSet];
      _namespace setVariable [_key, _value];
      if(!isNil {_onChange}) then {
        [_value] call _onChange;
      };
    };
  };
};
_plane setVariable ["itc_air_options",_options];


lbClear _list;
for "_i" from 0 to (count _options - 1) step 1 do {
  (_options # _i) params ["_namespace","_key","_value","_label","_onChange","_dataType","_dataInfo","_dataVar"];
  _index = _list lbAdd _label;
  _list lbSetTextRight [_index,format["%1",_value]];
};
_list lbSetCurSel _lbIndex;
if(_lbIndex > -1) then {
  (_display displayCtrl 51011) ctrlSetText format["%1", _options # _lbIndex # 3];
  (_display displayCtrl 51013) ctrlSetText format["%1", _options # _lbIndex # 2];
};

false
