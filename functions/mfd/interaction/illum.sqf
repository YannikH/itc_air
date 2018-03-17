
params ["_mfdNameSpace"];
_namespace = uiNameSpace getVariable _mfdNameSpace;
_namespace setVariable ["illum", !(_namespace getVariable "illum")];