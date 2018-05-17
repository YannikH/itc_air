/*
 *  Receives a SADL message
 *  Params: recipient ID format ID-GR, message(array of 10 strings), sender ID format ID-GR
 *  Returns: nothing
 */

params ["_to", "_msg", "_from"];
_plane = vehicle player;

(_to splitString "-") params ["_id", "_grp"];
if(_grp == _plane getVariable "SADL_GRP") then {
  if(_id == _plane getVariable "SADL_ID" || _id == "00") then {
    _msgs = _plane getVariable "SADL_MSGS";
    _plane setVariable ["SADL_MSGS", _msgs + [[_to, _msg, _from]]];
    hint "NEW MSG";
  };
};
