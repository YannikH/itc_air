params ["_display"];
(_display displayCtrl 10102) ctrlShow true;
#include "..\..\..\mfdDefines.hpp"
#include "..\dsmsMacros.hpp"
PROFILELOAD(PROFILEEDITNAME);
(_display displayCtrl T1) ctrlSetText "STAT";
_plane = vehicle player;

(_display displayCtrl 121000) ctrlSetText _profileName;
(_display displayCtrl 121003) ctrlSetText str _rip_qty;
(_display displayCtrl 121007) ctrlSetText _release_mode;
 (_display displayCtrl R2) ctrlSetText _rip_mode;
 if(_type == "bomb") then {
  (_display displayCtrl 121004) ctrlSetText "M";
  (_display displayCtrl 121005) ctrlSetText str _rip_dist;
  (_display displayCtrl 121006) ctrlSetText "MODE";
} else {
  (_display displayCtrl 121004) ctrlSetText "";
  (_display displayCtrl 121005) ctrlSetText "";
  (_display displayCtrl 121006) ctrlSetText "";
  (_display displayCtrl 121007) ctrlSetText "";
};

_text = "";
{
  _x params ["_key","_value","_label"];
  _text = _text + "<t color='#00ff00' align='left'>" + _label + ":</t>";
  _text = _text + "<t color='#00ff00' align='right'>" + _value + "</t>";
  _text = _text + "<br/>";
}forEach _profileOptions;
_display setVariable ["profileOptionIndex", 0];
if(count _profileOptions > 0) then {
  (_profileOptions # 0) params ["_key","_value","_label", "_dataType"];
    (_display displayCtrl 121010) ctrlSetText "SEL";
    (_display displayCtrl 121011) ctrlSetText _label;
    (_display displayCtrl 121012) ctrlSetText "VAL";
    (_display displayCtrl 121013) ctrlSetText _value;
};
(_display displayCtrl 121100) ctrlSetStructuredText parseText _text;
