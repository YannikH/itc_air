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
        [_display getVariable "displayVariable", "option", _dataVar] call itc_air_ufc_fnc_prepareInput;
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
    params ["_display", "_btn", "_variable", "_newValue"];
    private _optionsSet = (_options # _lbIndex);
    _optionsSet params ["_namespace","_key","_value","_label","_onChange","_dataType","_dataInfo","_dataVar"];
    if(_newValue call _dataInfo) then {
      _optionsSet set [2, _newValue];
      _options set [_lbIndex, _optionsSet];
      _namespace setVariable [_key, _newValue];
      if(!isNil {_onChange}) then {
        [_newValue] call _onChange;
      };
    };
  };
};
_plane setVariable ["itc_air_options",_options];

_list lbSetCurSel _lbIndex;

false
