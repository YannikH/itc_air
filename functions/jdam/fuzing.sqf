params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_fuze = ITC_AIR_PROGFUZE;
ITC_AIR_DLY = 0.025;
if (!local _gunner) exitWith {};

//FUZES
[{
    (_this select 0) params ["_gunner", "_projectile", "_distance", "_ammo", "_position", "_targetIndex", "_fuze","_velocity", "_dir", "_hitPos"];
    _type = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_subMunition");
    if (alive _projectile) then {
        _position = getPosATL _projectile;
        (_this select 0) set [4, _position];

        _velocity = velocity _projectile;
        (_this select 0) set [7, _velocity];
        _dir = direction _projectile;
        (_this select 0) set [8, _dir];
    };

    _alt = (getPosATL _projectile) select 2;

    if(_fuze == "prox" &&(_alt < 9 || !alive _projectile )) exitWith {
        _bomb = createVehicle [_type, _position, [], 0, "FLY"];
        [player, _type, _bomb] call ace_frag_fnc_addPfhRound;
        deleteVehicle _projectile;
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };

    if(_fuze == "dly" && _alt < 100) then {
        _forwardPos = _position vectorAdd ((vectorNormalized _velocity) vectorMultiply 25);
        _startPos = _position vectorAdd ((vectorNormalized _velocity) vectorMultiply 1);
        _intersects = lineIntersectsSurfaces  [_startPos, _forwardPos, _projectile,_projectile, true,1,"VIEW","GEOM"];   
        _intersectPos = _intersects select 0 select 0;  //get the actual intersect position
        if(!isNil{_intersectPos}) then {
            (_this select 0) set [9, _intersectPos];
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_forwardPos,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];//red fwd
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_intersectPos,[0,0,0],1,1.275,1.0,0.0,[1],[[238,255,0,1]],[0],0.0,2.0,"","",""];//yellow intrs
        };
    };

    if (!alive _projectile) then {
        if(_fuze == "dly") then {
            player sideChat "dly1";
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_position,[0,0,0],1,1.275,1.0,0.0,[1],[[0,0,1,1]],[0],0.0,2.0,"","",""];//blue end
            if(isNil{_hitPos}) then {_hitPos = _position};
            _movement = _velocity vectorMultiply ITC_AIR_DLY;
            _newPos = _hitPos vectorAdd _movement;
            if(_newPos select 2 < 0) then {
                _newPos = [_newPos select 0, _newPos select 1, 0.1];
            };
            player sideChat format ["VEL %1 DIST %2", vectorMagnitude _velocity, _position distance _newPos];
            _bomb = createVehicle [_type, _newPos, [], 0, "FLY"];
            [player, _type, _bomb] call ace_frag_fnc_addPfhRound;
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_newPos,[0,0,0],1,1.275,1.0,0.0,[1],[[0,1,0,1]],[0],0.0,2.0,"","",""]; //green bomb
        };
        if(_fuze == "pd") then {
          _bomb = createVehicle [_type, _position, [], 0, "FLY"];
          [player, _type, _bomb] call ace_frag_fnc_addPfhRound;
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_position,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
        };
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
}, 0, [_gunner, _projectile, _distance, _ammo, getPosATL _projectile, _targetIndex, _fuze, [0,0,0], 0, [0,0,0]]] call CBA_fnc_addPerFrameHandler;