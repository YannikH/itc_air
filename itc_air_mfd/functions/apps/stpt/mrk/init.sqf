params ["_display"];
(_display displayCtrl 10400) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"

(_display displayCtrl T2) ctrlSetText "FLT";
(_display displayCtrl T3) ctrlSetText "MSN";
(_display displayCtrl T4) ctrlSetText "MRK";

invertText(_display,T4);

(_display displayCtrl L34) ctrlSetText "WPT";
(_display displayCtrl L4) ctrlSetText "SAVE";
