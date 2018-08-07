params ["_capable"];
_plane = vehicle player;

_isITCAir = isClass (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air");
if(!_isITCAir || (player != driver _plane && player != gunner _plane && !(player getVariable "isCoPilot"))) exitWith {false};

if(_capable == "any") exitWith {
  ((vehicle player) getVariable "mfd_l") || ((vehicle player) getVariable "mfd_r")
};

if(_capable == "left") exitWith { (vehicle player) getVariable "mfd_l" && !isNil{uiNameSpace getVariable "ITC_AIR_MFD_L"} };
if(_capable == "right") exitWith { (vehicle player) getVariable "mfd_r" && !isNil{uiNameSpace getVariable "ITC_AIR_MFD_R"} };
//if(_capable == "center") exitWith { (vehicle player) getVariable "mfd_c" };
if(_capable == "hmd" || _capable == "hmcs") exitWith { (vehicle player) getVariable "hmd" };
