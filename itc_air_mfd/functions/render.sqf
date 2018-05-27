params ["_display"];
#include "mfdDefines.hpp"
private _apps = ["TGP","DSMS","STAT","TAD","CLR"];
for "_i" from 0 to 4 do {
  (_display displayCtrl (B1 + _i)) ctrlSetText "TGP";
  _color = if(_apps # _i == _display getVariable "app") then [{[0,0,0,1]},{[0,1,0,1]}];
  _backgroundColor = if(_apps # _i == _display getVariable "app") then [{[0,1,0,1]},{[0,0,0,1]}];
  (_display displayCtrl (B1 + _i)) ctrlSetTextColor _color;
  (_display displayCtrl (B1 + _i)) ctrlSetBackgroundColor _backgroundColor;
};
(_display displayCtrl B1) ctrlSetText "TGP";
(_display displayCtrl B2) ctrlSetText "DSMS";
(_display displayCtrl B3) ctrlSetText "STAT";
(_display displayCtrl B4) ctrlSetText "TAD";
(_display displayCtrl B5) ctrlSetText "LST";

((vehicle player) call BIS_fnc_getPitchBank) params ["_pitch","_bank"];
(_display displayCtrl pbll) ctrlSetAngle [(-1 * _bank) + (1 * _pitch), 0.5, 0.5];
(_display displayCtrl pblr) ctrlSetAngle [(-1 * _bank) + (1 *_pitch * -1), 0.5, 0.5];
(_display displayCtrl pblc1) ctrlSetAngle [(-1 * _bank), 0.5, 0.5];
(_display displayCtrl pblc2) ctrlSetAngle [(-1 * _bank) + (45 + _pitch), 0.5, 0.5];
(_display displayCtrl pblc3) ctrlSetAngle [(-1 * _bank) + (-45 + _pitch * -1), 0.5, 0.5];

(_display displayCtrl 1028) ctrlShow (_bank > 75 || _bank < -75 || _pitch > 20 || _pitch < -20);
/*
(_display displayCtrl pbll) ctrlShow false;
(_display displayCtrl pblr) ctrlShow false;
(_display displayCtrl pblc1) ctrlShow false;
(_display displayCtrl pblc2) ctrlShow false;
(_display displayCtrl pblc3) ctrlShow true;
*/
