class itc_air_cfgFuzes {
  class pd {
    displayName = "NOSE FUZE";
    programmable = 0;
    mode = "PD";
  };
  class prox : pd {
    displayName = "NOSE FUZE";
		mode = "PROX";
  };
  class dly : pd {
    displayName = "TAIL FUZE";
		mode = "DLY";
  };
	class dsu33 {
    displayName = "DSU33 PROX";
    programmable = 0;
		mode = "PROX";
	};
	class fmu139 {
    displayName = "FMU139 PROG";
    programmable = 1;
		modes[] = {"PD","DLY"};
	};
	class sdb {
    displayName = "SDB FZE";
    programmable = 1;
		modes[] = {"PD","DLY","PROX"};
	};
};
