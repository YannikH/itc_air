params["_string",["_timeStamp",true]];
if(_timeStamp) then {
  "itc_acmi" callExtension ["log",["arma.txt.acmi","#" + str CBA_missionTime]];
};
"itc_acmi" callExtension ["log",["arma.txt.acmi",_string]];
