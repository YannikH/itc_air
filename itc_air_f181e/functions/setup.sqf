params ["_vehicle"];
[_vehicle, [_vehicle,"itc_air_f181_bay","CLOSED","MAIN BAY",{
  _this call itc_air_f181e_fnc_cycleBay;
},"cycle",["CLOSED","OPEN"]]] call itc_air_common_fnc_addOption;
