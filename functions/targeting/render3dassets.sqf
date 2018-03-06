_handle = [{
    {
        if((_x select 0) call (_x select 2)) then {
            drawLine3D ((_x select 0) call (_x select 1));
        };
    }forEach ITC_AIR_LINES;
    {
        if(call (_x select 2)) then {
            drawIcon3D call (_x select 1);
        };
    }forEach ITC_AIR_ICONS;
}, 0, []] call CBA_fnc_addPerFrameHandler;