params ["_display"];
#include "..\..\mfdDefines.hpp"
REQUIRE("TAD");
itc_air_ownship_icon = if(vehicle player isKindOf "Helicopter_Base_F") then [{"itc_air_mfd\data\UI\PLN_MFD.paa"},{"itc_air_mfd\data\UI\PLN_MFD.paa"}];

_display setVariable ["sensor","tad"];
"tadmap"
