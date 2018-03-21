params ["_capable"];
_plane = vehicle player;

_isITCAir = isClass (configFile >> "CfgVehicles" >> (typeOf _plane) >> "itc_air");
if(!_isITCAir) exitWith {false};

if(_capable == "any") exitWith {
  ((vehicle player) getVariable "mfd_l") || ((vehicle player) getVariable "mfd_r")
};

if(_capable == "left") exitWith { (vehicle player) getVariable "mfd_l" };
if(_capable == "right") exitWith { (vehicle player) getVariable "mfd_r" };
if(_capable == "hmd") exitWith { (vehicle player) getVariable "hmd" };
