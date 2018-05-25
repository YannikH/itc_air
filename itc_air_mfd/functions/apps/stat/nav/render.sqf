params ["_display"];
#include "..\..\..\mfdDefines.hpp"
_vehicle = vehicle player;
//(_display displayCtrl 211000) ctrlSetText (_vehicle getVariable "stpt_name");

_width = _display getVariable "width";
_height = _display getVariable "height";
_center = _display getVariable "center";
_centerX = (_center # 0) - (0.02 * 0.9);
_centerY = (_center # 1) - (0.02 * 0.9);
_distX = _width / 4;
_distY = _height / 4;
_northDir = 360 - (getDir _vehicle);
(_display displayCtrl 211202) ctrlSetAngle [_northDir, 0.5, 0.5];
(_display displayCtrl 211202) ctrlSetPosition [_centerX + ((sin _northDir) * _distX), _centerY - ((cos _northDir) * _distY)];
(_display displayCtrl 211202) ctrlCommit 0;

(_display displayCtrl 211001) ctrlSetAngle [_northDir, 0.5, 0.5];
(_display displayCtrl 211001) ctrlSetPosition [_centerX + ((sin _northDir) * (_distX - 0.03)), _centerY - ((cos _northDir) * (_distY - 0.03))];
(_display displayCtrl 211001) ctrlCommit 0;

if((_vehicle getVariable "stpt_name") != "NO WP") then {
  _dir = _vehicle getRelDir (_vehicle getVariable "stpt_pos");
  (_display displayCtrl 211203) ctrlSetAngle [_dir, 0.5, 0.5];
  (_display displayCtrl 211203) ctrlSetPosition [_centerX + ((sin _dir) * _distX), _centerY - ((cos _dir) * _distY)];
  (_display displayCtrl 211203) ctrlCommit 0;

  (_display displayCtrl 211002) ctrlSetAngle [_dir, 0.5, 0.5];
  (_display displayCtrl 211002) ctrlSetPosition [_centerX + ((sin _dir) * (_distX - 0.03)), _centerY - ((cos _dir) * (_distY - 0.03))];
  (_display displayCtrl 211002) ctrlCommit 0;

  (_display displayCtrl R1) ctrlSetText format["%1m",round (_vehicle distance (_vehicle getVariable "stpt_pos"))];
  (_display displayCtrl R12) ctrlSetText (_vehicle getVariable "stpt_name");
  (_display displayCtrl R2) ctrlSetText (_vehicle getVariable "stpt_tof");
};

(_display displayCtrl L1) ctrlSetText format["%1%2",round ((fuel _vehicle) * 100),"%"];
(_display displayCtrl L12) ctrlSetText "FUEL";
(_display displayCtrl L2) ctrlSetText format["%1 min",_vehicle getVariable "playtime"];
