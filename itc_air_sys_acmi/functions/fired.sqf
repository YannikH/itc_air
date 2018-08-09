params ["", "_weapon", "", "", "_ammo", "_magazine", "_projectile", "_gunner"];
private _cursorAim = (configFile >> "CfgWeapons" >> _weapon >> "cursorAim") call BIS_fnc_getCfgData;
private _displayName = getText (configFile >> "CfgMagazines" >> _magazine >> "displayNameShort");
if(!(_cursorAim in ["bomb","rocket","missile"])) exitWith {};
ITC_AIR_ACMI_ID_START = ITC_AIR_ACMI_ID_START + 10;
private _id = ITC_AIR_ACMI_ID_START toFixed 0;
player sideChat str _id;
private _printStr = [_projectile] call itc_air_acmi_fnc_logPositionString;
private _createStr = format["%1,%2,Type=Weapon+%3,Name=%4",_printStr,_id,_cursorAim,_displayName];
[_createStr, true] call itc_air_acmi_fnc_log;
[{
    (_this select 0) params ["_projectile", "_id"];
    if (!alive _projectile) exitWith {
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
    _printStr = [_projectile] call itc_air_acmi_fnc_logPositionString;
    [_id + "," + _printStr, true] call itc_air_acmi_fnc_log;
}, 1, [_projectile, _id]] call CBA_fnc_addPerFrameHandler;
