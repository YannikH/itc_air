private _stabPos = screenToWorld [0.5,0.5];

if(!isNil{_stabPos}) then {
  ITC_AIR_HMD_TRACK = _stabPos;
  ITC_AIR_HMD_GSTAB = true;
};
