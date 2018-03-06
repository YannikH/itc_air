params ["_key", "_value"];
if(currentWeapon (vehicle player) != "itc_weap_gbu38") exitWith {};
_fuzeTypes = ["pd", "prox", "dly"];

switch(_key) do {
    case "fuze": {
        _index = _fuzeTypes find ITC_AIR_PROGFUZE;
        if(_index + _value == count _fuzeTypes || _index + _value < 0) then {
            _index = 0;
        } else {
            _index = _index + _value;
        };
        ITC_AIR_PROGFUZE = _fuzeTypes select _index;
        hint format["FUZE %1", ITC_AIR_PROGFUZE];
    };
    case "imp": {
        if(ITC_AIR_IMPANGLE + _value >= 30 && ITC_AIR_IMPANGLE + _value <= 80) then {
            ITC_AIR_IMPANGLE = ITC_AIR_IMPANGLE + _value;
            hint format["Impact angle %1", ITC_AIR_IMPANGLE];
        };
    };
};