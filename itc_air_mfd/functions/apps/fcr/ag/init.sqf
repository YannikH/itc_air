params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10800) ctrlShow true;
(_display displayCtrl T4) ctrlSetText "SP";
(_display displayCtrl T5) ctrlSetText "FZ";

(_display displayCtrl T1) ctrlSetText "A-G";
invertText(_display,T1);
