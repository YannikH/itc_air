params ["_plane"];

if(itc_air_fcs_ccrp_frame < 10) exitWith {itc_air_fcs_ccrp_frame = itc_air_fcs_ccrp_frame + 1;};
private _impactPoint = [currentMagazine _plane, _plane] call itc_air_fcs_fnc_calculateImpact;

player sideChat str (_impactPoint # 1);
drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [_impactPoint # 0 # 0, _impactPoint # 0 # 1, 1], 1, 1, 0, "", 0, 0.05, "PuristaMedium"];
