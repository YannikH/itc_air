#define CT_STATIC           0
#define CT_BUTTON           1
#define CT_EDIT             2
#define CT_SLIDER           3
#define CT_COMBO            4
#define CT_LISTBOX          5
#define CT_TOOLBOX          6
#define CT_CHECKBOXES       7
#define CT_PROGRESS         8
#define CT_HTML             9
#define CT_STATIC_SKEW      10
#define CT_ACTIVETEXT       11
#define CT_TREE             12
#define CT_STRUCTURED_TEXT  13
#define CT_CONTEXT_MENU     14
#define CT_CONTROLS_GROUP   15
#define CT_XKEYDESC         40
#define CT_XBUTTON          41
#define CT_XLISTBOX         42
#define CT_XSLIDER          43
#define CT_XCOMBO           44
#define CT_ANIMATED_TEXTURE 45
#define CT_OBJECT           80
#define CT_OBJECT_ZOOM      81
#define CT_OBJECT_CONTAINER 82
#define CT_OBJECT_CONT_ANIM 83
#define CT_LINEBREAK        98
#define CT_USER             99
#define CT_MAP              100
#define CT_MAP_MAIN         101
#define ST_POS            0x0F
#define ST_HPOS           0x03
#define ST_VPOS           0x0C
#define ST_LEFT           0x00
#define ST_RIGHT          0x01
#define ST_CENTER         0x02
#define ST_DOWN           0x04
#define ST_UP             0x08
#define ST_VCENTER        0x0c
#define ST_TYPE           0xF0
#define ST_SINGLE         0
#define ST_MULTI          16
#define ST_TITLE_BAR      32
#define ST_PICTURE        48
#define ST_FRAME          64
#define ST_BACKGROUND     80
#define ST_GROUP_BOX      96
#define ST_GROUP_BOX2     112
#define ST_HUD_BACKGROUND 128
#define ST_TILE_PICTURE   144
#define ST_WITH_RECT      160
#define ST_LINE           176
#define FontM             "RobotoCondensed"
#define __XA SafeZoneXAbs
#define __X SafeZoneX
#define __Y SafeZoneY
#define __WA SafeZoneWAbs
#define __W SafeZoneW
#define __H SafeZoneH
class RscButton;

class cam_dialog {
    idd = 18880;
    movingEnable = true;
    controlsBackground[] = { };
    objects[] = { };
    controls[] = {
        TOP_BORDER,
        BOTTOM_BORDER,
        LEFT_BORDER,
        RIGHT_BORDER,
        //HELP_DIALOG,
        CAM_BG,
        CAM_HEIGHT,
        CAM_ALT,
        CAM_No,
        CAM_NO_x,
        CAM_TIME_REMAIN,
        CAM_TIME,
        CAM_ZOOM,
        ZOOM_X,
        CAM_POS,
        CAM_POS_X,
        CAM_DIR,
        CAM_DIR_x
    };

    class TOP_BORDER {
        idc = -1;
        type = CT_STATIC;
        style = ST_CENTER;
        x = __XA;
        y = __Y;
        w = __WA;
        h = 0.08;
        font = FontM;
        sizeEx = 0.04;
        colorText[] = { 1, 1, 1, 1 };
        colorBackground[] = {0,0,0,1};
        text = "";
        blinkingPeriod = 0;
    };
    class BOTTOM_BORDER: TOP_BORDER {
        y = __Y + __H - 0.05;
        h = 0.05;
    };
    class LEFT_BORDER: TOP_BORDER {
        w = (abs(__XA) - abs(__X)) + 0.05;
        h = __H;
    };
    class RIGHT_BORDER: TOP_BORDER {
        x = __X + __W - 0.05;
        w = (__WA - __W) + 0.05;
        h = __H;
    };
    class HELP_DIALOG {
        idc = -1;
        type = CT_BUTTON;
        style = ST_CENTER;
        font = FontM;
        sizeEx = 0.025;
        colorText[] = { 1, 1, 1, 1 };
        colorFocused[] = { 0.31, 0.31, 0.31, 0.31 };
        colorDisabled[] = { 0, 0, 1, 0.7 };
        colorBackground[] = { 0, 0, 0, 0 };
        colorBackgroundDisabled[] = { 1, 1, 1, 0.5 };
        colorBackgroundActive[] = { 0.5, 0.5, 0.5, 0.5 };
        offsetX = 0.003;
        offsetY = 0.003;
        offsetPressedX = 0.002;
        offsetPressedY = 0.002;
        colorShadow[] = { 0, 0, 0, 0.5 };
        colorBorder[] = { 0, 0, 0, 0 };
        borderSize = 0;
        soundEnter[] = { "", 0, 1 };
        soundPush[] = { "buttonpushed.ogg", 0.1, 1 };
        soundClick[] = { "", 0, 1 };
        soundEscape[] = { "", 0, 1 };
        x = __X + (2*0.8); y = __Y + 0.045;
        w = 0.05; h = 0.02;
        text = "HELP";
        action = "player sideChat ""test"" ";
    };
    class CAM_BG {
        idc = -1;
        type = 0;
        style = 48;
        colorText[ ]={ 1,1,1,1 };
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        font = "RobotoCondensed";
        sizeEx = 0.021;
        lineSpacing = 1;
        x = __X;
        y = __Y + 0.08;
        w = __W;
        h = __H + 0.2;
        border = 0;
        text = "z\ace\addons\huntir\UI\ace_huntir_monitor_on.paa";
    };
    class CAM_HEIGHT {
        type = CT_STATIC;
        idc = 1;
        style = ST_LEFT;
        colorBackground[] = {0, 0, 0, 0};
        colorText[] = {1, 1, 1, 1};
        font = FontM;
        sizeEx = 0.02;
        x = __X + 0.42;
        y = __Y + 0.32;
        w = 0.08;
        h = 0.04;
        text = "";
        blinkingPeriod = 0;
    };
    class CAM_ALT: CAM_HEIGHT {
        x = __X + 0.35;
        text = CSTRING(ALT);
    };
    class CAM_No: CAM_HEIGHT {
        x = __X + __W - 0.64;
        text = CSTRING(CAM);
    };
    class CAM_NO_x: CAM_HEIGHT {
        idc = 2;
        x = __X + __W - 0.56;
        y = __Y + 0.32;
        text = "";
    };
    class CAM_TIME: CAM_HEIGHT {
        x = __X + 0.35;
        y = __Y + __H - 0.65;
        w = 0.12;
        text = CSTRING(TIME);
    };
    class WFOV_BUTTON : CAM_TIME {
        idc = 1700;
        y = __Y + __H - 0.61;
        type = CT_BUTTON;
        colorBackground[ ]={ 0.4,0.4,0.4,1 };
        colorBackgroundDisabled[] = { 1, 1, 1, 0.5 };
        colorBackgroundActive[] = { 0.5, 0.5, 0.5, 0.5 };
        text = "WFOV";
        sizeEx = 0.04;
        soundEnter[] = { "", 0, 1 };
        soundPush[] = { "buttonpushed.ogg", 0.1, 1 };
        soundClick[] = { "", 0, 1 };
        soundEscape[] = { "", 0, 1 };
        colorFocused[] = { 0.31, 0.31, 0.31, 0.31 };
        colorDisabled[] = { 0, 0, 1, 0.7 };
        offsetX = 0.003;
        offsetY = 0.003;
        offsetPressedX = 0.002;
        offsetPressedY = 0.002;
        action = "[""FOV"", 0] call itc_fnc_changeCameraMode";
        colorShadow[] = { 0, 0, 0, 0.5 };
        colorBorder[] = { 0, 0, 0, 0 };
        borderSize = 0;
    };
    class MFOV_BUTTON : WFOV_BUTTON {
        idc = 1701;
        x = __X + 0.47;
        text = "MFOV";
        action = "[""FOV"", 1] call itc_fnc_changeCameraMode";
    };
    class NFOV_BUTTON : WFOV_BUTTON {
        idc = 1702;
        x = __X + 0.59;
        text = "NFOV";
        action = "[""FOV"", 2] call itc_fnc_changeCameraMode";
    };
    class DTV : WFOV_BUTTON {
        idc = 1703;
        x = __X + 0.71;
        text = "DTV";
        action = "[""DTV"", 1] call itc_fnc_changeCameraMode";
    };
    class NVS : WFOV_BUTTON {
        idc = 1704;
        x = __X + 0.83;
        text = "NVS";
        action = "[""NVS"", 0] call itc_fnc_changeCameraMode";
    };
    class BHOT : WFOV_BUTTON {
        idc = 1705;
        x = __X + 0.95;
        text = "BHOT";
        action = "[""TI"", 0] call itc_fnc_changeCameraMode";
    };
    class WHOT : WFOV_BUTTON {
        idc = 1706;
        x = __X + 1.07;
        text = "WHOT";
        action = "[""TI"", 1] call itc_fnc_changeCameraMode";
    };
    class CAM_TIME_REMAIN: CAM_TIME {
        idc = 3;
        x = __X + 0.46;
        text = "";
    };
    class CAM_ZOOM: CAM_No {
        y = __Y + 0.36;
        text = "Zoom:";
    };
    class ZOOM_X: CAM_ZOOM {
        idc = 4;
        x = __X + __W - 0.56;
        text = "";
    };
    class CAM_POS: CAM_HEIGHT {
        x = __X + 0.35;
        y = __Y + 0.36;
        text = "GPS Pos:";
    };
    class CAM_POS_X: CAM_POS {
        idc = 5;
        x = __X + 0.42;
        w = 0.16;
        text = "";
    };
    class CAM_DIR: CAM_POS {
        y = __Y + 0.4;
        text = ""; //"Az:";
    };
    class CAM_DIR_x: CAM_DIR {
        idc = 6;
        x = __X + 0.42;
        w = 0.16;
        text = "";
    };
};