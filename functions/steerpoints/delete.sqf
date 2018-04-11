params ["_index"];

_wpList = (vehicle player) getVariable "stpt_list";
_wpList deleteAt _index;
