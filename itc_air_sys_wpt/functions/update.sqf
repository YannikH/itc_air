params["_name","_pos"];

if(!isNil{_name}) then {
  ([] call itc_air_wpt_fnc_getCurrent) set [1,_name];
};

if(!isNil{_pos}) then {
  ([] call itc_air_wpt_fnc_getCurrent) set [2,_pos];
};
