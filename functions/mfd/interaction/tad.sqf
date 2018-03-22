params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {
      _steps = [0.05,0.2,0.5,1];
      _fov = _namespace getVariable "tad_fov";
      _i = _steps find _fov;
      _i = if(_i == 0) then [{(count _steps) - 1}, {_i - 1}];
      _namespace setVariable ["tad_fov", _steps select _i];
    };
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
