#define page(NAME) \
    class NAME { \
        class NAME { \
            file = itc_air\functions\mfd\rendering\NAME.sqf; \
        }; \
        class NAME##_btn { \
            file = itc_air\functions\mfd\interaction\NAME.sqf; \
        };

#define defsoi(NAME) \
  class NAME##_soi { \
    file = itc_air\functions\mfd\soi\NAME.sqf; \
  };
#define defsoi_action(NAME) \
  class NAME##_soi_action { \
    file = itc_air\functions\mfd\soi_action\NAME.sqf; \
  };
#define defsoi_slew(NAME) \
  class NAME##_soi_slew { \
    file = itc_air\functions\mfd\soi_slew\NAME.sqf; \
  };

class itc_air_mfd {
  page(wpn)};
  page(sms)};
  page(tad)
    defsoi(tad)
    defsoi_action(tad)
    defsoi_slew(tad)
  };
  page(lst)};
  page(com)};
  page(tgp)
    defsoi(tgp)
  };
  class hmcs {
    class hmcs_slew {
      file = itc_air\functions\mfd\soi_slew\hmcs.sqf;
    };
  };
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
  class soi {
    class soi_capable {
      file = "itc_air\functions\mfd\soi\capable.sqf";
    };
    class soi_set {
      file = "itc_air\functions\mfd\soi\set.sqf";
    };
    class soi_input {
      file = "itc_air\functions\mfd\soi\input.sqf";
    };
    class soi_action {
      file = "itc_air\functions\mfd\soi_action\action.sqf";
    };
    class soi_slew {
      file = "itc_air\functions\mfd\soi_slew\slew.sqf";
    };
    class soi_stpt {
      file = "itc_air\functions\mfd\soi_action\stpt.sqf";
    };
  };
};
