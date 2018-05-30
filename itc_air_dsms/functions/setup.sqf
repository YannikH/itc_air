params ["_plane"];
_inventory = [_plane] call itc_air_dsms_fnc_generatePylonsList;
_plane setVariable ["inventory", _inventory];
_plane setVariable ["baseInventory",[] + _inventory];
_profiles = [_plane] call itc_air_dsms_fnc_generateGenericProfiles;
_plane setVariable ["profiles", _profiles];
[] call itc_air_dsms_fnc_weaponChanged;
