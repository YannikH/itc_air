params ["_display"];
#include "..\..\..\mfdDefines.hpp"
(_display displayCtrl 10600) ctrlShow true;
(_display displayCtrl 61500) ctrlShow true;
(_display displayCtrl 2200) ctrlShow false;

ITC_AIR_TAD_HOOKMODES = [
  ["HOOK","OWN"],
  ["OWN","HOOK"],
  ["HOOK","CURS"],
  ["CURS","HOOK"]
];
ITC_AIR_TAD_HOOKMODE = 0;
