params ["_display"];
#include "..\..\mfdDefines.hpp"

itc_air_ownship_icon = if(vehicle player isKindOf "Helicopter_Base_F") then [{"itc_air_mfd\data\UI\helo32.paa"},{"itc_air_mfd\data\UI\PLN_MFD.paa"}];

_display setVariable ["sensor","tad"];
"tadmap"
