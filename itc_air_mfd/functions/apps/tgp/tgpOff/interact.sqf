params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
(_btn splitString "") params ["_side", "_num"];
switch(_btn) do {
  case "T2": {
    _display setVariable ["page", "tgpOn"];
  };
};
false
