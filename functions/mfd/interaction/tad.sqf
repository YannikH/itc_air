params ["_namespace","_btn"];
switch (_btn) do {
    case "L1": {
      _fov = _namespace getVariable "tad_fov";
      _fov = if(_fov - 0.1 < 0) then [{1}, {_fov - 0.1}];
      _namespace setVariable ["tad_fov", _fov];
    };
    case "B1": {[] call itc_air_mfd_fnc_swap;};
    case "B2": {_namespace setVariable["page","tad"];};
    case "B3": {_namespace setVariable["page","wpn"];};
    case "B4": {_namespace setVariable["page","sms"];};
    case "B5": {_namespace setVariable["page","lst"];};
};
