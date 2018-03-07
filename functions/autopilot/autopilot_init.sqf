ITC_AP_mode = 0;
ITC_AP_isEnabled = false;

["ITC", "ITC_ToggleApMode", ["Toggle autopilot mode", "Switches between ALT, ALT/HDG, PATH"], {}, {
	if (!(vehicle player isKindOf "Plane")) exitWith {};
    call itc_fnc_autopilotToggleMode;
}, [0x0F, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC", "ITC_enableAutopilot", ["Enable autopilot", "Enables autopilot"], {}, {
	if (!(vehicle player isKindOf "Plane")) exitWith {};
    if (ITC_AP_isEnabled) then {
		ITC_AP_isEnabled = false;
	} else {
		ITC_AP_isEnabled = true;
		[vehicle player, ITC_AP_mode] call itc_fnc_autopilot;
	};
}, [0x0F, [false, true, false]]] call CBA_fnc_addKeybind;


//TODO
//add check if player is in a plane
//debug macro
//make adjustement speed dependant on mass of the airplane
//disable autopilot when destroyed/damaged/pilot is out/landed (possibly more)
//add headers to functions
//use something better than hint for user feedback
//check if player is pilot, not a passenger