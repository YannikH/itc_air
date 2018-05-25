params ["_display"];
(_display displayCtrl 10103) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"
#include "..\dsmsMacros.hpp"

_plane = vehicle player;

(_display displayCtrl T2) ctrlSetText "CLR";
(_display displayCtrl 131024) ctrlSetText "";
(_display displayCtrl T3) ctrlSetText "GUN";
(_display displayCtrl 131025) ctrlSetText (((_plane getVariable "profiles") # (_plane getVariable "gunProfile")) # 0 # 1);
(_display displayCtrl T4) ctrlSetText "STAT";
(_display displayCtrl 131026) ctrlSetText "";

_list = (_display displayCtrl 131500);
_baseInventory = _plane getVariable "baseInventory";
lbClear _list;
for "_i" from 0 to (count _baseInventory - 1) step 1 do {
  _hardpoint = _baseInventory # _i;
  _index = _list lbAdd (_hardpoint # 1);
};
_list lbSetCurSel 0;

_inventory = _plane getVariable "inventory";
_textFields = [0,1,4,6,8,9,11,13,15,17];
for "_i" from 0 to (((count _inventory) - 1) min 9) step 1 do {
  _hardpoint = _inventory # _i;
  (_display displayCtrl (1000 + (_textFields # _i))) ctrlSetText (_hardpoint # 1) + "[" + (str (_hardpoint # 0)) + "]";
};
