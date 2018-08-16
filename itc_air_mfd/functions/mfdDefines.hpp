#define L1 1000
#define L12 1002
#define L2 1001
#define L23 1003
#define L3 1004
#define L34 1005
#define L4 1006
#define L45 1007
#define L5 1008

#define R1 1009
#define R12 1010
#define R2 1011
#define R23 1012
#define R3 1013
#define R34 1014
#define R4 1015
#define R45 1016
#define R5 1017

#define B1 1018
#define B2 1019
#define B3 1020
#define B4 1021
#define B5 1022

#define T1 1023
#define T2 1024
#define T3 1025
#define T4 1026
#define T5 1027

#define OL1 1221
#define OL2 1222
#define OL3 1223
#define OL4 1224
#define OL5 1225
#define OR1 1231
#define OR2 1232
#define OR3 1233
#define OR4 1234
#define OR5 1235

#define pblc1 1201
#define pblc2 1204
#define pblc3 1205
#define pbll 1202
#define pblr 1203

#define invertText(DISPLAY,IDC) (_display displayCtrl IDC) ctrlSetTextColor [0,0,0,1];(_display displayCtrl IDC) ctrlSetBackgroundColor [0,1,0,1]
#define resetText(DISPLAY,IDC) (_display displayCtrl IDC) ctrlSetTextColor [0,1,0,1];(_display displayCtrl IDC) ctrlSetBackgroundColor [0,0,0,0]
#define ROTARY(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\rotary.paa"; (_display displayCtrl IDC) ctrlShow true
#define BRANCHL(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\branchl.paa"; (_display displayCtrl IDC) ctrlShow true
#define BRANCHR(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\branchr.paa"; (_display displayCtrl IDC) ctrlShow true
#define SYSACT(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\sysact.paa"; (_display displayCtrl IDC) ctrlShow true
#define DATA(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\data.paa"; (_display displayCtrl IDC) ctrlShow true
#define INCDEC(IDC) (_display displayCtrl IDC) ctrlSetText "itc_air_mfd\data\ui\obsSymb\incdec.paa"; (_display displayCtrl IDC) ctrlShow true
