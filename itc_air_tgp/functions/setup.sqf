params ["_vehicle"];
_fovSteps = [_vehicle] call itc_air_common_fnc_get_fov_steps;
_vehicle setVariable ["tgp_dir", [true, [0,0,0]]];
_vehicle setVariable ["tgp_fov", (24 / 120)];
_vehicle setVariable ["tgp_fov_index", 0];
_vehicle setVariable ["tgp_fov_steps", _fovSteps];
_vehicle setVariable ["tgp_mode", 0];
itc_air_tgp_capable = true;
itc_air_tgp_enabled = _vehicle getVariable ["itc_air_tgp_enabled",true];
itc_air_tgp_prevSOI = "";
104 cutRsc ["ITC_AIR_A10E_TGP", "PLAIN", -1, true];

private _overlay = getText (itc_air_seat_config >> "tgp_overlay");
private _display = uiNameSpace getVariable "ITC_AIR_TGP_UI";
if(_overlay != "") then {
  (_display displayCtrl 1200) ctrlSetText _overlay;
} else {
  (_display displayCtrl 1200) ctrlShow false;
};
(_display displayCtrl 1200) ctrlCommit 0;

(_display displayCtrl 2201) ctrlShow (!itc_air_tgp_enabled);
