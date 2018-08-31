params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10200) ctrlShow true;

(_display displayCtrl T2) ctrlSetText "NAV";
(_display displayCtrl T3) ctrlSetText "DAM";
(_display displayCtrl T4) ctrlSetText "SYS";
invertText(_display,T4);

_plane = vehicle player;
private _systems = _plane getVariable "itc_air_systems";
private _systemsAct = _plane getVariable "itc_air_systems_active";
private _systemsAll = _plane getVariable "itc_air_systems_available";
_list = (_display displayCtrl 21500);
lbClear _list;
for "_i" from 0 to (count _systems - 1) step 1 do {
  _index = _list lbAdd (_systems # _i);
  if(_systems # _i in _systemsAct) then {
    _list lbSetTextRight [_index, "ACTIVE"];
  } else {
    if(_systems # _i in _systemsAll) then {
      _list lbSetTextRight [_index, "OFF"];
    };
  };
};
_list lbSetCurSel 0;
(_display displayCtrl L12) ctrlSetText (_name # 0);

if(_systems # 0 in _systemsAct) then {
  (_display displayCtrl R1) ctrlSetText "";
  (_display displayCtrl R12) ctrlSetText "SYS";
  (_display displayCtrl R2) ctrlSetText "STOP";
} else {
  if(_systems # 0 in _systemsAll) then {
    (_display displayCtrl R1) ctrlSetText "START";
    (_display displayCtrl R2) ctrlSetText "";
  } else {
    (_display displayCtrl R1) ctrlSetText "";
    (_display displayCtrl R2) ctrlSetText "";
  };
};
