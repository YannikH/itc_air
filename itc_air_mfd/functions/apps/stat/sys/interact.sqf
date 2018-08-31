params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
_plane = vehicle player;
private _systems = _plane getVariable "itc_air_systems";
private _systemsAct = _plane getVariable "itc_air_systems_active";
private _systemsAll = _plane getVariable "itc_air_systems_available";
_list = (_display displayCtrl 21500);
_index = lbCurSel _list;
switch(_btn) do {
  case "T2": {
    _display setVariable ["page","nav"];
  };
  case "T3": {
    _display setVariable ["page","stat"];
  };
  case "L1" : {
    _index = (_index - 1) max 0;
    _list lbSetCurSel _index;
  };
  case "L2": {
    _index = (_index + 1) min ((count _systems) - 1);
    _list lbSetCurSel _index;
  };
  case "R1": {
    if(_systems # _index in _systems) then {
      private _sys = _systems # _index;
      [(vehicle player), _sys] call itc_air_common_fnc_systemStart;
    };
  };
  case "R2": {
    if(_systems # _index in _systems) then {
      private _sys = _systems # _index;
      [(vehicle player), _sys] call itc_air_common_fnc_systemStop;
    };
  };
};

if(_systems # _index in (_plane getVariable "itc_air_systems_active")) then {
  (_display displayCtrl R1) ctrlSetText "";
  _list lbSetTextRight [_index, "ACTIVE"];
  (_display displayCtrl R12) ctrlSetText "SYS";
  (_display displayCtrl R2) ctrlSetText "STOP";
} else {
  if(_systems # _index in _systemsAll) then {
    (_display displayCtrl R1) ctrlSetText "START";
    _list lbSetTextRight [_index, "OFF"];
    (_display displayCtrl R2) ctrlSetText "";
  } else {
    (_display displayCtrl R1) ctrlSetText "";
    (_display displayCtrl R2) ctrlSetText "";
  };
};
false
