if(!itc_air_rover_broadcasting) exitWith {};
params["_plane"];

itc_air_rover_receivers = [];
private _freq = _plane getVariable ["itc_air_rover_xmit_freq","ERR"];
{
  if(_freq == (_x getVariable ["rover_recv_freq",""])) then {
    itc_air_rover_receivers pushBack _x;
  };
} forEach allPlayers;
