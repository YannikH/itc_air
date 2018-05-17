[{
    call test_fnc_laser;
}, 0, []] call CBA_fnc_addPerFrameHandler;

test_fnc_laser = {
      _equipped = "rhsusf_acc_anpeq15" in primaryWeaponItems player;
      _laser = player isIRLaserOn currentWeapon player;
      if(_equipped && _laser) then {
            _weaponLocal = player selectionPosition "hand_r";
            _weaponWorld = player modelToWorld _weaponLocal;

            _dir = player weaponDirection (currentWeapon player);
            _dirNorm = vectorNormalized _dir;
            _dirDist = _dirNorm vectorMultiply 8000;
            _dirPoint = _weaponWorld vectorAdd _dirDist;

            _startPos = (_dirNorm vectorMultiply 1.5) vectorAdd _weaponWorld;

            _intersects = lineIntersectsSurfaces  [_startPos, _dirPoint, player, objNull, true, -1, "VIEW"];
            _intersectPos = _intersects select 0 select 0;
            drawLine3d[_startPos, _dirPoint, [1,1,1,1]];

            if(isNil {_intersectPos}) then {
                _intersectPos = ASLtoATL _dirPoint;
            };
            _spread = sin (0.03093972) * (_startPos distance _dirPoint);
            for "_i" from 1 to 1000 step 1 do {
                _x = sin (360 / 1000 * _i) * _spread;
                _y = cos (360 / 1000 * _i) * _spread;
                if(_i % 500 == 0) then {player sideChat format["%1 %2", _i, _y] };
                _xRel = _dirPoint getPos [_x, getDir player + 90];
                _relEnd = [_xRel select 0, _xRel select 1, (_dirPoint select 2) + _y];
                drawLine3d[_startPos, _relEnd, [1,1,1,1]];
            };
      };
};

fnc_drawLaser = {
    
};