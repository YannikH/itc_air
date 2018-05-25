params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"
switch(_btn) do {
  case "L5": {
    _display setVariable ["app", "stpt"];
  };
  case "R5": {
    _display setVariable ["app", "options"];
  };
};
false
