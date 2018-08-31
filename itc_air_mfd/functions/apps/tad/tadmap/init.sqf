params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10600) ctrlShow true;
(_display displayCtrl 61500) ctrlShow true;
(_display displayCtrl 2200) ctrlShow false;

(_display displayCtrl L12) ctrlSetText "MAP";
(_display displayCtrl 2200) ctrlShow !itc_air_tad_map_on;


(_display displayCtrl L4) ctrlSetText "MRK";
