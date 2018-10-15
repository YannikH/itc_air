params ["_plane"];
private _interval = if(itc_air_fcs_releaseKeyDown && itc_air_fcs_ccrpOn) then [{5},{10}];
if(itc_air_fcs_ccip_frame < _interval) exitWith {itc_air_fcs_ccip_frame = itc_air_fcs_ccip_frame + 1;};
itc_air_fcs_ccip_frame = 0;

itc_air_fcs_ccip_enabled = true;
itc_air_fcs_startTime = diag_tickTime;

_info = [_plane] call itc_air_fcs_fnc_getDrawPos;
if(!isNil{_info} && {count _info == 4}) then {
  itc_air_fcs_ccip_impactTime = _info # 3;
};
itc_air_fcs_endTime = diag_tickTime;
_pos = _info select 0;
itc_air_fcs_ccip_resultIndex = _info select 1;
itc_air_fcs_posSamples set [itc_air_fcs_sampleIndex, _pos];

_sum = [0,0,0];
{
  _sum = _sum vectorAdd _x;
} forEach itc_air_fcs_posSamples;
itc_air_fcs_ccip_impactPos = _sum vectorMultiply itc_air_fcs_sampleRatio;
itc_air_fcs_sampleIndex = itc_air_fcs_sampleIndex + 1;
if(itc_air_fcs_sampleIndex > (itc_air_fcs_numSamples-1)) then {
  itc_air_fcs_sampleIndex = 0;
};
