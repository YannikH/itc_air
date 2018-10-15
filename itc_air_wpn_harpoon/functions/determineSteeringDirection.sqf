(_this select 0) params ["_projectile","_frameTime","_settings","_stage","","","_target"];
_settings params ["_flyOut","_terminal","_search","_destruct","_bearing","_fxp","_fxpPos","_hptp","_hptpPos"];
//player sideChat _stage;
private _return = [0,0,_stage];
switch(_stage) do {
  case "HPTP": {
    _return = _this call itc_air_harpoon_fnc_steerHPTP;
  };
  case "FLT": {
    _return = _this call itc_air_harpoon_fnc_steerFLT;
  };
  case "TERM": {
    _return = _this call itc_air_harpoon_fnc_steerTerminal;
  };
};

_return
