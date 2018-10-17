ITC_AIR_MFD_CAMS = [];

["ITC Air","itc_air_mfd_cursor_toggle", "Show MFD cursor",{
  //(findDisplay 19992) closeDisplay 2;
  //if(!isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} || !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} ) then {
  if("UFC" in ((vehicle player) getVariable "itc_air_systems")) then {
    setMousePosition [0.5, 0.5];
    if (isNull curatorCamera) then {
      findDisplay 46 createDisplay (vehicle player getVariable "mfdButtons");
    };
  };
  //};
}, "", [200, [false, false, false]]] call CBA_fnc_addKeybind;
/*
["ITC Air","itc_air_mfd_cursor_hold", "Hold MFD cursor",{
  //(findDisplay 19992) closeDisplay 2;
  if(!isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} || !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} ) then {
    setMousePosition [0.5, 0.5];
    if (isNull curatorCamera) then {
      findDisplay 46 createDisplay (vehicle player getVariable "mfdButtons");
    };
  };
}, {
  //(findDisplay 19992) closeDisplay 2;
}, [62, [false, false, false]]] call CBA_fnc_addKeybind;
*/
["ITC Air","itc_air_mfd_open_L", "Open MFD L", {
    if(isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} && ("MFD_L" in ((vehicle player) getVariable["itc_air_systems",[]]))) then {
      if(vehicle player getVariable "mfdType" == "touch") then {
        101 cutRsc ["ITC_AIR_MFD_STL_L1", "PLAIN", -1, true];
        //103 cutRsc ["ITC_AIR_MFD_STL_L2", "PLAIN", -1, true];
      } else {
        101 cutRsc ["ITC_AIR_MFD_L", "PLAIN", -1, true];
      };
    } else {
        uiNameSpace setVariable ["ITC_AIR_MFD_L",nil];
        101 cutText ["", "PLAIN"];
        //uiNameSpace setVariable ["ITC_AIR_MFD_L2",nil];
        //103 cutText ["", "PLAIN"];
    };
}, "", [203, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_mfd_open_R", "Open MFD R", {
    if((isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"}) && ("MFD_R" in ((vehicle player) getVariable["itc_air_systems",[]]))) then {
      if(vehicle player getVariable "mfdType" == "touch") then {
        102 cutRsc ["ITC_AIR_MFD_STL_R1", "PLAIN", -1, true];
        //104 cutRsc ["ITC_AIR_MFD_STL_R2", "PLAIN", -1, true];
      } else {
        102 cutRsc ["ITC_AIR_MFD_R", "PLAIN", -1, true];
      };
    } else {
      uiNameSpace setVariable ["ITC_AIR_MFD_R",nil];
      102 cutText ["", "PLAIN"];
      //uiNameSpace setVariable ["ITC_AIR_MFD_R2",nil];
      //104 cutText ["", "PLAIN"];
};}, "", [205, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC Air","itc_air_mfd_open_TGP", "Open MFD TGP", {
    if(!dialog && (vehicle player) getVariable "wso" && player != (driver (vehicle player))) then {
      createDialog "TGP_DIALOG";
    };
}, "", [208, [true, false, false]]] call CBA_fnc_addKeybind;

//[
//    "ITC_AIR_MFD_SCALE",
//    "SLIDER",
//    "MFD Size",
//    "ITC Air",
//    [0, 2, 1, 1],
//    nil,
//    {}
//] call CBA_Settings_fnc_init;

/*
["ITC MFD","mfd_btn_short_L1", "MFD BTN L1",{[(vehicle player) getVariable "SOI","L1"] call itc_air_mfd_fnc_button}, "", [79, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_L2", "MFD BTN L2",{[(vehicle player) getVariable "SOI","L2"] call itc_air_mfd_fnc_button}, "", [80, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_L3", "MFD BTN L3",{[(vehicle player) getVariable "SOI","L3"] call itc_air_mfd_fnc_button}, "", [81, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_L4", "MFD BTN L4",{[(vehicle player) getVariable "SOI","L4"] call itc_air_mfd_fnc_button}, "", [75, [true, false, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_L5", "MFD BTN L5",{[(vehicle player) getVariable "SOI","L5"] call itc_air_mfd_fnc_button}, "", [76, [true, false, false]]] call CBA_fnc_addKeybind;

["ITC MFD","mfd_btn_short_B1", "MFD BTN B1",{[(vehicle player) getVariable "SOI","B1"] call itc_air_mfd_fnc_button}, "", [79, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_B2", "MFD BTN B2",{[(vehicle player) getVariable "SOI","B2"] call itc_air_mfd_fnc_button}, "", [80, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_B3", "MFD BTN B3",{[(vehicle player) getVariable "SOI","B3"] call itc_air_mfd_fnc_button}, "", [81, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_B4", "MFD BTN B4",{[(vehicle player) getVariable "SOI","B4"] call itc_air_mfd_fnc_button}, "", [75, [false, true, false]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_B5", "MFD BTN B5",{[(vehicle player) getVariable "SOI","B5"] call itc_air_mfd_fnc_button}, "", [76, [false, true, false]]] call CBA_fnc_addKeybind;

["ITC MFD","mfd_btn_short_R1", "MFD BTN R1",{[(vehicle player) getVariable "SOI","R1"] call itc_air_mfd_fnc_button}, "", [79, [false, false, true]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_R2", "MFD BTN R2",{[(vehicle player) getVariable "SOI","R2"] call itc_air_mfd_fnc_button}, "", [80, [false, false, true]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_R3", "MFD BTN R3",{[(vehicle player) getVariable "SOI","R3"] call itc_air_mfd_fnc_button}, "", [81, [false, false, true]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_R4", "MFD BTN R4",{[(vehicle player) getVariable "SOI","R4"] call itc_air_mfd_fnc_button}, "", [75, [false, false, true]]] call CBA_fnc_addKeybind;
["ITC MFD","mfd_btn_short_R5", "MFD BTN R5",{[(vehicle player) getVariable "SOI","R5"] call itc_air_mfd_fnc_button}, "", [76, [false, false, true]]] call CBA_fnc_addKeybind;
*/
