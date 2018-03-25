class RscPicture;

class RVR_DIALOG {
    idd = 19990;
    movingEnable = true;
    controlsBackground[] = { };
    objects[] = { };
    controls[]=
    {
        RVR_PICTURE,
        RVR_1,
        RVR_2,
        RVR_3,
        RVR_4,
        RVR_5,
        RVR_6,
        RVR_7,
        RVR_8,
        RVR_9,
        RVR_Z1,
        RVR_0,
        RVR_Z2,
        RVR_ENT
    };
    class RVR_PICTURE: RscPicture
    {
        idc = 1200;

        text = "\itc_air\data\UI\ROVER_ui.paa";
        x = 0.438125 * safezoneW + safezoneX;
        y = 0.302 * safezoneH + safezoneY;
        w = 0.2475 * safezoneW;
        h = 0.462 * safezoneH;
    };
    class RVR_1: RscButton
    {
        idc = 1600;
        action = "[""1"", ""number""] call itc_air_rover_fnc_button";

        text = "1"; //--- ToDo: Localize;
        x = 0.453594 * safezoneW + safezoneX;
        y = 0.643 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
        fade = 1;
    };
    class RVR_2: RscButton
    {
        idc = 1601;
        action = "[""2"", ""number""] call itc_air_rover_fnc_button";

        text = "2"; //--- ToDo: Localize;
        x = 0.469062 * safezoneW + safezoneX;
        y = 0.643 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.022 * safezoneH;
        fade = 1;
    };
    class RVR_3: RscButton
    {
        idc = 1602;
        action = "[""3"", ""number""] call itc_air_rover_fnc_button";

        text = "3"; //--- ToDo: Localize;
        x = 0.489687 * safezoneW + safezoneX;
        y = 0.643 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
        fade = 1;
    };
    class RVR_4: RVR_1
    {
        idc = 1603;
        action = "[""4"", ""number""] call itc_air_rover_fnc_button";

        text = "4"; //--- ToDo: Localize;
        x = 0.453594 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_5: RVR_2
    {
        idc = 1604;
        action = "[""5"", ""number""] call itc_air_rover_fnc_button";

        text = "5"; //--- ToDo: Localize;
        x = 0.469062 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_6: RVR_3
    {
        idc = 1605;
        action = "[""6"", ""number""] call itc_air_rover_fnc_button";

        text = "6"; //--- ToDo: Localize;
        x = 0.489687 * safezoneW + safezoneX;
        y = 0.665 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_7: RVR_1
    {
        idc = 1606;
        action = "[""7"", ""number""] call itc_air_rover_fnc_button";

        text = "7"; //--- ToDo: Localize;
        x = 0.453594 * safezoneW + safezoneX;
        y = 0.687 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_8: RVR_2
    {
        idc = 1607;
        action = "[""8"", ""number""] call itc_air_rover_fnc_button";

        text = "8"; //--- ToDo: Localize;
        x = 0.469062 * safezoneW + safezoneX;
        y = 0.687 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_9: RVR_3
    {
        idc = 1608;
        action = "[""9"", ""number""] call itc_air_rover_fnc_button";

        text = "9"; //--- ToDo: Localize;
        x = 0.489687 * safezoneW + safezoneX;
        y = 0.687 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_Z1: RVR_1
    {
        idc = 1609;
        action = "[""z1"", ""button""] call itc_air_rover_fnc_button";

        text = "Z1"; //--- ToDo: Localize;
        x = 0.453594 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_0: RVR_2
    {
        idc = 1610;
        action = "[""0"", ""number""] call itc_air_rover_fnc_button";

        text = "0"; //--- ToDo: Localize;
        x = 0.469062 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.020625 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_Z2: RVR_3
    {
        idc = 1611;
        action = "[""z2"", ""button""] call itc_air_rover_fnc_button";

        text = "Z2"; //--- ToDo: Localize;
        x = 0.489687 * safezoneW + safezoneX;
        y = 0.709 * safezoneH + safezoneY;
        w = 0.0154688 * safezoneW;
        h = 0.022 * safezoneH;
    };
    class RVR_ENT: RVR_2
    {
        idc = 1612;
        action = "[""ent"", ""button""] call itc_air_rover_fnc_button";

        text = "ent"; //--- ToDo: Localize;
        x = 0.469062 * safezoneW + safezoneX;
        y = 0.566 * safezoneH + safezoneY;
        w = 0.0257812 * safezoneW;
        h = 0.033 * safezoneH;
    };
};
