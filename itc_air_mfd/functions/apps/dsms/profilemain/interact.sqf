params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
(_btn splitString "") params ["_side", "_num"];
_plane = vehicle player;
_list = (_display displayCtrl 111500);
_lbIndex = lbCurSel _list;
_profiles = _plane getVariable "profiles";
switch(_btn) do {
  case "T1": {
    _display setVariable ["page", "dsms_status"];
  };
  case "R4": {
    _display setVariable ["page", "profileset"];
  };
  case "L1": {
    _lbIndex = _lbIndex - 1;
    _list lbSetCursel _lbIndex;
    (_display displayCtrl L12) ctrlSetText (_list lbText _lbIndex);
    _display setVariable ["profile_listSelected", (_list lbText _lbIndex)];
  };
  case "L2": {
    _lbIndex = _lbIndex + 1;
    _list lbSetCursel _lbIndex;
    (_display displayCtrl L12) ctrlSetText (_list lbText _lbIndex);
    _display setVariable ["profile_listSelected", (_list lbText _lbIndex)];
  };
};
false
