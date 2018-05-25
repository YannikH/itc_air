params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];
_plane = vehicle player;
if(_side == "B") exitWith {};
if(_side == "T") exitWith {
  switch(_btn) do {
    case "T2": {
      _display setVariable ["page", "profilemain"];
    };
    case "T3": {
      _plane selectWeapon (((_plane getVariable "profiles") # (_plane getVariable "gunProfile")) # 0 # 0);
    };
    case "T4": {
      _display setVariable ["page", "inventory"];
    };
  };
  false
};

_i = (parseNumber (_num)) - 1;
_i = if(_side == "R") then [{_i + 5},{_i}];
_plane selectWeapon ((_plane getVariable "inventory") # _i # 2);

false
