params ["_display"];
#include "mfdDefines.hpp"
private _apps = (_display getVariable "shortCuts") + ["LST"];
for "_i" from 0 to 4 do {
  (_display displayCtrl (B1 + _i)) ctrlSetText "TGP";
  _color = if(_apps # _i == _display getVariable "app") then [{[0,0,0,1]},{[0,1,0,1]}];
  _backgroundColor = if(_apps # _i == _display getVariable "app") then [{[0,1,0,1]},{[0,0,0,1]}];
  (_display displayCtrl (B1 + _i)) ctrlSetTextColor _color;
  (_display displayCtrl (B1 + _i)) ctrlSetBackgroundColor _backgroundColor;
};
for "_i" from 0 to 3 step 1 do {
    (_display displayCtrl B1 + _i) ctrlSetText ((_display getVariable "shortCuts") # _i);
};

(_display displayCtrl B5) ctrlSetText "LST";

((vehicle player) call BIS_fnc_getPitchBank) params ["_pitch","_bank"];
(_display displayCtrl pbll) ctrlSetAngle [(-1 * _bank) + (-1 * _pitch), 0.5, 0.5];
(_display displayCtrl pblr) ctrlSetAngle [(-1 * _bank) + (1 *_pitch), 0.5, 0.5];
(_display displayCtrl pblc1) ctrlSetAngle [(-1 * _bank), 0.5, 0.5];
(_display displayCtrl pblc2) ctrlSetAngle [(-1 * _bank) + (45 + (-1 * _pitch)), 0.5, 0.5];
(_display displayCtrl pblc3) ctrlSetAngle [(-1 * _bank) + (-45 + _pitch), 0.5, 0.5];

(_display displayCtrl 1028) ctrlShow (_bank > 75 || _bank < -75 || _pitch > 20 || _pitch < -20);
