params ["_display"];
#include "..\..\mfdDefines.hpp"
{
  (_display displayCtrl _x) ctrlShow false;
} forEach [10700,10701,10702];

resetText(_display,T1);
resetText(_display,T5);
