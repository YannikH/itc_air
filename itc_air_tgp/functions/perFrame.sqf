params ["_plane"];
private ["_icon"];

if((_plane getVariable ["tgp_lsst_mode", ""]) in ["LSS","LST"]) then {
  _this call itc_air_tgp_fnc_lssSearch;
};

private _display = uiNameSpace getVariable "ITC_AIR_TGP_UI";
if(cameraView != "GUNNER" || dialog) exitWith {
  if(!isNil{_display}) then {
    (_display displayCtrl 13379) ctrlShow false;
  };
};

(_display displayCtrl 13379) ctrlShow true;

(_plane call BIS_fnc_getPitchBank) params ["_pitch","_bank"];
(_display displayCtrl 1202) ctrlSetAngle [(-1 * _bank) + (-1 * _pitch), 0.5, 0.5];
(_display displayCtrl 1203) ctrlSetAngle [(-1 * _bank) + (1 *_pitch), 0.5, 0.5];
(_display displayCtrl 1201) ctrlSetAngle [(-1 * _bank), 0.5, 0.5];
(_display displayCtrl 1204) ctrlSetAngle [(-1 * _bank) + (45 + (-1 * _pitch)), 0.5, 0.5];
(_display displayCtrl 1205) ctrlSetAngle [(-1 * _bank) + (-45 + _pitch), 0.5, 0.5];

(_display displayCtrl 1028) ctrlShow (_bank > 75 || _bank < -75 || _pitch > 20 || _pitch < -20);
(_display displayCtrl 1029) ctrlShow itc_air_gcas_warn;


//find out the yaw and pitch
_yawPitchPodRad =  [_plane] call itc_air_common_fnc_get_turret_rotation;
_yawPitchPodRad params ["_yawRad", "_pitchRad"];

//convert to degrees
_yawPod = (_yawPitchPodRad select 0) * 180 / pi;
_pitchPod = (_yawPitchPodRad select 1) * 180 / pi;

//make a range for drawing on the screen
_range = ((safeZoneW / 6) / 90 * (90 -_pitchPod));

//calculate coordinates based on range
_x = (safeZoneW / 2) + (sin(_yawPod) * _range * -1);
_y = (safeZoneH / 2) + (cos(_yawPod) * _range * -1);
(_display displayCtrl 11200) ctrlSetPosition [_x, _y];
(_display displayCtrl 11200) ctrlCommit 0;
