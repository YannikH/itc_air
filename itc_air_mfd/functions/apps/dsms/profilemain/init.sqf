params ["_display"];
(_display displayCtrl 10101) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"

(_display displayCtrl L12) ctrlSetText "NAME";
//(_display displayCtrl R12) ctrlSetText "MOVE";
(_display displayCtrl T1) ctrlSetText "STAT";

//(_display displayCtrl T3) ctrlSetText "VIEW";


_plane = vehicle player;
_list = (_display displayCtrl 111500);
_profiles = _plane getVariable "profiles";
lbClear _list;
_list lbSetCurSel -1;
for "_i" from 0 to (count _profiles - 1) step 1 do {
  (_profiles # _i) params ["_weapon","_settings"];
  _weapon params ["_weaponClass","_ammoName","_profileName","_hardpoint","_type","_show"];
  if(_show) then {
    _index = _list lbAdd _profileName;
    _list lbSetTextRight [_index,format ["%1         ",_profileName]];
    if(currentWeapon _plane == _weaponClass) then {
      _list lbSetCursel _index;
    };
  };
};

_lbIndex = lbCurSel _list;
_lbIndex = if(_lbIndex == -1) then [{0},{_lbIndex}];
_display setVariable ["profile_listSelected", (_list lbText _lbIndex)];
(_display displayCtrl L12) ctrlSetText (_list lbText _lbIndex);
