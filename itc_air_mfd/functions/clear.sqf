params ["_display"];
for "_i" from 0 to 27 do {
  (_display displayCtrl (1000 + _i)) ctrlSetText "";
};
