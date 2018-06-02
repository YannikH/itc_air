params ["_control","_button"];
private _displayVariable = (ctrlParentControlsGroup _control) getVariable "display";
private _display = uiNameSpace getVariable _displayVariable;

playSound "Click";
playSound "Click";
playSound "Click";

if([_display, _button] call (_display getVariable "pageInteract")) exitWith {player sideChat "page exit";};
if([_display, _button] call (_display getVariable "appInteract")) exitWith {player sideChat "app exit";};

(_button splitString "") params ["_side", "_num"];
if(_button == "B5") exitWith {
  _display setVariable["app","LST"];
};
if(_side =="B" && parseNumber _num > 0) exitWith {
  _i = (parseNumber _num) - 1;
  _display setVariable["app",toLower ((_display getVariable "shortCuts") select _i)];
};
