params ["", "_weapon", "", "_fireMode", "", "", "", ""];
if (!local _gunner || itc_air_ripple_active) exitWith {};
itc_air_ripple_active = true;
_plane = (vehicle player);
[
  _plane getVariable "rip_mode",
  _plane getVariable "rip_qty",
  _plane getVariable "rip_dist",
  _plane getVariable "rip_cycle"
] params ["_mode", "_qty", "_dist", "_cycle"];

_baseCount = if(_mode == "SGL" || _mode == "PRS") then [{1},{_qty}];
itc_air_ripple_dropcount = if(_mode == "PRS" || _mode == "RIP PRS") then [{_baseCount * 2}, {_baseCount}];
if(_plane getVariable "rip_cycle") then {
  [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
};

if(_mode == "PRS" || _mode == "RIP PRS") then {
  [_weapon, _fireMode] spawn {
    sleep 0.01;
    player forceWeaponFire [(_this # 0),(_this # 1)];
    if(vehicle player getVariable "rip_cycle") then {
      [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
    };
  };
};
if(_mode == "SGL" || _mode == "PRS") exitWith {itc_air_ripple_active = false;};
_qty = _qty - 1;
if(_qty == 0) exitWith {itc_air_ripple_active = false;};
[{
  (_this select 0) params ["_plane","_firedTime", "_firedPos", "_weapon", "_mode", "_qty", "_dist", "_cycle", "_fireMode"];
  if (!alive _plane || !itc_air_ripple_active || _qty == 0 || _firedTime + 20 < time) exitWith {
    //player sideChat "RIPPLE EXIT";
    [_this select 1] call CBA_fnc_removePerFrameHandler;
    itc_air_ripple_active = false;
  };
  if((getPos _plane) distance _firedPos > _dist) then {
    (_this select 0) set [2, getPos _plane];
    (_this select 0) set [5, (_qty - 1)];
    player forceWeaponFire [_weapon, _fireMode];
    if(_cycle) then {
      [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
    };
    if(_mode == "RIP PRS") then {
      [_weapon, _fireMode] spawn {
        sleep 0.01;
        player forceWeaponFire [(_this # 0),(_this # 1)];
        if(vehicle player getVariable "rip_cycle") then {
          [1] remoteExec ["itc_air_steerpoints_fnc_cycle", (crew (vehicle player)), false];
        };
      };
    };
  };
}, 0.1, [_plane, time, getPos _plane, _weapon, _mode, _qty, _dist, _cycle, _fireMode]] call CBA_fnc_addPerFrameHandler;
