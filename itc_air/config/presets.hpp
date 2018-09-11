class mfd_heli {
  pages[] = {"", "", "", "", "STPT", "", "", "", "", "MSG", "", "", ""};
  shortcuts[] = {"COM","TAD","STAT"};
  users = 2; // 0 = pilot, 1 = gunner, 2 = both, 3 = passengers, 4 = all
};
class mfd_plane {
  pages[] = {"", "MSG", "STPT", "STAT", "COM", "", "", "", "", "WPN", "", "", ""};
  shortcuts[] = {"TAD","TGP","SMS"};
  users = 2; // 0 = pilot, 1 = gunner, 2 = both, 3 = passengers, 4 = all
};

class itc_air_default_jet {
    class rover {
        capable = 1;
        frequency_default = 5784;
    };
    targeting_user = "pilot";
    hmd = 1;
    tgp = 1;
    wso = 0;
    systems[] = {"UFC","SOI","TAXI","DSMS","MAVERICK","MFD","MFD_L","MFD_R","HMD","AUTOPILOT","AP-MAN","ROVER","SADL","FCS","GCAS","TGP","WPT","TAD","HUD"};
    mfdApps[] = {"DSMS","TGP","STAT","TAD","STPT","OPT","MAV"};
    mfdType = "classic";
};

class itc_air_default_heli_ah {
    class rover {
        capable = 1;
        frequency_default = 5784;
    };
    targeting_user = "gunner";
    hmd = 1;
    tgp = 1;
    wso = 0;
    class mfd_left : mfd_heli {};
    class mfd_right : mfd_heli {};
    systems[] = {"MFD","MFD_L","MFD_R","UFC","TAD"};
    mfdApps[] = {"STAT","TAD","STPT","OPT"};
    mfdType = "classic";
};

class itc_air_default_heli_uh {
    class rover {capable = 0;};
    targeting_user = "gunner";
    hmd = 0;
    tgp = 0;
    wso = 0;
    class mfd_left : mfd_heli {};
    class mfd_right : mfd_heli {};
    systems[] = {"MFD","MFD_L","MFD_R","UFC","TAD"};
    mfdApps[] = {"STAT","TAD","STPT","OPT"};
    mfdType = "classic";
};
