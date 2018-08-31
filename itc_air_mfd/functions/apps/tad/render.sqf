params ["_display", "_btn"];
#include "..\..\mfdDefines.hpp"

(_display displayCtrl 61010) ctrlSetText (ITC_AIR_TAD_HOOKMODES # ITC_AIR_TAD_HOOKMODE) # 0;
(_display displayCtrl 61011) ctrlSetText (ITC_AIR_TAD_HOOKMODES # ITC_AIR_TAD_HOOKMODE) # 1;
