/*
 * Draws laser related symbology
 * params: plane
 */
params["_plane"];

_str = "";
_laserOn = (!isNull (laserTarget _plane));
if(_laserOn && ITC_AIR_IRLAS) then {
    _str = "B";
} else {
    if(_laserOn) then {
        _str = "L";
    };
    if(ITC_AIR_IRLAS) then {
        _str = "P";
    };
};
[format ["<t color='#ffffff' size = '1'>%1</t>",_str],0.15,0.757,1,0,0, 794] spawn BIS_fnc_dynamicText;

//IF TRACKING AN OBJECT/POINT
if(!isNull _trackObject) then {
    if(_trackObject isKindOf "laserTarget") then {
        ["LST",0.8,0.1,1,0,0, 795] spawn BIS_fnc_dynamicText;
    };
};