params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
_plane = vehicle player;
_allDamage = getAllHitPointsDamage _plane;
_allDamage params ["", "_name", "_status"];
_list = (_display displayCtrl 21500);
_index = lbCurSel _list;
switch(_btn) do {
  case "T2": {
    _display setVariable ["page","nav"];
  };
  case "L1" : {
    _index = (_index - 1) max 0;
    _list lbSetCurSel _index;
    (_display displayCtrl L12) ctrlSetText ([_name # _index, 3] call BIS_fnc_trimString);
  };
  case "L2": {
    _index = (_index + 1) min ((count _name) - 1);
    _list lbSetCurSel _index;
    (_display displayCtrl L12) ctrlSetText ([_name # _index, 3] call BIS_fnc_trimString);
  };
};
false
