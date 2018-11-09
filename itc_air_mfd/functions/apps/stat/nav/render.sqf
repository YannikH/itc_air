params ["_display"];
#include "..\..\..\mfdDefines.hpp"
_vehicle = vehicle player;
//(_display displayCtrl 211000) ctrlSetText (_vehicle getVariable "stpt_name");


(_display displayCtrl L4) ctrlSetText format["%1M",round ((getPosASL _vehicle) # 2)];
(_display displayCtrl L5) ctrlSetText format["%1FT",round (3.28084 * ((getPosASL _vehicle) # 2))];

_northDir = 360 - (getDir _vehicle);
(_display displayCtrl 211201) ctrlSetAngle [_northDir, 0.5, 0.5];
(_display displayCtrl 211000) ctrlSetText format["HDG %1", round (getDir _vehicle)];
(_display displayCtrl 211001) ctrlSetText format["%1 KTS", round ((speed _vehicle) * 0.539957)];


if(itc_air_wpt_name != "N/A") then {
  _dir = _vehicle getRelDir itc_air_wpt_pos;
  (_display displayCtrl 211202) ctrlSetAngle [_dir, 0.5, 0.5];

  private _dist = round ((_vehicle distance itc_air_wpt_pos) / 1000);
  private _cts = round (_vehicle getDir itc_air_wpt_pos);

  (_display displayCtrl 211005) ctrlSetText format["%1 / %2km",str _cts, str _dist];
  (_display displayCtrl 211006) ctrlSetText itc_air_wpt_tof;
  (_display displayCtrl 211007) ctrlSetText itc_air_wpt_name;
};

if(itc_air_wpt_tcn_on) then {
  _this call test_fnc_tcn;
  [_display] call itc_air_wpt_fnc_drawTACAN;
} else {
  (_display displayCtrl 211002) ctrlSetText "";
  (_display displayCtrl 211003) ctrlSetText "";
  (_display displayCtrl 211004) ctrlSetText "";
};

/*
if (ITC_AP_isEnabled && "AP-MAN" in ((vehicle player) getVariable "itc_air_systems")) then {
  (_display displayCtrl R4) ctrlSetText format["%1m", round ITC_AP_TargetAlt];
  if (ITC_AP_mode isEqualTo 1) then {
    (_display displayCtrl R45) ctrlSetText "AP ALT/HDG";
    (_display displayCtrl R5) ctrlSetText format["HDG %1", round ITC_AP_TargetHdg];
  } else {
    (_display displayCtrl R45) ctrlSetText "AP ALT";
  };
};
*/
if (ITC_AP_isEnabled && "AP-MAN" in ((vehicle player) getVariable "itc_air_systems") && {ITC_AP_mode isEqualTo 1}) then {
  (_display displayCtrl 211205) ctrlSetAngle [ITC_AP_TargetHdg - (getDir _vehicle), 0.5, 0.5];
  (_display displayCtrl 211205) ctrlShow true;
} else {
  (_display displayCtrl 211205) ctrlShow false;
};


(_display displayCtrl R4) ctrlSetText format["%1%2",round ((fuel _vehicle) * 100),"%"];
(_display displayCtrl R5) ctrlSetText format["%1 min",_vehicle getVariable "playtime"];

/*
if(ITC_AIR_UFC_CTXT_PAGE == "STATNAV") then {
  ITC_AIR_UFC_CTXT_COLUMNS_TXT set [5,str (round ITC_AP_TargetAlt)];
  ITC_AIR_UFC_CTXT_COLUMNS_TXT set [1,str (round ITC_AP_TargetHdg)];
  ITC_AIR_UFC_CTXT_COLUMNS_TXT set [0, str itc_air_wpt_tacanCSEL];
  ITC_AIR_UFC_CTXT_COLUMNS_TXT set [6, str itc_air_wpt_tacanCDE];
};
*/
