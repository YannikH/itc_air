params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
_plane = vehicle player;
private _systems = _plane getVariable "itc_air_systems";
private _systemsAct = _plane getVariable "itc_air_systems_active";
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
  case "R2": {
    if(_systems # _index in _systemsAct) then {
      private _sys = _systems # _index;
      private _shutDownFuncName = format["itc_air_%1_fnc_shutDown",toLower _sys];
      private _setupFuncName = format["itc_air_%1_fnc_setup",toLower _sys];
      private _shutDownFunc = (missionNamespace getVariable _shutDownFuncName);
      private _setupFunc = (missionNamespace getVariable _setupFuncName);
      if(!isNil {_shutDownFunc}) then {
        [_plane] call _shutDownFunc;
      };
      [_plane] call _setupFunc;
    };
  };
};
if(_systems # _index in _systemsAct) then {
  (_display displayCtrl R12) ctrlSetText "SYS";
  (_display displayCtrl R2) ctrlSetText "RESET";
} else {
  (_display displayCtrl R12) ctrlSetText "";
  (_display displayCtrl R2) ctrlSetText "";
};
false
