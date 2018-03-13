/*
 * Draws situational awareness cue
 */
params ["_plane"];

//find out the yaw and pitch
_yawPitchPodRad =  [_plane] call itc_air_common_fnc_get_turret_rotation;
_yawPitchPodRad params ["_yawRad", "_pitchRad"];

//convert to degrees
_yawPod = (_yawPitchPodRad select 0) * 180 / pi;
_pitchPod = (_yawPitchPodRad select 1) * 180 / pi;

//make a range for drawing on the screen
_range = (0.8 / 90 * (90 -_pitchPod));

//calculate coordinates based on range
_x = 0 + (sin(_yawPod) * _range * -1);
_y = 0.475 + (cos(_yawPod) * _range * -1);

//print
["<img size='0.2' image='itc_air\data\UI\SAC.paa' />",_x,_y,0,0,0, 791] spawn BIS_fnc_dynamicText;