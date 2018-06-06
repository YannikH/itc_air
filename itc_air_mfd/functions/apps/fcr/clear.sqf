params ["_display"];
#include "..\..\mfdDefines.hpp"
{
  (_display displayCtrl _x) ctrlShow false;
} forEach [10800];

resetText(_display,T1);
resetText(_display,T4);
resetText(_display,T5);
