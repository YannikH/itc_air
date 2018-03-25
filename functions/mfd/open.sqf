params ["_display", "_variable", "_input","_input_idc","_feed"];
uiNamespace setVariable [_variable, _display];
_MFD_TEXT = [
    "DLY", "25ms", "60deg", "", "",
    "1111", "", "RP 1", "CYCLE ON", "Mark 3",
    "GBU-54", "GPS/INS LSR", "4x",
    "","","","",""];

//input field
_display setVariable ["variable", _variable];
_display setVariable ["input", _input];
_display setVariable ["input_idc", _input_idc];
_display setVariable ["input_var", ""];
_display setVariable ["input_limits", nil];
_display setVariable ["input_namespace", nil];
_display setVariable ["input_global", false];
//cur page
_display setVariable ["page", "lst"];
//settings
_display setVariable ["illum", false];

//mfd setup
_pages = if(_variable == "ITC_AIR_MFD_L") then [{(vehicle player) getVariable "mfd_l_pages"},{(vehicle player) getVariable "mfd_r_pages"}];
_quick = if(_variable == "ITC_AIR_MFD_L") then [{(vehicle player) getVariable "mfd_l_quick"},{(vehicle player) getVariable "mfd_r_quick"}];
_display setVariable ["pages", _pages];
_display setVariable ["quick", _quick];
_display setVariable ["tad_map", (_display displayCtrl (1200))];
_display setVariable ["tad_fov", 1];
_display setVariable ["tad_cursor", [0,1000,0]];
_display setVariable ["tad_expand", 0];
_display setVariable ["tad_pos", [0,0,0]];

_display setVariable ["feed_view", (_display displayCtrl (1206))];
_display setVariable ["feed_texture", _feed];
_display setVariable ["feed_camera", nil];
_display setVariable ["feed_cross", (_display displayCtrl (1207))];

_display setVariable ["background", (_display displayCtrl (1201))];
_display setVariable ["soi_square", (_display displayCtrl (1208))];

[{
    _MFD_TEXT = ["", "", "", "", "","", "", "", "", "","", "", ""];
    (_this select 0) params ["_display", "_light"];
    if (!alive player || isNil {_display} || isNil{(vehicle player) getVariable "mfd_l"}) then {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
        2 cutText ["", "PLAIN"];3 cutText ["", "PLAIN"]; // this closes the dialogs
        uiNameSpace setVariable ["ITC_AIR_MFD_L",nil];uiNameSpace setVariable ["ITC_AIR_MFD_R",nil];
    };

    _soi_square = if(_display getVariable "variable" == (vehicle player) getVariable "SOI") then [{0}, {1}];
    (_display getVariable "soi_square") ctrlSetFade _soi_square;
    (_display getVariable "soi_square") ctrlCommit 0;
    (_display getVariable "feed_cross") ctrlSetFade 1;
    (_display getVariable "feed_cross") ctrlCommit 0;
    (_display getVariable "tad_map") ctrlSetFade 1;
    (_display getVariable "tad_map") ctrlCommit 0;
    (_display getVariable "background") ctrlSetFade 0;
    (_display getVariable "background") ctrlCommit 0;

    _illumination = ([] call ace_common_fnc_ambientBrightness);
    (_display displayCtrl (1203)) ctrlSetFade _illumination;
    (_display displayCtrl (1203)) ctrlCommit 0;
    _lightIllumination = if(_display getVariable "illum") then [{_illumination},{1}];
    (_display displayCtrl (1205)) ctrlSetFade _lightIllumination;
    (_display displayCtrl (1205)) ctrlCommit 0;
    _page = _display getVariable "page";
    switch(toLower _page) do {
        case "wpn": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_wpn};
        case "sms": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_sms};
        case "tad": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_tad};
        case "lst": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_lst};
        case "com": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_com};
        case "tgp": {_MFD_TEXT = [_display] call itc_air_mfd_fnc_tgp};
    };
    _MFD_TEXT = _MFD_TEXT +( _display getVariable "quick");
    for "_i" from 0 to 17 step 1 do {
        _display displayCtrl (1400 + _i) ctrlSetText (_MFD_TEXT select _i);
    };
}, 0, [_display]] call CBA_fnc_addPerFrameHandler;
