params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10200) ctrlShow true;

(_display displayCtrl T2) ctrlSetText "NAV";
(_display displayCtrl T3) ctrlSetText "DAM";
invertText(_display,T3);

_plane = vehicle player;
_allDamage = getAllHitPointsDamage _plane;
_allDamage params ["", "_name", "_status"];
_list = (_display displayCtrl 21500);
lbClear _list;
for "_i" from 0 to (count _name - 1) step 1 do {
  _stat = "OK";
  if(_status # _i > 0) then {_col = "ff7f00"; _stat = "DAM";};
  if(_status # _i > 0.5) then {_col = "ff0000"; _stat = "FAIL";};
  _index = _list lbAdd ([_name # _i, 3] call BIS_fnc_trimString);
};
_list lbSetCurSel 0;
(_display displayCtrl L12) ctrlSetText (_name # 0);
