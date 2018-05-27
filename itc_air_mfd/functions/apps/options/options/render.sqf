params ["_display"];

_vehicle = vehicle player;
_options = _vehicle getVariable "itc_air_options";

_list = (_display displayCtrl 51500);
for "_i" from 0 to (count _options - 1) step 1 do {
  (_options # _i) params ["_namespace","_key","_value","_label","_onChange","_dataType","_dataInfo","_dataVar"];
  _list lbSetTextRight [_i,format["%1",_value]];
};
(_display displayCtrl 51011) ctrlSetText format["%1", _options # 0 # 3];
(_display displayCtrl 51013) ctrlSetText format["%1", _options # 0 # 2];
