params ["_display", "_btn"];
#include "..\..\..\mfdDefines.hpp"

params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];

_plane = vehicle player;
private _apps = _display getVariable "apps";

switch(_btn) do {
  default {
    if(_side == "R" || _side == "L") then {
      _baseIndex = if(_side == "L") then [{-1},{4}];
      private _appIndex = _baseIndex + (parseNumber _num);
      if(_appIndex < count _apps && (parseNumber _num > 0)) then  {
        _display setVariable ["app", _apps # _appIndex];
      };
    };
  };
};

false
