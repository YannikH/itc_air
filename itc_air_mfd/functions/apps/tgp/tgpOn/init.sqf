params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10300) ctrlShow true;

if(isNil{_display getVariable "feed_camera"}) then {
  _cam = [_display, "MFD_FEED"] call itc_air_tgp_fnc_create_camera;
  _display setVariable ["feed_camera", _cam];
  //player sideChat str ITC_AIR_MFD_CAMS;
};

(_display displayCtrl L1) ctrlSetText "OFF";
(_display displayCtrl L12) ctrlSetText "LSS";

(_display displayCtrl L3) ctrlSetText "OFF";
(_display displayCtrl L34) ctrlSetText "L";

(_display displayCtrl L45) ctrlSetText "SLEW";
(_display displayCtrl L5) ctrlSetText "5";

(_display displayCtrl R1) ctrlSetText "OFF";
(_display displayCtrl R12) ctrlSetText "MRK";
(_display displayCtrl R2) ctrlSetText "0 Hz";

(_display displayCtrl R3) ctrlSetText "+";
(_display displayCtrl R34) ctrlSetText "FOV";
(_display displayCtrl R4) ctrlSetText "-";

(_display displayCtrl T3) ctrlSetText "FWD";

//SYSACT(OL1);
//DATA(OL2);
//SYSACT(OL3);
//DATA(OL4);
//ROTARY(OL5);
//SYSACT(OR1);
//ROTARY(OR2);
//SYSACT(OR3);
//SYSACT(OR4);
//SYSACT(ORt);

//(_display displayCtrl 32201) ctrlShow false;
(_display displayCtrl 32202) ctrlShow false;
(_display displayCtrl 32203) ctrlShow false;
(_display displayCtrl 32204) ctrlShow false;
(_display displayCtrl 32205) ctrlShow false;
