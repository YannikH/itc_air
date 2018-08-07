params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 12000) ctrlShow true;
(_display displayCtrl L1) ctrlSetText "GA";
(_display displayCtrl T3) ctrlSetText "EXP";
(_display displayCtrl T4) ctrlSetText "CHAN 1";
(_display displayCtrl L3) ctrlSetText "STRP";

(_display displayCtrl L34) ctrlSetText "AP";
(_display displayCtrl L4) ctrlSetText "ON";
invertText(_display,L34);
invertText(_display,L4);
itc_air_lmav_draw_x = 0.125;
itc_air_lmav_draw_dir = 1;
if(isNil{vehicle player getVariable "itc_air_lmav_code"}) then {
  vehicle player setVariable ["itc_air_lmav_code",1111];
};
