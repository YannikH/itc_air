/*
 * Draws pitch indicator and attitude warning
 * params: pitch and bank of the vehicle
 */
params["_pitch", "_bank"];

//Draw CHECK ATTITUDE warning
if(_bank > 75 || _bank < -75 || _pitch > 20 || _pitch < -20) then {
    ["<t color='#ff0000' size = '.8'>CHECK<br />ATTITUDE</t>",-1,1,0,0,0, 790] spawn BIS_fnc_dynamicText;
};

//draw pitch indicator

//make the pitch range from 0 to 40 for math
_pitchRelative = _pitch + 20;
if(_pitchRelative < 0) then {_pitchRelative = 0;};
if(_pitchRelative > 40) then {_pitchRelative = 40};
//calculate the Y coordinate for the current pitch
_yPos = 1.055 - (_pitchRelative * (0.155 / 40));

//draw the frame
["<t color='#ff0000' size = '.8'>--</t>",-0.73,1.055,0,0,0, 800] spawn BIS_fnc_dynamicText;     //+20 deg
["<t color='#ff0000' size = '.8'>--</t>",-0.73,0.9,0,0,0, 801] spawn BIS_fnc_dynamicText;       //0 deg
["<t color='#ff0000' size = '.8'>--  --</t>",-0.73,0.9775,0,0,0, 802] spawn BIS_fnc_dynamicText;//-20 deg
//draw the current pitch
["<t color='#ff0000' size = '.8'>--</t>",-0.73,_yPos,0,0,0, 803] spawn BIS_fnc_dynamicText;