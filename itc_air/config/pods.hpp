#define fov(DEG) \
    initFov = DEG / 120; \
    minFov = DEG / 120; \
    maxFov = DEG / 120; \

class tgp_baseFov {
    opticsDisplayName = "WFOV";
    initAngleX = 0;
    minAngleX = 0;
    maxAngleX = 0;
    initAngleY = 0;
    minAngleY = 0;
    maxAngleY = 0;
    initFov = "(60 / 120)";
    minFov = "(60 / 120)";
    maxFov = "(60 / 120)";
    directionStabilized = 1;
    visionMode[] = {"Normal","NVG","Ti"};
    thermalMode[] = {0,1};
    gunnerOpticsModel = "\A3\Drones_F\Weapons_F_Gamma\Reticle\UAV_Optics_Gunner_wide_F.p3d";
    opticsPPEffects[] = {"OpticsCHAbera2","OpticsBlur2"};
};

class litening {
    class OpticsIn {
        class WFLIR : tgp_baseFov {
            opticsDisplayName = "Wide";
            fov(24)
        };
        //class WTV : tgp_baseFov {
        //    opticsDisplayName = "Wide";
        //    fov(3.5)
        //};
        class MFLIR : tgp_baseFov {
            opticsDisplayName = "Medium";
            fov(3.5)
        };
        class NTV : tgp_baseFov {
            opticsDisplayName = "Narrow";
            fov(1)
        };
        //class NFLIR : tgp_baseFov {
        //    opticsDisplayName = "Narrow";
        //    visionMode[] = {"Ti"};
        //    fov(1)
        //};
        class SNTV : tgp_baseFov {
            opticsDisplayName = "Super Narrow";
            fov(0.2)
        };
    };
    minTurn = -180;
    maxTurn = 180;
    initTurn = 0;
    minElev = -10;
    maxElev = 155;
    initElev = 0;
    maxXRotSpeed = 0.5;
    maxYRotSpeed = 0.5;
    pilotOpticsShowCursor = 0;
    controllable = 1;
    turretInfoType = "RscOptics_Heli_Attack_01_gunner";
};

class damocles : litening {
    class OpticsIn {
        class WFOV : tgp_baseFov{
            opticsDisplayName = "Wide";
            fov(4)
        };
        class NFOV : tgp_baseFov{
            opticsDisplayName = "Narrow";
            fov(1)
        };
        class VNFOV : tgp_baseFov{
            opticsDisplayName = "Very Narrow";
            fov(0.5)
        };
    };
};

class sniper : damocles {

};
