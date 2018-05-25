params ["_start", "_end"];
_i = 0;
while {_i < 100} do {
    _relPos = [0.1, 360 / 100 * _i];
    //_startPos = (_start getPos _relPos) vectorAdd [0, 0, _start select 2];
    _relStart = _start getPos _relPos;
    _startPos = [_relStart select 0, _relStart select 1, _start select 2];
    _relEnd = _end getPos _relPos;
    _endPos = [_relEnd select 0, _relEnd select 1, _end select 2];
    drawLine3d[_startPos, _endPos, [1,1,1,1]];
    _i = _i + 1;
};