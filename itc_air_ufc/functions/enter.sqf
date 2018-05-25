_display = uiNameSpace getVariable itc_air_ufc_target;
if(itc_air_ufc_parseInt) then {
  itc_air_ufc_input = parseNumber itc_air_ufc_input;
};
[_display, "UFC", itc_air_ufc_variable, itc_air_ufc_input] call (_display getVariable "appInteract");
[_display, "UFC", itc_air_ufc_variable, itc_air_ufc_input] call (_display getVariable "pageInteract");
itc_air_ufc_input = "";
