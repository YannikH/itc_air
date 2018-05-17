params ["_namespace","_btn"];
switch (_btn) do {
    case "R1": {
      _scrollStart = _namespace getVariable "stat_scroll";
      _namespace setVariable ["stat_scroll",(_scrollStart - 1) max 0];
    };
    case "R2": {
      _scrollStart = _namespace getVariable "stat_scroll";
      _namespace setVariable ["stat_scroll",(_scrollStart + 1)];
    };
};
