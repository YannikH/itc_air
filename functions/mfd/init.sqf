ITC_AIR_MFD_CAMS = [];

["ITC","mfd_cursor_toggle", "Toggle MFD cursor",{
  if(!isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} || !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} ) then {
    setMousePosition [0.5, 0.5];
    createDialog "MFD_BTN";
  };
}, "", [200, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_cursor_hold", "Hold MFD cursor",{
  if(!isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} || !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} ) then {
    setMousePosition [0.5, 0.5];
    createDialog "MFD_BTN";
  };
}, {
  if(!isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} || !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} ) then {
    closeDialog 2;
  };
}, [62, [false, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_open_L", "Open MFD L", {
    if(isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} && (vehicle player) getVariable "mfd_l") then {
        2 cutRsc ["MFD_DIALOG_L", "PLAIN", -1, true];
    } else {
        uiNameSpace setVariable ["ITC_AIR_MFD_L",nil];
        2 cutText ["", "PLAIN"];
    };
}, "", [203, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_open_R", "Open MFD R", {
    if((isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"}) && (vehicle player) getVariable "mfd_r") then {
        3 cutRsc ["MFD_DIALOG_R", "PLAIN", -1, true];
    } else {
        uiNameSpace setVariable ["ITC_AIR_MFD_R",nil];
        3 cutText ["", "PLAIN"];
};}, "", [205, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC","mfd_soi_up", "SOI UP", {
  if(!isNil{(vehicle player) getVariable "SOI"}) then {
    [0,1,0] call itc_air_mfd_fnc_soi_input;
  };
  false
}, "", [200, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC","mfd_soi_dn", "SOI DOWN", {
  if(!isNil{(vehicle player) getVariable "SOI"}) then {
    [0,-1,0] call itc_air_mfd_fnc_soi_input;
  };
  false
}, "", [208, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC","mfd_soi_lf", "SOI LEFT", {
  if(!isNil{(vehicle player) getVariable "SOI"}) then {
    [-1,0,0] call itc_air_mfd_fnc_soi_input;
  };
  false
}, "", [203, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC","mfd_soi_rt", "SOI RIGHT", {
  if(!isNil{(vehicle player) getVariable "SOI"}) then {
    [1,0,0] call itc_air_mfd_fnc_soi_input;
  };
  false
}, "", [205, [false, false, false]],true] call CBA_fnc_addKeybind;

["ITC","mfd_soi_action", "SOI ACTION", {
  if(!isNil{(vehicle player) getVariable "SOI"}) then {
    call itc_air_mfd_fnc_soi_action;
  };
  false
}, "", [208, [false, true, false]],true] call CBA_fnc_addKeybind;
