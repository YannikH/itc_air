params["_vehicle"];
private _hasRadar = isClass (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "Components" >> "SensorsManagerComponent" >> "Components" >> "ActiveRadarSensorComponent");

if(_hasRadar) then {
  itc_air_ew_radars pushBackUnique _vehicle;
};
