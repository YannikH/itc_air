params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10700) ctrlShow true;
(_display displayCtrl L1) ctrlSetText "CODE";
(_display displayCtrl T1) ctrlSetText "LMAV";
(_display displayCtrl T5) ctrlSetText "MAV";
invertText(_display,T1);
itc_air_lmav_draw_x = 0.125;
itc_air_lmav_draw_dir = 1;
if(isNil{vehicle player getVariable "itc_air_lmav_code"}) then {
  vehicle player setVariable ["itc_air_lmav_code",1111];
};
