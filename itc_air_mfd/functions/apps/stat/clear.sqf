params ["_display"];
#include "..\..\mfdDefines.hpp"
{
  (_display displayCtrl _x) ctrlShow false;
} forEach [10200,10201];

resetText(_display,T2);
resetText(_display,T3);
resetText(_display,T4);
