params ["_display"];
_vehicle = vehicle player;

private _map = _display displayCtrl 61500;
(ctrlPosition _map) params ["_x","_y","_w","_h"];
private _radius = ((_map ctrlMapScreenToWorld [_x,_y]) distance (_map ctrlMapScreenToWorld [_x + _w,_y])) / 2;

private _tcnDir = (player getDir itc_air_wpt_tcn_pos) - getDir _vehicle;
private _tcnDist = (player distance itc_air_wpt_tcn_pos);

private _relPos = (_vehicle worldToModel itc_air_wpt_tcn_pos) vectorMultiply 0.25;
_map drawIcon ["itc_air_sys_wpt\data\UI\TACAN.paa", [1,1,1,1], _relPos, 20, 20, 0,  ".", 0, 0.01];

private _tcnDirBase = if(abs _tcnDir > 90) then [{_tcnDir - 180},{_tcnDir}];

private _lineBeg = _relPos getPos [-1*(_radius * 1.5), itc_air_wpt_tcn_dir - (getDir _vehicle)];
private _lineEnd = _relPos getPos [(_radius * 1.5), itc_air_wpt_tcn_dir - (getDir _vehicle)];
_map drawArrow [_lineBeg, _lineEnd,[0,1,0,1]];

private _iconPos = [0,0,0] getPos [_radius * 0.8, _tcnDir];
_map drawIcon ["itc_air_sys_wpt\data\UI\TACAN_T.paa", [1,1,1,1], _iconPos, 20,20, _tcnDir,  ".", 0, 0.01];

_tof = _tcnDist / (0.01 + (vectorMagnitude (velocity _vehicle)));
_tofStr = format["%1:%2",round(_tof / 60), round (_tof % 60)];

(_display displayCtrl 211002) ctrlSetText format["%1 / %2km",round (player getDir itc_air_wpt_tcn_pos),round (_tcnDist / 1000)];
(_display displayCtrl 211003) ctrlSetText _tofStr;
(_display displayCtrl 211004) ctrlSetText itc_air_wpt_tcn_id;
