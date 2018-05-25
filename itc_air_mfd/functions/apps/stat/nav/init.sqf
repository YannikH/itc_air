params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10201) ctrlShow true;

(_display displayCtrl T2) ctrlSetText "NAV";
invertText(_display,T2);
(_display displayCtrl T3) ctrlSetText "DAM";

(_display displayCtrl 211201) ctrlShow false;
(_display displayCtrl 211000) ctrlShow false;
