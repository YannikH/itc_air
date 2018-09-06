params ["_plane"];
private _UI = uiNameSpace getVariable "ITC_AIR_HUD_UI";
(_plane call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
private _dir = vectorNormalized (vectorDir _plane);
private _vect = (getPosASL _plane) vectorFromTo (itc_air_wpt_pos);
private _dotProd = abs(_dir vectorDotProduct _vect);
private _dotProdCam = abs(_dir vectorDotProduct (eyeDirection player));

private _viewFOV = ((call cba_fnc_getFov) # 0) * 2;

(_UI displayCtrl 13379) ctrlShow (itc_air_fcs_ccrpOn);
if(!itc_air_fcs_ccrpOn) exitWith {};
(_UI displayCtrl 13379) ctrlShow (_dotProdCam > cos 8);

private _viewFOV = (call cba_fnc_getFov) # 0;
private _scaleW = ((0.243 / _viewFOV) * safeZoneW) / (getResolution # 4);
private _scaleH = (0.243 / _viewFOV) * safeZoneH;
//systemChat str [_scaleW,_scaleH];

private _fallLine = (_UI displayCtrl 1200);
private _slnLine = (_UI displayCtrl 1201);
private _pipper = (_UI displayCtrl 1202);
private _sln = (_UI displayCtrl 1203);

//private _camToImpDirRad = asin ((eyeDirection player) vectorDotProduct ((getPosASL _plane) vectorFromTo itc_air_fcs_ccip_impactPos));
private _camPitchOffset = (((eyeDirection player) call CBA_fnc_vect2Polar) # 2) - _pitch;
private _impDir = [(_plane getRelDir itc_air_fcs_ccip_impactPos)] call CBA_fnc_simplifyAngle180;
//  private _camOffSet = (((eyeDirection player )call CBA_fnc_vectDir) - (getDir _plane)) call CBA_fnc_simplifyAngle180;
//  private _impDirScreen = _impDir - _camOffSet;
private _targDir = [(_plane getRelDir itc_air_wpt_pos)] call CBA_fnc_simplifyAngle180;
//private _targDirScreen = _targDir - _camOffSet;

private _impDirRad = rad(_impDir) min 0.08 max -0.08;
private _targDirRad = rad(_targDir) min 0.08 max -0.08;

_fallLine ctrlShow (_dotProdCam > cos 8);
_pipper ctrlShow (_dotProdCam > cos 8);
//_slnLine ctrlShow (_dotProd > cos 8 && _dotProdCam > cos 8);
//_sln ctrlShow (_dotProd > cos 8 && _dotProdCam > cos 8);
_fallLine ctrlSetPosition [
  ((safeZoneW / 2) - (_scaleW/2)) + (_impDirRad * (safeZoneW / _viewFOV)),
  (0.5) * safeZoneH - (_scaleH/2),
  _scaleW,_scaleH
];
private _yMod = (((itc_air_fcs_ccip_impactPos distance2D itc_air_wpt_pos) / 3000) min 1) * (_scaleH*0.75);
_pipper ctrlSetPosition [
  ((safeZoneW / 2) - (_scaleW/2)) + (_impDirRad * (safeZoneW / _viewFOV)),
  (0.5) * safeZoneH - (_scaleH*0.75) + _yMod,
  _scaleW,_scaleH
];
_pipper ctrlCommit 0;
_fallLine ctrlCommit 0;
_slnLine ctrlSetAngle [-0,0.5,1];
_slnLine ctrlSetPosition [
  ((safeZoneW / 2) - (_scaleW/2)) + (_targDirRad * (safeZoneW / _viewFOV)),
  (0.5) * safeZoneH - (_scaleH/2),
  _scaleW,_scaleH
];
_sln ctrlSetPosition [
  ((safeZoneW / 2) - (_scaleW/2)) + (_targDirRad * (safeZoneW / _viewFOV)),
  (0.5) * safeZoneH - (_scaleH*0.75),
  _scaleW,_scaleH
];
_sln ctrlCommit 0;
_slnLine ctrlCommit 0;
