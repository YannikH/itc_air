params ["_display"];
#include "..\..\..\mfdDefines.hpp"

private _apps = _display getVariable "apps";
private _textFields = [0,1,4,6,8,9,11,13,15,17];

for "_i" from 0 to (((count _apps) - 1) min 9) step 1 do {
  (_display displayCtrl (1000 + (_textFields # _i))) ctrlSetText (_apps # _i);
};


//(_display displayCtrl L5) ctrlSetText "STPT";
//(_display displayCtrl L5) ctrlSetText "MSG";

//(_display displayCtrl R4) ctrlSetText "MAV";
//(_display displayCtrl R5) ctrlSetText "OPT";
