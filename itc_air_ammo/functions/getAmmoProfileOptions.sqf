params ["_ammo"];
_optionsList = [];
//option: [key, value, label, dataType, dataOptions]
_noseFuze = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_noseFuze");
_optionsList = _optionsList + (["nose",_noseFuze,"N/"] call itc_air_ammo_fnc_getFuzeOptions);

_tailFuze = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_tailFuze");
_optionsList = _optionsList + (["tail",_tailFuze,"T/"] call itc_air_ammo_fnc_getFuzeOptions);

if(_tailFuze != "" && _noseFuze != "") then {
  _optionsList pushBack ["fuzeSel","N/T","FUZE","cycle",["N/T","NOSE","TAIL"]];
};

_guidanceTypes =  (configFile >> "CfgAmmo" >> _ammo >> "ITC_guidanceOptions") call BIS_fnc_getCfgData;
if(!isNil {_guidanceTypes}) then {
  {
    switch(_x) do {
      case "sdb": {
        _optionsList pushBack ["impAz","60","IMP AZ","UFC",{(_this >= 0 && _this <= 360)}];
      };
      case "jdam": {
        _optionsList pushBack ["impAng","60","IMP ANG","UFC",{(_this > 9 && _this < 90)}];
      };
      case "laser": {
        _optionsList pushBack ["laserCode","1111","LASER CODE","UFC",{[_this] call itc_air_common_fnc_is_laser_code}];
      };
      case "autolaser": {
        _optionsList pushBack ["autolaser","OFF","AUTO LS","cycle",["ON","OFF"]];
      };
      case "harpoon": {
        _optionsList pushBack ["launchMode","BOL","LAUNCH MODE","cycle",["BOL","R/BL"]];
        _optionsList pushBack ["flyOut","LOW","FLT","cycle",["LOW","MED","HIGH"]];
        _optionsList pushBack ["terminal","SKIM","TERM","cycle",["SKIM","POP"]];
        _optionsList pushBack ["seek","SML","R/BL SEEK","cycle",["SML","MED","LRG"]];
        _optionsList pushBack ["search","10","BOL SRCH","UFC",{(_this > 0)}];
        _optionsList pushBack ["destruct","20","BOL DESTR","UFC",{(_this > 10)}];
        _optionsList pushBack ["bearing","0","BOL BRG","UFC",{(_this > -1 && _this <= 360)}];
        //_optionsList pushBack ["fxp","OFF","BOL FXP","cycle",["ON","OFF"]];
        //_optionsList pushBack ["fxp_pos","","BOL FXP","STPT",""];
        _optionsList pushBack ["hptp","OFF","BOL HPTP","cycle",["ON","OFF"]];
        _optionsList pushBack ["hptp_pos","","BOL HPTP","STPT",""];
      };
    };
  }forEach _guidanceTypes;
};
_optionsList
