if (ITC_AP_isEnabled) exitWith {hint "turn autopilot off to switch modes"};

ITC_AP_mode = ITC_AP_mode + 1;
if (ITC_AP_mode > 2) then {
	ITC_AP_mode = 0;
};
hint format ["Autopilot mode switched to %1", ["ALT", "ALT/HDG", "PATH"] select ITC_AP_mode];
