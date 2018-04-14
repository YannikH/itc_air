params ["_namespace","_btn"];
_plane = vehicle player;
if((currentWeapon _plane) isKindOf ["itc_weap_gbu38", configFile >> "CfgWeapons"]) then {
  switch (_btn) do {
      case "L1": {["fuze",1] call itc_air_jdam_fnc_config_bomb;};
      case "L2": {[_namespace,missionNameSpace, "ITC_AIR_IMPANGLE", "IMPACT ANGLE", [true, {(_this > 9 && _this < 90)}], true] call itc_air_mfd_fnc_input_start;};
      case "R1": {[_namespace,_plane, "laser_code_recv", "LASER CODE", [true, {[_this] call itc_air_common_fnc_is_laser_code}], true] call itc_air_mfd_fnc_input_start};
  };
};

if((currentWeapon _plane) isKindOf ["Mk82BombLauncher", configFile >> "CfgWeapons"]) then {
  switch (_btn) do {
      case "R2": {
        _modes = ["SGL","PRS","RIP SGL", "RIP PRS"];
        _index = _modes find (_plane getVariable "rip_mode");
        _index = if(_index + 1 < count _modes)then[{_index + 1},{0}];
        _plane setVariable ["rip_mode", _modes # _index, true];
      };
      case "R3": {[_namespace,_plane, "rip_qty", "RIPPLE QUANTITY", [true, {(_this > 0)}], true] call itc_air_mfd_fnc_input_start};
      case "R4": {[_namespace,_plane, "rip_dist", "RELEASE DISTANCE (M)", [true, {(_this > 5)}], true] call itc_air_mfd_fnc_input_start};
      case "R5": {
        _plane setVariable["rip_cycle",!(_plane getVariable "rip_cycle"), true];
      };
  };
};
