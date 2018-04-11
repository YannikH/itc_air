params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {
      [_namespace,_namespace, "stpt_name", "STPT NAME", [false, {_this != ""}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L2": {
      [_namespace,_namespace, "stpt_pos_str", "STPT POS", [false, {_this != ""}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L3": {
      [_namespace,_namespace, "stpt_el", "STPT POS", [true, {_this > 0}], false] call itc_air_mfd_fnc_input_start;
    };
    case "L4": {
      if(ITC_AIR_CURRENTWP == 0) exitWith {}; //already the first WP
      _wpList = ace_player getVariable "ace_microdagr_waypoints";
      _prevWP = _wpList select (ITC_AIR_CURRENTWP - 1);
      _wpList set [ITC_AIR_CURRENTWP - 1, _wpList select ITC_AIR_CURRENTWP];
      _wpList set [ITC_AIR_CURRENTWP, _prevWP];
      ITC_AIR_CURRENTWP = ITC_AIR_CURRENTWP - 1;
    };
    case "L5": {
      _wpList = ace_player getVariable "ace_microdagr_waypoints";
      if(ITC_AIR_CURRENTWP == (count _wpList) - 1) exitWith {}; //already the last WP
      _nextWP = _wpList select (ITC_AIR_CURRENTWP + 1);
      _wpList set [ITC_AIR_CURRENTWP + 1, _wpList select ITC_AIR_CURRENTWP];
      _wpList set [ITC_AIR_CURRENTWP, _nextWP];
      ITC_AIR_CURRENTWP = ITC_AIR_CURRENTWP + 1;
    };
    case "R1": {
      [-1] call itc_air_steerpoints_fnc_cycle;
    };
    case "R2": {
      [1] call itc_air_steerpoints_fnc_cycle;
    };
    case "R4": {
      _wpList = ace_player getVariable "ace_microdagr_waypoints";
      _wpList deleteAt ITC_AIR_CURRENTWP;
    };
    case "R5": {
      [format["Mark %1", ITC_AIR_POI_NUM], [0,0,0]] call ace_microdagr_fnc_deviceAddWaypoint;
      ITC_AIR_POI_NUM = ITC_AIR_POI_NUM + 1;
    };
};
