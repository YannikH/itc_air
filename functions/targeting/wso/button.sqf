params ["_namespace","_btn"];
_namespace = uiNamespace getVariable _namespace;
switch (_btn) do {
    case "L3": {
      _plane = (vehicle player);
      _index = _plane getVariable "tgp_mode";
      _index = if(_index + 1 > 2) then [{0}, {_index + 1}];
      _plane setVariable ["tgp_mode", _index];
    };
    case "R3": {
      _plane = (vehicle player);
      _mode = _plane getVariable "tgp_lsst_mode";
      switch(_mode) do {
        case "LSS OFF": {_plane setVariable ["tgp_lsst_mode", "LSS"];};
        case "LSS": {_plane setVariable ["tgp_lsst_mode", "LSS OFF"];};
        case "LST": {_plane setVariable ["tgp_lsst_mode", "LSS OFF"];};
      };
    };
    case "R4": {
      _plane = (vehicle player);
      _curStep = _plane getVariable "tgp_fov_index";
      _steps = _plane getVariable "tgp_fov_steps";
      _curStep = (_curStep + 1) min ((count _steps) - 1);
      _plane setVariable ["tgp_fov_index", _curStep];
      _plane setVariable ["tgp_fov", _steps select _curStep];
    };
    case "R5" : {
      _plane = (vehicle player);
      _curStep = _plane getVariable "tgp_fov_index";
      _steps = _plane getVariable "tgp_fov_steps";
      _curStep = (_curStep - 1) max 0;
      _plane setVariable ["tgp_fov_index", _curStep];
      _plane setVariable ["tgp_fov", _steps select _curStep];
    };
};
