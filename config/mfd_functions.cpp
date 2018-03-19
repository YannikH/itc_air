#define page(NAME) \
    class NAME { \
        class NAME { \
            file = itc_air\functions\mfd\rendering\NAME.sqf; \
        }; \
        class NAME##_btn { \
            file = itc_air\functions\mfd\interaction\NAME.sqf; \
        }; \
    };
class itc_air_mfd {
    page(wpn)
    page(sms)
    page(tad)
    page(lst)
    page(com)
    page(tgp)
    class input {
        class input_cancel {
            file = "itc_air\functions\mfd\input\cancel.sqf";
        };
        class input_save {
            file = "itc_air\functions\mfd\input\save.sqf";
        };
        class input_start {
            file = "itc_air\functions\mfd\input\start.sqf";
        };
    };
    class buttons {
        class illum {
            file = "itc_air\functions\mfd\interaction\illum.sqf";
        };
        class swap {
            file = "itc_air\functions\mfd\interaction\swap.sqf";
        };
    };
    class generic {
        class button {
            file = "itc_air\functions\mfd\button.sqf";
        };
        class open {
            file = "itc_air\functions\mfd\open.sqf";
        };
        class init {
            preInit = 1;
            file = "itc_air\functions\mfd\init.sqf";
        };
    };
};
