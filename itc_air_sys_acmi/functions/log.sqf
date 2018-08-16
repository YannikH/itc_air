params["_string",["_timeStamp",true]];
if(_timeStamp) then {
  "itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,"#" + str CBA_missionTime]];
};
"itc_acmi" callExtension ["log",[ITC_AIR_ACMI_FILENAME,_string]];
