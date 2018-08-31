_plane = vehicle player;
_centerPos = if(itc_air_tad_expand == 0) then [{getPos _plane}, {itc_air_tad_pos}];
_target = _centerPos vectorAdd (itc_air_tad_cursor vectorMultiply itc_air_tad_fov);
_target = [_target select 0, _target select 1, getTerrainHeightASL _target];
_target
