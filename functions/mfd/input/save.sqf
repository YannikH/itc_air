params ["_mfdNameSpace", "_display"];
_namespace = uiNameSpace getVariable _mfdNameSpace;
(_namespace getVariable "input_limits") params ["_parseInt","_conditions"];
_ctrl = ((findDisplay (_namespace getVariable "input_idc")) displayCtrl 1707);
_text = (ctrlText _ctrl);
if(_parseInt) then {
    _text = parseNumber _text;
};
_namespaceTarget = _namespace getVariable "input_namespace";
_var = _namespace getVariable "input_var";
_namespaceTarget setVariable [_var, _text];
closeDialog (_namespace getVariable "input_idc");