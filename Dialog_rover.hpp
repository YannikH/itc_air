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
        text = "\itc_air\data\UI\ROVER_icon_ca.paa";
        x = 0.225;
        y = 0.08;
        w = 0.4375;
        h = 0.62;
    };
    class RVR_1: RscButton
    {
        idc = 1600;
        text = "1"; //--- ToDo: Localize;
        x = 0.387501;
        y = 0.44;
        w = 0.0375001;
        h = 0.04;
        action = "[""1"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_2: RscButton
    {
        idc = 1601;
        text = "2"; //--- ToDo: Localize;
        x = 0.424999;
        y = 0.44;
        w = 0.05;
        h = 0.04;
        action = "[""2"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_3: RscButton
    {
        idc = 1602;
        text = "3"; //--- ToDo: Localize;
        x = 0.474999;
        y = 0.44;
        w = 0.0375001;
        h = 0.04;
        action = "[""3"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_4: RVR_1 {
        idc = 1603;
        text = "4"; //--- ToDo: Localize;
        y = 0.44 + 0.04;
        action = "[""4"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_5: RVR_2 {
        idc = 1604;
        text = "5"; //--- ToDo: Localize;
        y = 0.44 + 0.04;
        action = "[""5"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_6: RVR_3 {
        idc = 1605;
        text = "6"; //--- ToDo: Localize;
        y = 0.44 + 0.04;
        action = "[""6"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_7: RVR_1 {
        idc = 1606;
        text = "7"; //--- ToDo: Localize;
        y = 0.44 + 0.08;
        action = "[""7"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_8: RVR_2 {
        idc = 1607;
        text = "8"; //--- ToDo: Localize;
        y = 0.44 + 0.08;
        action = "[""8"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_9: RVR_3 {
        idc = 1608;
        text = "9"; //--- ToDo: Localize;
        y = 0.44 + 0.08;
        action = "[""9"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_Z1: RVR_1 {
        idc = 1609;
        text = "Z1"; //--- ToDo: Localize;
        y = 0.44 + 0.12;
        action = "[""z1"", ""button""] call itc_air_rover_fnc_button";
    };
    class RVR_0: RVR_2 {
        idc = 1610;
        text = "0"; //--- ToDo: Localize;
        y = 0.44 + 0.12;
        action = "[""0"", ""number""] call itc_air_rover_fnc_button";
    };
    class RVR_Z2: RVR_3 {
        idc = 1611;
        text = "Z2"; //--- ToDo: Localize;
        y = 0.44 + 0.12;
        action = "[""z2"", ""button""] call itc_air_rover_fnc_button";
    };
    class RVR_ENT: RVR_2 {
        idc = 1612;
        text = "ent"; //--- ToDo: Localize;
        y = 0.32;
        action = "[""ent"", ""button""] call itc_air_rover_fnc_button";
    };
};