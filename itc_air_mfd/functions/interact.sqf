params ["_control","_button"];
private _displayVariable = (ctrlParentControlsGroup _control) getVariable "display";
private _display = uiNameSpace getVariable _displayVariable;

playSound "Click";
playSound "Click";
playSound "Click";

if([_display, _button] call (_display getVariable "pageInteract")) exitWith {player sideChat "page exit";};
if([_display, _button] call (_display getVariable "appInteract")) exitWith {player sideChat "app exit";};

(_button splitString "") params ["_side", "_num"];
if(_side =="B") exitWith {
  _i = (parseNumber _num) - 1;
  _display setVariable["app",toLower (["TGP","DSMS","STAT","TAD","dispprog"] select _i)];
};
