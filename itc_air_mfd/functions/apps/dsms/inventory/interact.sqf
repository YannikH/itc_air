params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];

_plane = vehicle player;
_list = (_display displayCtrl 131500);
_index = lbCursel _list;
private _baseInventory = _plane getVariable "baseInventory";
private _inventory = _plane getVariable "inventory";

switch(_btn) do {
  case "T1": {
    _list lbSetCurSel ((_index - 1) max 0);
  };
  case "T2": {
    _list lbSetCurSel -1;
  };
  case "T4": {
    _display setVariable ["page", "dsms_status"];
  };
  case "T5": {
    _list lbSetCurSel ((_index + 1) min (count _baseInventory - 1));
  };
  default {
    if(_side == "R" || _side == "L") then {
      _baseIndex = if(_side == "L") then [{-1},{4}];
      private _inventoryIndex = _baseIndex + (parseNumber _num);
      private _baseItem = if(_index > -1) then [{_baseInventory # _index}, {[-1,"",""]}];
      _inventory set [_inventoryIndex, _baseItem];
    };
    if(_btn == "T3") then {
      _gunProfileIndex = (_plane getVariable "gunProfile");
      _profiles = _plane getVariable "profiles";
      _nextIndex = if(_gunProfileIndex + 1 == count _profiles) then [{0}, {_gunProfileIndex + 1}];
      (_display displayCtrl 131025) ctrlSetText ((_profiles # _nextIndex) # 0 # 1);
      _plane setVariable ["gunProfile", _nextIndex];
    };
    [] call itc_air_dsms_fnc_weaponChanged;
  };
};

_textFields = [0,1,4,6,8,9,11,13,15,17];
for "_i" from 0 to (((count _inventory) - 1) min 9) step 1 do {
  _hardpoint = _inventory # _i;
  (_display displayCtrl (1000 + (_textFields # _i))) ctrlSetText (_hardpoint # 1) + "[" + (str (_hardpoint # 0)) + "]";
};

false
