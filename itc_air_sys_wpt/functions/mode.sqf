private _modeIndex = itc_air_wpt_steer_pt_modes find itc_air_wpt_steer_pt_mode;
_modeIndex = if(_modeIndex == (count itc_air_wpt_steer_pt_modes) - 1) then [{0},{_modeIndex + 1}];

itc_air_wpt_steer_pt_mode = itc_air_wpt_steer_pt_modes # _modeIndex ;
itc_air_wpt_steer_pt_var = itc_air_wpt_steer_pt_vars # _modeIndex;

ITC_AIR_UFC_FXD1_COLUMNS_TXT set [0,itc_air_wpt_steer_pt_mode];
