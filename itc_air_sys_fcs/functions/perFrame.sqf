params ["_plane"];

if(itc_air_fcs_releaseKeyDown && itc_air_fcs_ccrpOn) then {_this call itc_air_fcs_fnc_ccrpPerFrame;};
