/*
 * Author: Yax
 *
 * Sets up the settings for the itc air autopilot.
 *
 * Arguments:
 * Vehicle
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call itc_air_autopilot_fnc_setup;
 *
 * Public: No
 */

 params ["_vehicle"];
 private _options = _vehicle getVariable ["itc_air_options",[]];

 _options pushBack [missionNameSpace,"ITC_AP_isEnabled",false,"AUTOPILOT ON",{
   [vehicle player, ITC_AP_mode] call itc_air_autopilot_fnc_autopilot;
 },"cycle",[false, true]];
 _options pushBack [missionNameSpace,"ITC_AP_modeString","ALT","AP MODE",{
   ITC_AP_isEnabled = false;
   ITC_AP_mode = ["ALT","ALT/HDG","PATH"] find ITC_AP_modeString;
},"cycle",["ALT","ALT/HDG","PATH"]];
 _vehicle setVariable ["itc_air_options", _options];
