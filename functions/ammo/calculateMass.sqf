params ["_plane"];
_pylonMags = getPylonMagazines _plane;
_totalMass = 0;
for "_i" from 0 to (count _pylonMags) - 1 step 1 do {
    if(_pylonMags select _i != "") then {
        _magazineWeight = getNumber (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "mass"); //kg
        _fullCount = getNumber (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "count");
        _count = _plane ammoOnPylon (_i + 1);
        _massPerAmmo = _magazineWeight / _fullCount;
        if(_magazineWeight != -1) then {
            _totalMass = _totalMass + (_count * _massPerAmmo);
        };
    };
};
_totalMass
