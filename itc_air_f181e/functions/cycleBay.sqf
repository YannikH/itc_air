params ["_value"];
private _vehicle = vehicle player;
private _bayState = if(_value == "OPEN") then [{1},{-1}];
_vehicle animateBay [3, _bayState];
