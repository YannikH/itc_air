["ITC","mfd_cursor_toggle", "Toggle MFD cursor",{createDialog "MFD_BTN";}, "", [200, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_open_L", "Open MFD L", {
    if(isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"}) then {
        2 cutRsc ["MFD_DIALOG_L", "PLAIN", -1, true];
    } else {
        uiNameSpace setVariable ["ITC_AIR_MFD_L",nil];
        2 cutText ["", "PLAIN"];
    };
}, "", [203, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_open_R", "Open MFD R", {
    if(isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"}) then {
        3 cutRsc ["MFD_DIALOG_R", "PLAIN", -1, true];
    } else {
        uiNameSpace setVariable ["ITC_AIR_MFD_R",nil];
        3 cutText ["", "PLAIN"];
};}, "", [205, [true, false, false]]] call CBA_fnc_addKeybind;
