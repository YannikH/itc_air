params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10200) ctrlShow true;

(_display displayCtrl T2) ctrlSetText "NAV";
(_display displayCtrl T3) ctrlSetText "DAM";
(_display displayCtrl T4) ctrlSetText "SYS";
invertText(_display,T3);

_list lbSetCurSel 0;
