params ["_plane"];

if(itc_air_fcs_ccrp_frame < 10) exitWith {itc_air_fcs_ccrp_frame = itc_air_fcs_ccrp_frame + 1;};
itc_air_fcs_ccrp_frame = 0;
private _impactPoint = itc_air_fcs_ccip_impactPos;
if((_plane getVariable "rip_mode") == "RIP SGL" || {(_plane getVariable "rip_mode") == "RIP PRS"}) then {
  private _rippleAdjust = ((_plane getVariable "rip_qty") * (_plane getVariable "rip_dist")) / 2;
  private _rippleDir = (getPos _plane) getDir _impactPoint;
  _impactPoint = _impactPoint getPos [_rippleAdjust, _rippleDir];
};

itc_air_ccrp_lastPickleHold = time;
_plane = vehicle player;
//([currentMagazine _plane, _plane] call itc_air_fcs_fnc_calculateImpact) params ["_impactPos", "_tof"];
//_impactPoint = [currentMagazine _plane, _plane] call getDrawPos;
//_impactPoint = _plane call getDrawPos;;
//drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [_impactPoint # 0 # 0, _impactPoint # 0 # 1, 1], 1, 1, 0, "", 0, 0.05, "PuristaMedium"];
_targ = itc_air_spi;
_dist = _targ distance2D _impactPoint;
//player sideChat str _dist;
if((_plane distance2D _targ < _plane distance2D _impactPoint) && _dist < 100 && !itc_air_ccrp_PickleRelease) then {
    //player forceWeaponFire [currentWeapon _plane,currentWeapon _plane];
    private _currentWeapon = currentWeapon _plane;
    private _mode = (getArray (configFile >> "cfgweapons" >> _currentWeapon >> "modes")) select 0;
    if (isNil {_mode} || {_mode == "this"}) then {_mode = _currentWeapon;};
    player forceWeaponFire [_currentWeapon,_mode];
    itc_air_ccrp_PickleRelease = true;
    //player sideChat format ["PICKLE RELEASE TOF %1", round (_impactPoint # 1)];
};
if(!itc_air_ccrp_PickleRelease) then {
    //player sideChat format ["PICKLE HOLD %1", _dist];
};
itc_air_ccrp_lastDist = _dist;

//player sideChat str (_impactPoint # 1);
//drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [_impactPoint # 0 # 0, _impactPoint # 0 # 1, 1], 1, 1, 0, "", 0, 0.05, "PuristaMedium"];
