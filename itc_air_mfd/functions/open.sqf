params ["_display", "_variable", "_input","_input_idc","_feed"];
uiNamespace setVariable [_variable, _display];
_display setVariable ["displayVariable", _variable];
_vehicle = vehicle player;
if(!(_vehicle isKindOf "Man")) then {
  //_tabletClass = (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "itc_land" >> "tablet")  call BIS_fnc_getCfgData;
};
//_vehicle setVariable ["apps", (configFile >> "CfgWeapons" >> _tabletClass >> "apps")  call BIS_fnc_getCfgData];
//_vehicle setVariable ["app", (_vehicle getVariable "apps") # 0];
_display setVariable ["app", "dsms"];

(ctrlPosition (_display displayCtrl 2200)) params ["_x","_y","_w","_h"];
(_display displayCtrl 61500) ctrlShow false;
_display setVariable ["center", [_x + (_w / 2), _y + (_h / 2)]];
_display setVariable ["width", _w];
_display setVariable ["height", _h];

_display setVariable ["pages", _pages];
_display setVariable ["quick", _quick];
_display setVariable ["tad_map", (_display displayCtrl (1200))];
_display setVariable ["tad_fov", 1];
_display setVariable ["tad_cursor", [0,1000,0]];
_display setVariable ["tad_expand", 0];
_display setVariable ["tad_pos", [0,0,0]];


[{
  _this select 0 params ["_display","_vehicle", "_app", "_page"];
  if(!alive player) then { //ensure player is alive and dialog is open
    [_this select 1] call CBA_fnc_removePerFrameHandler;
  };

  [_display] call itc_air_mfd_fnc_render;

  if(_display getVariable "app" != _app) then { //check if app switched
    [_display] call itc_air_mfd_fnc_clear; //clear app pages
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
}, 0, [_display, _vehicle, "", ""]] call CBA_fnc_addPerFrameHandler;
