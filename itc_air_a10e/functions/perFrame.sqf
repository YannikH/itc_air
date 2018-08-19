params ["_plane"];
if(itc_air_a10e_pitcam_on) then {
  itc_air_a10e_pitcam camSetFov (_plane getVariable "tgp_fov");
  "TGP_PIT_FEED" setPiPEffect [_plane getVariable "tgp_mode"];
  _target = _plane getVariable "tgp_dir";
  _forwardModifier = vectorMagnitude (velocity _plane) * 0.2;
  itc_air_a10e_pitcam camSetPos (_plane modelToWorld [2.7,2 + _forwardModifier,-0.8]);
  itc_air_a10e_pitcam camSetTarget (ASLtoATL (_target select 1));
  itc_air_a10e_pitcam camCommit 0.2;
} else {
  camDestroy itc_air_a10e_pitcam;
  itc_air_a10e_pitcam cameraEffect ["terminate", "back", "TGP_PIT_FEED"];
};
