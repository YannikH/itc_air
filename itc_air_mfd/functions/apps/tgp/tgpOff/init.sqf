params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10300) ctrlShow true;
(_display displayCtrl T2) ctrlSetText "ON";

(_display displayCtrl R1) ctrlSetText "LSS";
(_display displayCtrl R2) ctrlSetText "MRK";
(_display displayCtrl R3) ctrlSetText "0 Hz";

(_display displayCtrl 32201) ctrlShow false;
(_display displayCtrl 32202) ctrlShow false;
(_display displayCtrl 32203) ctrlShow false;
(_display displayCtrl 32204) ctrlShow false;
(_display displayCtrl 32205) ctrlShow false;
