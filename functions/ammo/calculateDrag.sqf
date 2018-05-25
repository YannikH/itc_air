params ["_plane"];
_pylonMags = getPylonMagazines _plane;
_totalDrag = 0;
for "_i" from 0 to (count _pylonMags) - 1 step 1 do {
    if(_pylonMags select _i != "") then {
        _pylonDrag = getNumber (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "dragCoef");
        _fullCount = getNumber (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "count");
        _ammo = (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "ammo") call BIS_fnc_getCfgData;
        _ammoDrag = getNumber (configFile >> "CfgAmmo" >> _ammo >> "dragCoef");
        _count = _plane ammoOnPylon (_i + 1);
        _totalDrag = _totalDrag + _pylonDrag;
        _totalDrag = _totalDrag + (_ammoDrag * _count);
    };
};
_totalDrag
