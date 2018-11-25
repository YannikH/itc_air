params ["_plane"];
ITC_AIR_MAVERICK_LOCK = [];
ITC_AIR_MAVERICK_SLEWSPD = 5;
ITC_AIR_MAVERICK_CAMSIDE = 1;
ITC_AIR_MAVERICK_GSTAB = false;
ITC_AIR_MAVERICK_DIR = [0,-5];
ITC_AIR_MAVERICK_TRACK = [0,1000,-100];
js_jc_fa18_mfd_mav_wfov = true;

_plane setVariable ["itc_air_lmav_code",1111];
itc_air_lmav_draw_x = 0.5;
itc_air_lmav_draw_y = 0.5;
itc_air_lmav_draw_dir = 1;
itc_air_lmav_lock = false;
