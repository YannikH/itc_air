params ["_plane"];
if(getPos _plane # 2 < 1 || !itc_air_gcas_on) exitWith {};

if(itc_air_gcas_warn) then {
  if(CBA_missionTime > itc_air_gcas_time + 2) then {
    itc_air_gcas_warn = false;
  };
};

if(getPos _plane # 2 < 33 && !(_plane getVariable ["itc_air_gearState",false])) then {
  itc_air_gcas_warn = true;
  itc_air_gcas_time = CBA_missionTime;
};
