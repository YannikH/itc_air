params ["_display", "_btn"];
#include "..\..\mfdDefines.hpp"

switch(_btn) do {
  case "T1": {
    _display setVariable ["page","lmav"];
  };
  case "T5": {
    _display setVariable ["page","ccdmav"];
  };
};
false
