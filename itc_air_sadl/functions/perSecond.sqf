params ["_plane"];

if(cba_missionTime < itc_air_sadl_lastUpdate + itc_air_sadl_updateRate) exitWith {};
itc_air_sadl_lastUpdate = cba_missionTime;

private _vehicles = [];
{
  if(("ITC_EPLRS" in (itemCargo _x)) && _x != vehicle player) then {
    if(side _x == side _plane && !(_x isKindOf "Man")) then {
      _vehicles pushBack _x;
    };
  };
}forEach vehicles;

{
  if(("ITC_EPLRS" in (items _x) && backpack _x isKindOf "tfw_ilbe_dd_wd") && _x != player) then {
    if(side _x == side _plane) then {
      _vehicles pushBackUnique _x;
    };
  };
}forEach allPlayers;

ITC_AIR_SADL_VEHICLES = _vehicles;
