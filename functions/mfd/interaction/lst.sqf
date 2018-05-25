params ["_namespace","_btn"];

(_btn splitString "") params ["_side", "_num"];
_i = (parseNumber _num) - 1;
_i = if(_side == "L") then [{_i},{_i + 5}];
_namespace setVariable["page",toLower ((_namespace getVariable "pages") select _i)];
