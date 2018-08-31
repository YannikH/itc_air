#define MFDGRN {0,0.9,0,2}
#define SCALE 0.9
#define YGAP SCALE * 0.16
#define XGAP SCALE *  0.1125
#define WIDTH SCALE * 0.525

class RscMapControl;
class IGUIBack;
class RscEdit;
class RscText;
class RscStructuredText;
class RscControlsGroup;
class RscControlsGroupNoScrollbars;
class RscFrame;
class RscListBox;
class RscButton;
class RscPicture;

class ITC_Air_MFDMap : RscMapControl {
};

class ITC_AIR_MfdText: RscText
{
  colorText[] = MFDGRN;
  sizeEx = SCALE * 0.04;
	colorShadow[] = {0,0,0,0};
};
class ITC_AIR_MfdTextBg: RscText
{
  colorText[] = MFDGRN;
  colorBackGround[] = {0,0,0,1};
};
class ITC_AIR_MfdTextMultiLine: ITC_AIR_MfdText
{
  style= 16;
};
class ITC_AIR_MfdTextCenter : ITC_AIR_MfdText
{
  style = 2;
};
class ITC_AIR_MfdTextRight : ITC_AIR_MfdText
{
  style = 1;
};
class ITC_AIR_MfdStructuredText: RscStructuredText
{
  colorText[] = MFDGRN;
  sizeEx = SCALE * 0.04;
	colorShadow[] = {0,0,0,0};
};
class ITC_AIR_PAGE : RscControlsGroupNoScrollbars {
  onLoad = "(_this # 0) ctrlShow false";
  x = 0;
  y = 0;
  w = 1 * (3/4);
  h = 1;
};
class ITC_AIR_ListBox : RscListbox {
  colorText[] = MFDGRN;
  colorText2[] = MFDGRN;
  colorSelect[] = {0,0,0,1};
  colorSelect2[] = {0,0,0,1};
  colorSelectBackground[] = MFDGRN;
  class ScrollBar {
    width = 0; height = 0;
    color[] = {1,1,1,0};
    colorActive[] = {1,1,1,0};
    colorDisabled[] = {1,1,1,0};
  };
  class ListScrollBar : ScrollBar { };
};
class ITC_AIR_MfdButton : RscButton {
  fade = 1;
};
