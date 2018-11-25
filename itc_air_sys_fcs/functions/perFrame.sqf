params ["_plane"];

_this call itc_air_fcs_fnc_ccipPerFrame;

if(itc_air_fcs_releaseKeyDown && itc_air_fcs_ccrpOn) then {_this call itc_air_fcs_fnc_ccrpPerFrame;};

if(itc_air_fcs_overrideITGT) then {
  _plane setvariable ["ITGT_NEW", "yes"];
  _plane setvariable ["ITGT_C_DATA", ASLtoAGL itc_air_spi];
};
