
_output = ["", "", "", "", "", "", "", "", "", "", "", "", "","SWAP","TAD","WPN","SMS","LST"];
_plane = vehicle player;
_pylonMags = getPylonMagazines _plane;
_leftIndex = -1;
_rightIndex  = 4;
for "_i" from 0 to (count _pylonMags) step 1 do {
    //_oi = if(_i % 2 == 0) then [{_leftIndex = _leftIndex + 1; _leftIndex},{_rightIndex = _rightIndex + 1; _rightIndex}];
    _oi = if(_i % 2 == 0) then [{_i / 2},{((_i - 1) / 2) + 5}];
    if(_pylonMags select _i != "") then {
        _ammo = (configFile >> "CfgMagazines" >> (_pylonMags select _i) >> "displayNameShort") call BIS_fnc_getCfgData;
        _count = _plane ammoOnPylon (_i + 1);
        _str = if(_i % 2 == 0) then [{format["%1 | %2", _ammo, _count]},{format["%2 | %1", _ammo, _count]}];
        _output set [_oi, _str];
    };
};
_gun = weapons _plane select 0;
_gunName = (configFile >> "CfgWeapons" >> _gun >> "displayName") call BIS_fnc_getCfgData;
_output set [10, _gunName];
_output
