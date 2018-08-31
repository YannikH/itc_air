params ["_mode"];
private _return = [0,0,0];
switch(_mode) do {
  case "HOOK": {
    _return = nil;
    if(typeName itc_air_tad_hook == "OBJECT") then {
      _return = getposASL itc_air_tad_hook;
    };
    if(typeName itc_air_tad_hook == "ARRAY") then {
      _return = itc_air_tad_hook # 2;
    };
  };
  case "OWN": {
    _return = getPosASL (vehicle player);
  };
  case "CURS": {
    _return = [] call itc_air_tad_fnc_cursorPos;
  };
};

_return
