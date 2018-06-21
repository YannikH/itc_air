params ["_display"];

private _plane = vehicle player;
/*
private _bayPhase = _plane animationPhase "weapons_bay_c_1";
(_display displayCtrl 91202) ctrlShow (_bayPhase > 0.1);

private _bayText = if(_bayPhase > 0.9) then [{"OPEN"},{"CLOSED"}];
(_display displayCtrl 91001) ctrlSetText _bayText;
*/
private _weaponName = getText (configFile >> "CfgWeapons" >> (currentWeapon _plane) >> "displayName");
(_display displayCtrl 91020) ctrlSetText _wpnText;
_this call test_render_sms;
