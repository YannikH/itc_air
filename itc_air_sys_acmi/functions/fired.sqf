params ["_unit", "_weapon", "", "", "_ammo", "_magazine", "_projectile", "_gunner"];
if(!ITC_AIR_ACMI_ON) exitWith {};

//get cursorAim
private _cursorAim = (configFile >> "CfgWeapons" >> _weapon >> "cursorAim") call BIS_fnc_getCfgData;

//adjust for flares
private _isFlare = _weapon isKindOf ["CMFlareLauncher", configFile >> "CfgWeapons"];
_cursorAim = if(_isFlare) then [{"flare"},{_cursorAim}];
private _type = if(_isFlare) then [{"Decoy+Flare"},{"Weapon+"+_cursorAim}];
//run MG fired script instead
if(
  (_cursorAim isEqualTo "mg") &&
  (_unit getVariable ["acmi_trackShells",false])
) exitWith {_this call itc_air_acmi_fnc_firedMG;};

private _displayName = getText (configFile >> "CfgMagazines" >> _magazine >> "displayNameShort");

//kill the script if not correct cursorAim type
if(!(_cursorAim in ["bomb","rocket","missile","flare"]) && !(_unit getVariable ["acmi_trackAll",false])) exitWith {};

ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 10;
private _id = ITC_AIR_ACMI_ID_START toFixed 0;

private _color = switch (side _unit) do {
  case east: {"Red"};
  case west: {"Blue"};
  case resistance: {"Green"};
  case civilian: {"Violet"};
  default {"Orange"};
};

private _printStr = [_projectile] call itc_air_acmi_fnc_logPositionString;
private _createStr = format["%1,%2,Type=%6,Name=weapons.%3.%4,Color=%5%7",_id,_printStr,_cursorAim,_displayName,_color,_type,_parentString];
[_createStr, true] call itc_air_acmi_fnc_log;
[{
    (_this select 0) params ["_projectile", "_id","_launchTime"];
    if(itc_air_paused) exitWith {};
    if (!alive _projectile || !ITC_AIR_ACMI_ON) exitWith {
        ["-" + _id, true] call itc_air_acmi_fnc_log;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    _printStr = [_projectile] call itc_air_acmi_fnc_logPositionString;
    [_id + "," + _printStr, true] call itc_air_acmi_fnc_log;
}, 0.5, [_projectile, _id]] call CBA_fnc_addPerFrameHandler;
