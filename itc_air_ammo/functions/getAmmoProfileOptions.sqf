params ["_ammo"];
_optionsList = [];
//option: [key, value, label, dataType, dataOptions]
_noseFuze = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_noseFuze");
_optionsList = _optionsList + (["nose",_noseFuze] call itc_air_ammo_fnc_getFuzeOptions);

_tailFuze = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_tailFuze");
_optionsList = _optionsList + (["tail",_tailFuze] call itc_air_ammo_fnc_getFuzeOptions);

if(_tailFuze != "" && _noseFuze != "") then {
  _optionsList pushBack ["fuzeSel","N/T","FUZE","cycle",["N/T","NOSE","TAIL"]];
};

_guidanceTypes =  (configFile >> "CfgAmmo" >> _ammo >> "ITC_guidanceOptions") call BIS_fnc_getCfgData;
if(!isNil {_guidanceTypes}) then {
  {
    switch(_x) do {
      case "jdam": {
        _optionsList pushBack ["impAng","60","IMP ANG","UFC",{(_this > 9 && _this < 90)}];
      };
      case "laser": {
        _optionsList pushBack ["laserCode","1111","LASER CODE","UFC",{[_this] call itc_air_common_fnc_is_laser_code}];
      };
      case "autolaser": {
        _optionsList pushBack ["autolaser","OFF","AUTO LS","cycle",["ON","OFF"]];
      };
    };
  }forEach _guidanceTypes;
};
_optionsList
