params ["_mfd", "_dir"];
_add = (_dir vectorMultiply 100);
if(itc_air_tad_expand == 1) then {
  itc_air_tad_pos = itc_air_tad_pos vectorAdd _add;
} else {
  itc_air_tad_cursor = itc_air_tad_cursor vectorAdd _add;
};
