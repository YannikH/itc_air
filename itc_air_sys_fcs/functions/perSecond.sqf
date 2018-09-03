params ["_plane"];

//reset ToT indicator time;
if(cba_missionTime > (itc_air_fcs_firedTime + itc_air_fcs_tof)) then {
  itc_air_fcs_firedTime = -1;
  itc_air_fcs_tof = -1;
};
