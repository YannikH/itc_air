params["_vehicle"];
private _hasRadar = isClass (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "Components" >> "SensorsManagerComponent" >> "Components" >> "ActiveRadarSensorComponent" >> "AirTarget");

private _rwrSymb = [_vehicle] call itc_air_ew_fnc_getRWRSymbol;
_vehicle setVariable ["itc_rwr_symbol",_rwrSymb];

if(_hasRadar) then {
  itc_air_ew_radars pushBackUnique _vehicle;
};
