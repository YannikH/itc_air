/*
 * Author: BlackHawk
 *
 * Initializes Autopilot (AP) component by adding CBA keybinds and initializing global variables.
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call itc_fnc_autpilotInit;
 *
 * Public: No
 */

ITC_AP_mode = 0;
ITC_AP_isEnabled = false;

["ITC", "ITC_ToggleApMode", ["Toggle autopilot mode", "Switches between ALT, ALT/HDG, PATH"], {}, {
	if (!(vehicle player isKindOf "Plane") && {driver vehicle player == player}) exitWith {};
	if("AUTOPILOT" in (vehicle player getVariable ["itc_air_systems",[]])) then {
		call itc_air_autopilot_fnc_autopilotToggleMode;
	};
}, [0x0F, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC", "ITC_enableAutopilot", ["Enable autopilot", "Enables autopilot"], {}, {
	if (!(vehicle player isKindOf "Plane") && {driver vehicle player == player}) exitWith {};
	if("AUTOPILOT" in (vehicle player getVariable ["itc_air_systems",[]])) then {
		if (ITC_AP_isEnabled) then {
			ITC_AP_isEnabled = false;
			if(ITC_AP_mode == 3) then {
				ITC_AP_mode = ["ALT","ALT/HDG","PATH"] find ITC_AP_modeString;
			};
		} else {
			ITC_AP_isEnabled = true;
			[vehicle player, ITC_AP_mode] call itc_air_autopilot_fnc_autopilot;
		};
	};
}, [0x0F, [false, true, false]]] call CBA_fnc_addKeybind;


//TODO
//* debug macro
//* use something better than hint for user feedback
//* move macro values to config (?)
//* calculate derivative of velocity (acceleration) to better predict where VV will go and make autopilot line up quicker
//  right now if force is a little bit too big, the plane starts to wobble wildly - lots of force is applied
//  when VV is far off, and it stops only when we reached target VV, but then it's too late, nose is still moving
//* use macros for global variables
//* use pitch + roll torque instead of vertical force - will require math
