
params ["_namespace","_btn"];
_plane = vehicle player;
_pylonMags = getPylonMagazines _plane;

(_btn splitString "") params ["_side", "_num"];
if(_side =="B") exitWith {
    switch (_btn) do {
        case "B1": {[] call itc_air_mfd_fnc_swap;};
        case "B2": {_namespace setVariable["page","tad"];};
        case "B3": {_namespace setVariable["page","wpn"];};
        case "B4": {_namespace setVariable["page","lst"];};
    };
};
_i = (parseNumber (_num)) - 1;
_i = if(_side == "R") then [{(_i * 2) + 1},{_i * 2}];
_mag = _pylonMags select _i;
if(_mag != "") then {
    _weapon = (configFile >> "CfgMagazines" >> _mag >> "pylonWeapon") call BIS_fnc_getCfgData;
    _plane selectWeapon _weapon;
    _namespace setVariable ["page", "wpn"];
};