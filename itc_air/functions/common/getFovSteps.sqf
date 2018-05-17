/*
 *  Gets the zoom levels of a pilotCamera
 *  Params: vehicle
 *  Returns: array of (fov)numbers
 */
params ["_vehicle"];
_steps = (configfile >> "CfgVehicles" >>
(typeOf _vehicle) >> "pilotCamera" >> "opticsIn") call BIS_fnc_getCfgSubClasses;
_fov = [];
for "_i" from 0 to (count _steps) - 1 step 1 do {
    _num = getNumber (configFile >> "CfgVehicles" >>(typeOf _vehicle) >> "pilotCamera" >> "opticsIn" >> _steps select _i >> "initFov");
    _fov = _fov + [_num];
};
_fov
