params ["_namespace","_targetNamespace","_var","_label","_limits"];
_namespace setVariable ["input_limits", _limits];
_namespace setVariable ["input_namespace", _targetNamespace];
_namespace setVariable ["input_var",_var];

createDialog (_namespace getVariable "input");

_ctrl = ((findDisplay (_namespace getVariable "input_idc")) displayCtrl 1707);
ctrlSetFocus _ctrl;
ctrlSetText[1712, _label];