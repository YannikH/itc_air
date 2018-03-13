/*
 * Draw TOF to waypoint
 * params: plane, current waypoint
 */
params ["_plane", "_wp"];
if((_wp select 0) == "NO WP")exitWith{};

_bombInAir = false;
if(!isNil{ITC_AIR_FLYING}) then {_bombInAir = (alive ITC_AIR_FLYING)};
if(_bombInAir) then {
    _bombDist = ITC_AIR_FLYING distance (_wp select 1);
    _tof = _bombDist / (vectorMagnitude (velocity ITC_AIR_FLYING));
    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
    [format["%1 %2",_wpName, _tofStr],0.6,1.2,1,0,0,796] spawn BIS_fnc_dynamicText;
} else {
    _initSpeed = (configFile >> "CfgMagazines" >> (currentMagazine _plane) >> "initSpeed")  call BIS_fnc_getCfgData;
    _speed = _initSpeed + (vectorMagnitude (velocity _plane));
    _tof = (_plane distance (_wp select 1)) / _speed;
    _tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];
    [format["%1 %2",_wpName, _tofStr],0.6,1.2,1,0,0,796] spawn BIS_fnc_dynamicText;
};