/*
 * Draw POI related symbology
 * params: plane, TGP tracking point, current waypoint
 */
params["_plane", "_wp"];

if(_wp select 0 != "NO WP") then {
    drawIcon3d ["itc_air\data\UI\WP32.paa", [0,1,0,1], ASLtoAGL (_wp select 1), 0.7, 0.7, 0, format["%1", round ((_plane distance (_wp select 1)) / 1000)], 1, 0.05, "PuristaMedium", "center"];
};

_tgpDir = _plane getVariable "tgp_dir";
if(_tgpDir select 0) then {
    drawIcon3d ["itc_air\data\UI\WPT32.paa", [0,1,0,1], ASLtoAGL (_tgpDir select 1), 0.7, 0.7, 0, "", 1, 0.05, "PuristaMedium", "center"];
};
