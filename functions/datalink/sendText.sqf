/*
 *  Sends a SADL message
 *  Params: recipient ID format ID-GR, message(array of 10 strings)
 *  Returns: nothing
 */

params ["_to", "_msg"];

_plane = vehicle player;
_sadl = missionNameSpace getVariable "SADL";

_from = format["%1-%2", _plane getVariable "SADL_ID", _plane getVariable "SADL_GRP"];

[_to, _msg, _from] remoteExec ["itc_air_datalink_fnc_text_recv", _sadl, false];
