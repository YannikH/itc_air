params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
_fuze = ITC_AIR_PROGFUZE;

if (!local _gunner) exitWith {};

//FUZES
[{
    (_this select 0) params ["_gunner", "_projectile", "_distance", "_ammo", "_position", "_targetIndex", "_fuze","_velocity", "_dir", "_prevPosition"];
    _type = getText (configFile >> "CfgAmmo" >> _ammo >> "ITC_subMunition");
    if (alive _projectile) then {
        if(_position select 0 != _prevPosition select 0 && _position select 1 != _prevPosition select 1 && _position select 2 != _prevPosition select 2) then {
            (_this select 0) set [9, _position];
        };
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

    if (!alive _projectile) then {
        //player sideChat format ["POS %1", _position vectorDiff _prevPosition];
        drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_position,[0,0,0],1,1.275,1.0,0.0,[1],[[0,0,1,1]],[0],0.0,2.0,"","",""];
        _posCorrection = _position vectorDiff _prevPosition;
        _position = _position vectorAdd _posCorrection;
        if(_fuze == "dly") then {
            _movement = _velocity vectorMultiply 0.025;
            _newPos = _position vectorAdd _movement;
            if(_newPos select 2 < 0) then {
                _newPos = [_newPos select 0, _newPos select 1, 0.1];
            };
            _bomb = createVehicle [_type, _newPos, [], 0, "FLY"];
            [player, _type, _bomb] call ace_frag_fnc_addPfhRound;
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_position,[0,0,0],1,1.275,1.0,0.0,[1],[[1,0,0,1]],[0],0.0,2.0,"","",""];
            drop ["\a3\data_f\Cl_basic","","Billboard",1,20,_newPos,[0,0,0],1,1.275,1.0,0.0,[1],[[0,1,0,1]],[0],0.0,2.0,"","",""];
        };
        if(_fuze == "pd") then {
          _bomb = createVehicle [_type, _position, [], 0, "FLY"];
          [player, _type, _bomb] call ace_frag_fnc_addPfhRound;
        };
        [_this select 1] call CBA_fnc_removePerFrameHandler;
    };
}, 0, [_gunner, _projectile, _distance, _ammo, getPosATL _projectile, _targetIndex, _fuze, [0,0,0], 0, getPosATL _projectile]] call CBA_fnc_addPerFrameHandler;
