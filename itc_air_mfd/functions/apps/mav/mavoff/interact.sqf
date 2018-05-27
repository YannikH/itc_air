params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];
_vehicle = (vehicle player);
switch(_btn) do {
  case "T1": {
    _display setVariable ["page","lmav"];
  };
};
false
