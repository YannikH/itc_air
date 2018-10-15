private _optionsList = [];

_optionsList pushBack ["launchMode","BOL","LAUNCH MODE","cycle",["BOL","R/BL"]];
_optionsList pushBack ["flyOut","LOW","FLT","cycle",["LOW","MED","HIGH"]];
_optionsList pushBack ["terminal","SKIM","TERM","cycle",["SKIM","POP"]];
_optionsList pushBack ["seek","SML","R/BL SEEK","cycle",["SML","MED","LRG"]];
_optionsList pushBack ["search","10","BOL SRCH","UFC",{(_this > 0)}];
_optionsList pushBack ["destruct","20","BOL DESTR","UFC",{(_this > 10)}];
_optionsList pushBack ["bearing","0","BOL BRG","UFC",{(_this > -1 && _this <= 360)}];
//_optionsList pushBack ["fxp","OFF","BOL FXP","cycle",["ON","OFF"]];
//_optionsList pushBack ["fxp_pos","","BOL FXP","STPT",""];
_optionsList pushBack ["hptp","OFF","BOL HPTP","cycle",["ON","OFF"]];
_optionsList pushBack ["hptp_pos","","BOL HPTP","STPT",""];

_optionsList
