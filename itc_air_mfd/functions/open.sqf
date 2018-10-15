params ["_display", "_variable", "_input","_input_idc","_feed"];
uiNamespace setVariable [_variable, _display];
//_this call test_fnc_resizeMFD;
//[_display,(configFile >> "RscTitles" >> "ITC_AIR_MFD_L" >> "MFD"),ITC_AIR_MFD_SCALE] call itc_air_mfd_fnc_rescaleControlsGroup;
//[_display, 61500, ITC_AIR_MFD_SCALE] call itc_air_mfd_fnc_rescaleMFDControl;
_display setVariable ["displayVariable", _variable];
_vehicle = vehicle player;

private _mfdApps = _vehicle getVariable "itc_air_mfd_apps";
_display setVariable ["shortCuts", _mfdApps select [0, 4]];
_display setVariable ["apps", _mfdApps select [4,10]];

_display setVariable ["app", "lst"];

if(_vehicle getVariable "mfdType" == "touch") then {
  (_display displayCtrl 1200) ctrlShow false;
};

//(ctrlPosition (_display displayCtrl 61500)) params ["_x","_y","_w","_h"];
private _x = 0.1375 * 0.9; private _y = 0.18 * 0.9; private _w = 0.475 * 0.9; private _h = 0.66 * 0.9;
(_display displayCtrl 61500) ctrlShow false;
_display setVariable ["center", [_x + (_w / 2), _y + (_h / 2)]];
_display setVariable ["width", _w];
_display setVariable ["height", _h];

_display setVariable ["pages", _pages];
_display setVariable ["quick", _quick];
_display setVariable ["sensor",""];

[{
  _this select 0 params ["_display","_vehicle", "_app", "_page","_lastFrame"];
  if(!alive player || !((vehicle player) isKindOf "Air") || !alive _vehicle) then { //ensure player is alive and dialog is open
    [_this select 1] call CBA_fnc_removePerFrameHandler;
    uiNameSpace setVariable ["ITC_AIR_MFD_L",nil];
    101 cutText ["", "PLAIN"];
    uiNameSpace setVariable ["ITC_AIR_MFD_R",nil];
    102 cutText ["", "PLAIN"];
  };

  if(time == _lastFrame) exitWith {};
  _this select 0 set [4, time];

  [_display] call itc_air_mfd_fnc_render;

  if(_display getVariable "app" != _app) then { //check if app switched
    [_display] call itc_air_mfd_fnc_clear; //clear app pages
    (_display displayCtrl (1030)) ctrlShow false;
    _display setVariable ["sensor",""];
    if(_app != "") then { //clear the previous app if it existed
      [_display] call (_display getVariable "appClear"); //clear app pages
    };
    _app = _display getVariable "app"; //switch the app variable
    [_app, _display] call itc_air_mfd_fnc_compileApp;
    _newPage = [_display] call (_display getVariable "appInit"); //initialize the new app
    _display setVariable ["page", _newPage];
  };
  [_display] call (_display getVariable "appRender"); //render the app

  if(_display getVariable "page" != _page) then { //check if page switched
    [_display] call itc_air_mfd_fnc_clear; //clear app pages
    _page = _display getVariable "page"; //switch the app variable
    [_display] call (_display getVariable "appClear"); //clear app pages
    if(_page != "") then { //if there's a page, initlialize it
      [_app, _page, _display] call itc_air_mfd_fnc_compilePage;
      [_display] call (_display getVariable "pageInit"); //initialise the new page
    };
  };
  if(_page != "") then { //if there's a page, render it
    [_display] call (_display getVariable "pageRender"); //render the page
  };
  (_this select 0) set [2, _app];
  (_this select 0) set [3, _page];
}, 0, [_display, _vehicle, "", "", 0]] call CBA_fnc_addPerFrameHandler;
