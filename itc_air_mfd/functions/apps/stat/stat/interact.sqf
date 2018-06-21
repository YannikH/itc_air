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
  case "T4": {
    _display setVariable ["page","sys"];
  };
  case "L1" : {
    _index = (_index - 1) max 0;
    _list lbSetCurSel _index;
  };
  case "L2": {
    _index = (_index + 1) min ((count _name) - 1);
    _list lbSetCurSel _index;
  };
};
false
