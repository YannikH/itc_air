
params ["_namespace","_targetNamespace","_var","_label","_limits"];
_namespace setVariable ["input_limits", _limits];
_namespace setVariable ["input_namespace", _targetNamespace];
_namespace setVariable ["input_var",_var];
createDialog "MFD_L_INPUT";
_ctrl = ((findDisplay 19993) displayCtrl 1707);
ctrlSetFocus _ctrl;
ctrlSetText[1712, _label];