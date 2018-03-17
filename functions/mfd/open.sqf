params ["_display", "_variable"];
uiNamespace setVariable [_variable, _display];
_MFD_TEXT = [
    "DLY", "25ms", "60deg", "", "",
    "1111", "", "RP 1", "CYCLE ON", "Mark 3",
    "GBU-54", "GPS/INS LSR", "4x",
    "","","","",""];

_display setVariable ["input_var", ""];
_display setVariable ["input_limits", nil];
_display setVariable ["input_namespace", nil];
_display setVariable ["page", "wpn"];
_display setVariable ["illum", false];

[{
    _MFD_TEXT = ["", "", "", "", "","", "", "", "", "","", "", "","","","","",""];
    (_this select 0) params ["_display", "_light"];
    if (!alive player || isNil {_display}) then {
        player sideChat "MFD closed";
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    (_display displayCtrl (1201)) ctrlSetFade 0;
    (_display displayCtrl (1201)) ctrlCommit 0;
    (_display displayCtrl (1200)) ctrlSetFade 1;
    (_display displayCtrl (1200)) ctrlCommit 0;

    _illumination = ([] call ace_common_fnc_ambientBrightness);
    (_display displayCtrl (1203)) ctrlSetFade _illumination;
    (_display displayCtrl (1203)) ctrlCommit 0;
    _lightIllumination = if(_display getVariable "illum") then [{_illumination},{1}];
    (_display displayCtrl (1205)) ctrlSetFade _lightIllumination;
    (_display displayCtrl (1205)) ctrlCommit 0;
    _page = _display getVariable "page";
    switch(_page) do {
        case "wpn": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_wpn};
        case "sms": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_sms};
        case "tad": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_tad};
        case "lst": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_lst};
        case "com": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_com};
    };
    for "_i" from 0 to 17 step 1 do {
        _display displayCtrl (1400 + _i) ctrlSetText (_MFD_TEXT select _i);
    };
}, 0, [_display]] call CBA_fnc_addPerFrameHandler;