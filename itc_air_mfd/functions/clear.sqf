params ["_display"];
for "_i" from 0 to 27 do {
  (_display displayCtrl (1000 + _i)) ctrlSetText "";
};
for "_i" from 1 to 5 do {
  (_display displayCtrl (1220 + _i)) ctrlShow false;
  (_display displayCtrl (1230 + _i)) ctrlShow false;
};
