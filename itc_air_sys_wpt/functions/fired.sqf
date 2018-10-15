_this spawn {
  sleep 0.2;
  params ["", "", "", "", "_ammo", "", "_projectile", "_gunner"];
  if (!local _gunner) exitWith {};
  private _name = " " + (daytime call BIS_fnc_timeToString);
  itc_air_wpt_markpoints_z = ["Z", _name, [] + getPosASL _gunner];
};
