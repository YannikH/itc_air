if(typeOf(vehicle player) != "itc_Gripen") exitWith {
    ITC_AIR_CURRENTWP = 0;
};
player sideChat format ["%1",_this];
switch (_this) do {
   //Key PGUP
    case 201: {
        [1] call itc_fnc_targeting_cycleWp;
    };

    //Key PGDWN
    case 209: {
        [-1] call itc_fnc_targeting_cycleWp;
    };
};
false