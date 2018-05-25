params ["_display"];

_output = ["FOV", "", "", "", "","SPI OFF", "GRP 0", "ID 0", "", "","", "", ""];

_map = _display getVariable "tad_map";
_map ctrlSetFade 0;
_mapSize = (ctrlPosition _map) select 3;
(_display getVariable "background") ctrlSetFade 1;
(_display getVariable "background") ctrlCommit 0;
_fov = _display getVariable "tad_fov";
_output set [0, format["FOV %1", round(_fov * 100)]];
_plane = (vehicle player);

_output set [5, format["SPI %1", if(_plane getVariable "SADL_SPI") then [{"ON"},{"OFF"}]]];
_output set [6, format["GRP %1", _plane getVariable "SADL_GRP"]];
_output set [7, format["ID %1", _plane getVariable "SADL_ID"]];

_centerPos = if(_display getVariable "tad_expand" == 0) then [{getPos _plane}, {_display getVariable "tad_pos"}];

_map drawEllipse [getPos _plane, 2500, 2500, 0, [0,1,0,1]];
_map drawEllipse [getPos _plane, 5000, 5000, 0, [0,1,0,1]];

_map drawIcon ["itc_air\data\UI\WPT_MFD.paa", [1,1,1,1], ((_plane getVariable "tgp_dir") select 1),  15,15, 0,  ".", 0, 0.01];
_map drawIcon ["itc_air\data\UI\PLN_MFD.paa", [1,1,1,1], getPos _plane,  45,45, getDir _plane,  ".", 0, 0.01];
_map drawIcon ["itc_air\data\UI\CURSOR_MFD.paa", [1,1,1,1], (_centerPos vectorAdd ((_display getVariable "tad_cursor") vectorMultiply _fov)),  30,30, 0,  ".", 0, 0.01];
//_map drawIcon ["itc_air\data\UI\WP32.paa", [1,1,1,1], _plane getVariable "stpt_pos",  15,15, 0, '', 0];
_waypoints = [] call ace_microdagr_fnc_deviceGetWaypoints;
{
    _map drawIcon ["itc_air\data\UI\WP_MFD.paa", [1,1,1,1], _x select 1,  15,15, 0,  ".", 0, 0.01];
}forEach _waypoints;
_sadl = missionNameSpace getVariable "SADL";
{
    _id = _x getVariable "SADL_ID";
    if(
      (_x getVariable "SADL_GRP" == _plane getVariable "SADL_GRP") &&
       (_id != _plane getVariable "SADL_ID")
      ) then {
        _map drawIcon ["itc_air\data\UI\SADL.paa", [1,1,1,1], getPos _x,  15,15, 0,  ".", 0, 0.01];
        _nums = _id splitString "";
        _map drawIcon [format ["itc_air\data\UI\SADL\L%1.paa", _nums select 0], [1,1,1,1], getPos _x,  15,15, 0,  ".", 0, 0.01];
        _map drawIcon [format ["itc_air\data\UI\SADL\R%1.paa", _nums select 1], [1,1,1,1], getPos _x,  15,15, 0,  ".", 0, 0.01];
        if(_x getVariable "SADL_SPI") then {
          _map drawLine [getPos _x, (_x getVariable "tgp_dir") select 1, [0,0,1,1]];
          _map drawIcon [format ["itc_air\data\UI\SADL\Mini-SPI.paa", _nums select 0], [1,1,1,1], (_x getVariable "tgp_dir") select 1,  15,15, 0,  ".", 0, 0.01];
        };
      }
}forEach _sadl;

_map ctrlMapAnimAdd [0, _fov, _centerPos];
ctrlMapAnimCommit _map;
_map ctrlCommit 0;
_output
