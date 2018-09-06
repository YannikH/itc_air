params ["_plane"];
private _vehicles = [];
{
  if(("ITC_EPLRS" in (itemCargo _x) || "ITC_EPLRS" in (items _x)) && _x != vehicle player) then {
    if(side _x == side _plane && !(_x isKindOf "Man")) then {
      _vehicles pushBack _x;
    };
  };
}forEach vehicles;
ITC_AIR_SADL_VEHICLES = _vehicles;
