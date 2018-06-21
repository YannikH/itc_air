params ["_display", "_btn"];
(_btn splitString "") params ["_side", "_num"];

private _plane = vehicle player;

switch(_btn) do {
  case "L5": {
    private _bayPhase = _plane animationPhase "weapons_bay_c_1";
    private _stateText = if(_bayPhase > 0.5) then [{"CLOSED"},{"OPEN"}];
    [_stateText] call itc_air_f181e_fnc_cycleBay
  };
};

_this call test_interact_sms;

false
