params ["_plane"];
if(getPos _plane # 2 < 1 || !itc_air_gcas_on) exitWith {itc_air_gcas_warn = false;};

private _collide = [_plane, 1.5] call itc_air_gcas_fnc_checkCollide;
if(_collide) then {
  itc_air_gcas_warn = true;
  itc_air_gcas_time = CBA_missionTime;
  if(!(_plane getVariable ["itc_air_gearState",true]) && (ITC_AP_mode != 3 || !ITC_AP_isEnabled) && itc_air_agcas_on) then {
    systemChat "AGCAS RECOVER";
    ITC_AP_isEnabled = false;
    _plane spawn {
      sleep 0.05;
      ITC_AP_isEnabled = true;
      [_this, 3] call itc_air_autopilot_fnc_autopilot;
    };
  };
};
