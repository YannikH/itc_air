params ["_display"];
(_display displayCtrl 10400) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"

(_display displayCtrl T2) ctrlSetText "FLT";
(_display displayCtrl T3) ctrlSetText "MSN";
(_display displayCtrl T4) ctrlSetText "MRK";

invertText(_display,T3);

(_display displayCtrl L23) ctrlSetText "MDAGR";
(_display displayCtrl L3) ctrlSetText "IMPRT";

(_display displayCtrl L4) ctrlSetText "DEL";
(_display displayCtrl L5) ctrlSetText "NEW";
(_display displayCtrl R1) ctrlSetText "MGRS";
(_display displayCtrl R12) ctrlSetText "CHG";
(_display displayCtrl R2) ctrlSetText "EL";

(_display displayCtrl R3) ctrlSetText "UP";
(_display displayCtrl R34) ctrlSetText "ORD";
(_display displayCtrl R4) ctrlSetText "DN";

(_display displayCtrl R45) ctrlSetText "TO";
(_display displayCtrl R5) ctrlSetText "PLAN";
