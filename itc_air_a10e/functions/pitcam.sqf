_plane = vehicle player;

itc_air_a10e_pitcam = "camera" camCreate (getPos _plane);
itc_air_a10e_pitcam camSetFov (_plane getVariable "tgp_fov");
//_cam attachTo [_plane, [2.7,2,-0.8]];
itc_air_a10e_pitcam cameraEffect ["internal", "BACK", "TGP_PIT_FEED"];
itc_air_a10e_pitcam camCommit 0;
systemChat "cam init";
