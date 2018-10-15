params ["_display"];
#include "..\..\mfdDefines.hpp"
REQUIRE("EW");

private _map = _display displayCtrl 61500;
_map ctrlShow true;

_map ctrlMapAnimAdd [0, 1, [0,0,0]];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;

"ew"
