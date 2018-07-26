params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl T1) ctrlSetText "LMAV";
(_display displayCtrl T5) ctrlSetText "MAV";
invertText(_display,T5);
(_display displayCtrl 10702) ctrlShow true;

(_display displayCtrl R1) ctrlSetText "NFOV";
(_display displayCtrl R2) ctrlSetText "WFOV";

(_display displayCtrl 721003) ctrlSetText str ITC_AIR_MAVERICK_SLEWSPD;

_this call itc_air_maverick_fnc_createCamera;

if(currentWeapon (vehicle player) == "itc_air_weapon_maverick_h") then {
  "MAVERICK_FEED" setPiPEffect [3,1,1,0.4,0,[0,0,0,0],[1,1,1,0],[1,1,1,1]];
} else {
  "MAVERICK_FEED" setPiPEffect [2];
};
