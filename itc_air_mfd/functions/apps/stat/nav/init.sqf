params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10201) ctrlShow true;

(_display displayCtrl T2) ctrlSetText "NAV";
invertText(_display,T2);
(_display displayCtrl T3) ctrlSetText "DAM";
(_display displayCtrl T4) ctrlSetText "SYS";

(_display displayCtrl L1) ctrlSetText "TCN";

(_display displayCtrl L45) ctrlSetText "ALT MSL";
(_display displayCtrl R45) ctrlSetText "FUEL";

(_display displayCtrl R1) ctrlSetText "UFC";


private _map = _display displayCtrl 61500;
_map ctrlShow true;

_map ctrlMapAnimAdd [0, 1, [0,0,0]];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;

//(_display displayCtrl 211201) ctrlShow false;
//(_display displayCtrl 211202) ctrlShow false;
