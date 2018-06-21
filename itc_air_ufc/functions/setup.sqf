ITC_AIR_UFC_SRC = "FXD2";
ITC_AIR_UFC_FXD1 = ["SYS1","DSP",{
  if(ITC_AIR_UFC_SRC == "FXD1") exitWith {
    ITC_AIR_UFC_SRC = "CTXT";
    ITC_AIR_UFC_FXD1 set [1, "DSP"];
  };
  ITC_AIR_UFC_SRC = "FXD1";
  ITC_AIR_UFC_FXD1 set [1, "HIDE"];
  ITC_AIR_UFC_FXD2 set [1, "DSP"];
}];
ITC_AIR_UFC_FXD2 = ["SYS2","HIDE",{
  if(ITC_AIR_UFC_SRC == "FXD2") exitWith {
    ITC_AIR_UFC_SRC = "CTXT";
    ITC_AIR_UFC_FXD2 set [1, "DSP"];
  };
  ITC_AIR_UFC_SRC = "FXD2";
  ITC_AIR_UFC_FXD1 set [1, "DSP"];
  ITC_AIR_UFC_FXD2 set [1, "HIDE"];
}];

ITC_AIR_UFC_FXD1_COLUMNS_BTN = ["","","","","","","",""];
ITC_AIR_UFC_FXD1_COLUMNS_TXT = ["","","","","","","",""];
ITC_AIR_UFC_FXD1_COLUMNS_FNC = [{},{},{},{},{},{},{},{}];

ITC_AIR_UFC_FXD2_COLUMNS_BTN = ["","","","","","","",""];
ITC_AIR_UFC_FXD2_COLUMNS_TXT = ["","","","","","","",""];
ITC_AIR_UFC_FXD2_COLUMNS_FNC = [{},{},{},{},{},{},{},{}];

ITC_AIR_UFC_CTXT_COLUMNS_BTN = ["","","","","","","",""];
ITC_AIR_UFC_CTXT_COLUMNS_TXT = ["","","","","","","",""];
ITC_AIR_UFC_CTXT_COLUMNS_FNC = [{},{},{},{},{},{},{},{}];
