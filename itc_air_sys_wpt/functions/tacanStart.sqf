private _station = nil;
{
  if((_x # 0) == itc_air_wpt_tacanCDE) exitWith {
    _station = _x;
  };
}forEach itc_air_wpt_tacan_stations;

if(isNil{_station}) exitWith {};

_station params ["_freq","_ident","_position"];
itc_air_wpt_tcn_on = true;
itc_air_wpt_tcn_pos = _position;
itc_air_wpt_tcn_id = _ident;
