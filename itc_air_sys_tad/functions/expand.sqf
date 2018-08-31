itc_air_tad_expand = if(itc_air_tad_expand == 2) then [{0},{itc_air_tad_expand + 1}];
if(itc_air_tad_expand == 1) then {
  itc_air_tad_pos = ((getPos vehicle player) vectorAdd (itc_air_tad_cursor vectorMultiply itc_air_tad_fov));
};
itc_air_tad_cursor = [0,0,0];
