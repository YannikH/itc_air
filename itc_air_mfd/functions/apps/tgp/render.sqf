params ["_display", "_btn"];
#include "..\..\mfdDefines.hpp"

_vehicle = vehicle player;
_pilotCameraTarget = getPilotCameraTarget _vehicle;

private _tot = (_display displayCtrl 31006);
if(isNil{itc_air_fcs_firedTime} || {itc_air_fcs_firedTime == -1}) then {
  _tot ctrlSetText str (round itc_air_fcs_ccip_impactTime);
} else {
  _tot ctrlSetText str (round ((itc_air_fcs_firedTime + itc_air_fcs_tof) - cba_missionTime));
};

(_display displayCtrl 32202) ctrlShow (_vehicle getVariable "tgp_fov" >= 0.2);
(_display displayCtrl 32203) ctrlShow (_vehicle getVariable "tgp_lsst_mode" != "LSS OFF");
(_display displayCtrl 32204) ctrlShow (_vehicle getVariable "laser_ir");
(_display displayCtrl 32205) ctrlShow (!isNull(_pilotCameraTarget # 2));

if(_pilotCameraTarget # 0) then {
  _gridArea = [worldName] call ace_common_fnc_getMGRSdata;
  _grid = [_pilotCameraTarget # 1] call ace_common_fnc_getMapGridFromPos;
  _str = format ["%1  %2  %3  %4", _gridArea select 0, _gridArea select 1, _grid select 0, _grid select 1];
  (_display displayCtrl 31004) ctrlShow true;
  (_display displayCtrl 31000) ctrlShow true;
  (_display displayCtrl 31005) ctrlShow true;
  (_display displayCtrl 31004) ctrlSetText _str;
  (_display displayCtrl 31000) ctrlSetText (if(!isNull (_pilotCameraTarget # 2)) then [{"POINT"},{"AREA"}]);
  (_display displayCtrl 31005) ctrlSetText str round getTerrainHeightASL (_pilotCameraTarget # 1);
} else {
  (_display displayCtrl 31004) ctrlShow false;
  (_display displayCtrl 31000) ctrlShow false;
  (_display displayCtrl 31005) ctrlShow false;
};

_str = "";
_laserOn = (!isNull (laserTarget _vehicle));
if(_laserOn && _vehicle getVariable "laser_ir") then {
    _str = "B";
} else {
    if(_laserOn) then {
        _str = "L";
    };
    if(_vehicle getVariable "laser_ir") then {
        _str = "P";
    };
};

(_display displayCtrl 31001) ctrlSetText _str;
(_display displayCtrl 31002) ctrlSetText (["DTV","NTV","FLIR"] # (_vehicle getVariable "tgp_mode"));
(_display displayCtrl R5) ctrlSetText (["DTV","NTV","FLIR"] # (_vehicle getVariable "tgp_mode"));
(_display displayCtrl 31003) ctrlSetText str round ((getPosATL _vehicle) # 2);

(_display displayCtrl L1) ctrlSetText (_vehicle getVariable "tgp_lsst_mode");
(_display displayCtrl R1) ctrlSetText (if(_vehicle getVariable "laser_ir") then [{"ON"},{"OFF"}]);
(_display displayCtrl R2) ctrlSetText format["%1 Hz", (_vehicle getVariable "laser_pulse")];
(_display displayCtrl L3) ctrlSetText (if(_laserOn) then [{"ON"},{"OFF"}]);
(_display displayCtrl L2) ctrlSetText str (_vehicle getVariable "laser_code_recv");
(_display displayCtrl L4) ctrlSetText str (_vehicle getVariable "ace_laser_code");

(_display displayCtrl L5) ctrlSetText str ITC_AIR_TGP_SLEWSPD;
