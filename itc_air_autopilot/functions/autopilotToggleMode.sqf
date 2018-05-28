/*
 * Author: BlackHawk
 *
 * Switches between 3 define autopilot modes.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call itc_air_autopilot_fnc_autpilotToggleMode;
 *
 * Public: No
 */

if (ITC_AP_isEnabled) exitWith {hint "turn autopilot off to switch modes"};

ITC_AP_mode = ITC_AP_mode + 1;
if (ITC_AP_mode > 2) then {
	ITC_AP_mode = 0;
};
ITC_AP_modeString = ["ALT","ALT/HDG","PATH"] select ITC_AP_mode;
hint format ["Autopilot mode switched to %1", ["ALT", "ALT/HDG", "PATH"] select ITC_AP_mode];
