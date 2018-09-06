itc_air_fcs_releaseKeyDown = false;

itc_air_fcs_ccrp_frame = 0;
itc_air_ccrp_lastPickleHold = time;
itc_air_ccrp_PickleRelease = false;
itc_air_ccrp_lastDist = 100;
itc_air_fcs_ccrpOn = false;

itc_air_fcs_ccip_impactTime = 0;

["ITC Air","itc_air_fcs_release","Weapon Release",{
  [] call itc_air_fcs_fnc_releaseDown;false
},{
  [] call itc_air_fcs_fnc_releaseUp;false
},[57, [false, false, false]]] call CBA_fnc_addKeybind;
