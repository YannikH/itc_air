params ["_display"];
#include "..\..\..\mfdDefines.hpp"
_vehicle = vehicle player;
//(_display displayCtrl 211000) ctrlSetText (_vehicle getVariable "stpt_name");


(_display displayCtrl L4) ctrlSetText format["%1FT",round (3.28084 * ((getPosASL _vehicle) # 2))];
(_display displayCtrl L5) ctrlSetText format["%1M",round ((getPosASL _vehicle) # 2)];

_northDir = 360 - (getDir _vehicle);
(_display displayCtrl 211201) ctrlSetAngle [_northDir, 0.5, 0.5];
(_display displayCtrl 211000) ctrlSetText format["HDG %1", round (getDir _vehicle)];
(_display displayCtrl 211001) ctrlSetText format["%1 KTS", round ((speed _vehicle) * 0.539957)];

if((_vehicle getVariable "stpt_name") != "NO WP") then {
  _dir = _vehicle getRelDir (_vehicle getVariable "stpt_pos");
  (_display displayCtrl 211202) ctrlSetAngle [_dir, 0.5, 0.5];

  (_display displayCtrl R1) ctrlSetText format["%1m",round (_vehicle distance (_vehicle getVariable "stpt_pos"))];
  (_display displayCtrl R12) ctrlSetText (_vehicle getVariable "stpt_name");
  (_display displayCtrl R2) ctrlSetText (_vehicle getVariable "stpt_tof");
};

(_display displayCtrl L1) ctrlSetText format["%1%2",round ((fuel _vehicle) * 100),"%"];
(_display displayCtrl L12) ctrlSetText "FUEL";
(_display displayCtrl L2) ctrlSetText format["%1 min",_vehicle getVariable "playtime"];
