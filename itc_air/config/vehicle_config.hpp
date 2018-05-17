class itc_air {
    targeting_user = "pilot";
    class rover {
        capable = 1;
        frequency_default = 5784;
    };
    class tgp {
      ir_marker = 1;
      ir_marker_pulse = 1;
      grid = 1;
    };
    class hmd {
      centerpoint = 1;
      hmcs = 1;
    };
    class mfd_left {
      pages[] = {"", "", "", "", "COM", "", "", "", "", "TGP", "", "", "","SWAP","TAD","WPN","SMS","LST"};
      shortcuts = {"TAD","WPN","SMS"};
      users = 2; // 0 = pilot, 1 = gunner, 2 = both, 3 = passengers, 4 = all
    };
    class mfd_right {
      pages[] = {"", "", "", "", "COM", "", "", "", "", "TGP", "", "", "","SWAP","TAD","WPN","SMS","LST"};
      shortcuts = {"TAD","WPN","SMS"};
      users = 2; // 0 = pilot, 1 = gunner, 2 = both, 3 = passengers, 4 = all
    };
};
