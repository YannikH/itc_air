_display = uiNameSpace getVariable itc_air_ufc_target;
private _outPut = itc_air_ufc_input;
if(itc_air_ufc_parseInt) then {
  _outPut = parseNumber _outPut;
};
if(!isNil{_display}) then {
  [_display, "UFC", itc_air_ufc_variable, _outPut] call (_display getVariable "appInteract");
  [_display, "UFC", itc_air_ufc_variable, _outPut] call (_display getVariable "pageInteract");
};

if(!isNil {itc_air_ufc_target_code}) then {
  [itc_air_ufc_variable, _outPut] call itc_air_ufc_target_code;
};
itc_air_ufc_input = "";
