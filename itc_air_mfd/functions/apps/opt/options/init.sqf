params ["_display"];
(_display displayCtrl 10500) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"

_vehicle = vehicle player;
_options = _vehicle getVariable "itc_air_options";

_list = (_display displayCtrl 51500);
lbClear _list;
for "_i" from 0 to (count _options - 1) step 1 do {
  (_options # _i) params ["_namespace","_key","_value","_label","_onChange","_dataType","_dataInfo","_dataVar"];
  _index = _list lbAdd _label;
  _list lbSetTextRight [_index,format["%1",_value]];
};
_list lbSetCurSel 0;
(_display displayCtrl 51011) ctrlSetText format["%1", _options # 0 # 3];
(_display displayCtrl 51013) ctrlSetText format["%1", _options # 0 # 2];
