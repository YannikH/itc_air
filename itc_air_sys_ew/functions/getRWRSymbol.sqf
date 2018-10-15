params ["_vehicle"];

private _icon = "itc_air_sys_ew\data\UI\AAA.paa";

{
  if(_vehicle isKindOf (_x # 0)) exitWith {
    _icon = (_x # 1);
  };
} forEach itc_air_ew_rwr_lookup;

_icon
