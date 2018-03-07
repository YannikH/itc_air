#include "vehDefines.hpp"

class SensorTemplatePassiveRadar;  
class SensorTemplateAntiRadiation;
class SensorTemplateActiveRadar;   
class SensorTemplateIR;            
class SensorTemplateVisual;        
class SensorTemplateMan;           
class SensorTemplateLaser;         
class SensorTemplateNV;
class SensorTemplateDataLink;

#define targetLimit(CLASS,MIN,MAX,VDLimit,ODLimit) \
    class CLASS { \
        minRange = MIN; \
        maxRange = MAX; \
        objectDistanceLimitCoef = VDLimit; \
        viewDistanceLimitCoef = ODLimit; \
    };

class cfgVehicles {

    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ITC_ROVER {
                displayName = "Datalink";
                condition = "[_player] call ITC_fnc_canOpenRover";
                statement = "";
                priority = 2.6;
                showDisabled = 1;
                exceptions[] = {"isNotInside","isNotSitting"};
                class ITC_ROVER_OPEN {
                    displayName = "Rover SIR V2.5";
                    condition = "'ITC_ROVER_SIR' in (items _player)";
                    statement = "[] call ITC_fnc_openRover;";
                    priority = 2.6; 
                    showDisabled = 1;
                    icon = "itc_air\data\UI\ROVER_icon_ca.paa";
                exceptions[] = {"isNotInside","isNotSitting"};
                    enableInside = 1;
                };
                class ITC_TABLET_OPEN {
                    displayName = "Duo-Touch II";
                    condition = "'ACE_HuntIR_monitor' in (items _player)";
                    statement = "[] call ITC_fnc_openDuoTouch;";
                    distance = 2;
                    priority = 2.6; 
                    showDisabled = 1;
                    icon = "\z\ace\addons\huntir\UI\w_huntir_monitor_ca.paa";
                exceptions[] = {"isNotInside","isNotSitting"};
                    enableInside = 1;
                };
            };
        };
    };

    class Plane;
    class Plane_Base_F: Plane {
        class Components;
    };
    class Plane_Fighter_04_Base_F : Plane_Base_F {
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent;
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
    };
    class itc_Gripen : Plane_Fighter_04_Base_F {
        side = 1;
        scope = 2;
        displayName= "JAS-39E Gripen";
        faction = "BLU_F";
        vehicleClass = "Air";
        editorSubcategory = "EdSubcat_Planes";
        crew = "B_pilot_F";
        hiddenSelections[] = {"Camo_01","Camo_02","Camo_03","number_01","number_02","number_03"};
        hiddenSelectionsTextures[] = {"a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_01_co.paa","a3\air_f_jets\plane_fighter_04\data\Fighter_04_fuselage_02_co.paa","a3\air_f_jets\plane_fighter_04\data\fighter_04_misc_01_co.paa","a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa","a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_04_ca.paa","a3\air_f_jets\plane_fighter_04\data\Numbers\Fighter_04_number_08_ca.paa"};
        weapons[] = {"itc_weap_bk27","Laserdesignator_pilotCamera","CMFlareLauncher"};
        magazines[] = {"itc_120rnd_27mm_he","Laserbatteries","240Rnd_CMFlare_Chaff_Magazine"};
        incomingMissileDetectionSystem = 8;
        class Components : Components {
            class SensorsManagerComponent {
                class Components {
                    class ActiveRadarSensorComponent : SensorTemplateActiveRadar
                    {
                        targetLimit(AirTarget,30000,30000,-1,-1)
                        targetLimit(GroundTarget,30000,30000,-1,-1)
                        angleRangeHorizontal = 120;
                        angleRangeVertical = 45;
                        typeRecognitionDistance = 1000;
                        maxGroundNoiseDistance = 0;
                        groundNoiseDistanceCoef = -1;
                    };
                    class IRSensorComponent : SensorTemplateIR {
                        targetLimit(AirTarget,5000,15000,-1,1)  
                        targetLimit(GroundTarget,0,0,-1,-1)
                        angleRangeHorizontal = 60;
                        angleRangeVertical = 45;
                    };
                    class LaserSensorComponent : SensorTemplateLaser {
                        targetLimit(AirTarget,20000,20000,-1,-1)
                        targetLimit(GroundTarget,20000,20000,-1,-1)
                        angleRangeHorizontal = 45;
                        angleRangeVertical = 45;
                        animDirection = "pilotCameraRotY";
                    };
                    class NVSensorComponent : SensorTemplateNV {
                        targetLimit(AirTarget,20000,20000,-1,-1)
                        targetLimit(GroundTarget,20000,20000,-1,-1)
                        angleRangeHorizontal = 45;
                        angleRangeVertical = 45;
                        animDirection = "pilotCameraRotY";
                    };
                    class PassiveRadarSensorComponent : SensorTemplatePassiveRadar {
                        targetLimit(AirTarget,30000,30000,-1,-1)
                        targetLimit(GroundTarget,30000,30000,-1,-1)
                        angleRangeHorizontal = 360;
                        angleRangeVertical = 360;
                        typeRecognitionDistance = 30000;
                    };
                    class VisualSensorComponent : SensorTemplateVisual {
                        targetLimit(AirTarget,1000,1000,-1,-1)
                        targetLimit(GroundTarget,1000,1000,-1,-1)
                        angleRangeHorizontal = 45;
                        angleRangeVertical = 45;
                        animDirection = "pilotCameraRotY";
                    };
                };
            };
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent  : TransportPylonsComponent {
                UIPicture = "\A3\Air_F_Jets\Plane_Fighter_04\Data\UI\Fighter_04_3DEN_CA.paa";
                class Presets
                {
                    class AT
                    {
                        attachment[] = {
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_bru55_lau117_rhs_ammo_agm65d",
                            "itc_hp_bru55_lau117_rhs_ammo_agm65d"
                        };
                        displayname = "Anti-Tank";
                    };
                    class CAS
                    {
                        attachment[] = {
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "itc_hp_bru55_ITC_ammo_gbu38",
                            "itc_hp_bru33_Bo_GBU12_LGB",
                            "itc_hp_bru33_Bo_GBU12_LGB",
                            "itc_hp_bru55_ITC_ammo_gbu38"
                        };
                        displayname = "Close Air Support";
                    };
                    class Strike
                    {
                        attachment[] = {
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "PylonRack_Missile_AMRAAM_C_x1",
                            "itc_hp_bru55_ITC_ammo_gbu38",
                            "itc_hp_bru55_ITC_ammo_gbu38",
                            "itc_hp_bru55_ITC_ammo_gbu38",
                            "itc_hp_bru55_ITC_ammo_gbu38"
                        };
                        displayname = "Strike";
                    };
                };
                class pylons {
                    class pylon1 {
                        attachment = "PylonRack_Missile_AMRAAM_C_x1";
                        hardpoints[] = {"I_BIM9X","I_AMRAAM_C_RAIL","RHS_HP_AIM9_int","RHS_HP_aim120_int"};
                        maxweight = 300;
                        priority = 5;
                        UIposition[] = {0.55,0.4};
                    };
                    class pylon2 : pylon1 {
                        mirroredMissilePos = 1;
                        UIposition[] = {0.1,0.4};
                    };
                    class pylon3 {
                        attachment = "itc_hp_bru55_ITC_ammo_gbu38";
                        hardpoints[] = {"I_BIM9X","I_AMRAAM_C_RAIL", "itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117"};
                        maxweight = 750;
                        priority = 4;
                        UIposition[] = {0.5,0.35};
                    };
                    class pylon4 : pylon3 {
                        mirroredMissilePos = 3;
                        UIposition[] = {0.15,0.35};
                    };
                    class pylon5 {
                        attachment = "itc_hp_dumb_Bo_GBU12_LGB";
                        hardpoints[] = {"I_BIM9X","I_AMRAAM_C_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117"};
                        maxweight = 1200;
                        priority = 3;
                        UIposition[] = {0.45,0.3};
                    };
                    class pylon6 : pylon5 {
                        mirroredMissilePos = 5;
                        UIposition[] = {0.2,0.3};
                    };
                };
            };
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
        class pilotCamera {
            class OpticsIn {
                class Wide {
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
                class Medium : Wide {
                    opticsDisplayName = "MFOV";
                    initFov = "(12 / 120)";
                    minFov = "(12 / 120)";
                    maxFov = "(12 / 120)";
                    gunnerOpticsModel = "\A3\Drones_F\Weapons_F_Gamma\Reticle\UAV_Optics_Gunner_medium_F.p3d";
                };
                class Narrow : Wide {
                    opticsDisplayName = "NFOV";
                    initFov = "(3.75 / 120)";
                    minFov = "(3.75 / 120)";
                    maxFov = "(3.75 / 120)";
                    gunnerOpticsModel = "\A3\Drones_F\Weapons_F_Gamma\Reticle\UAV_Optics_Gunner_narrow_F.p3d";
                };
                class VeryNarrow : Wide {
                    opticsDisplayName = "NFOV";
                    initFov = "(2 / 120)";
                    minFov = "(2 / 120)";
                    maxFov = "(2 / 120)";
                    gunnerOpticsModel = "\A3\Drones_F\Weapons_F_Gamma\Reticle\UAV_Optics_Gunner_narrow_F.p3d";
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
        class ACE_Actions {
        };
        class itc_air {
            class rover {
                capable = 1;
                frequency_default = 1337;
                ti_enabled = 1;
                ti_modes[] = {1, 0};
                nvg_enabled = 1;
                fov[] = {0.625, 0.12, 0.04};
            };
            hmd = 1;
            tgp = 1;
        };
    };
    /*
    class Plane_Fighter_03_dynamicLoadout_base_F : Plane_Base_F {
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent;
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
    };
    class ITC_A159 : Plane_Fighter_03_dynamicLoadout_base_F {
        side = 1;
        scope = 2;
        displayName= "A-159";
        faction = "BLU_F";
        vehicleClass = "Air";
        editorSubcategory = "EdSubcat_Planes";
        crew = "B_pilot_F";
        incomingMissileDetectionSystem = 8;
        class itc_air {
            class rover {
                capable = 1;
                frequency_default = 1337;
                ti_enabled = 1;
                ti_modes[] = {1, 0};
                nvg_enabled = 1;
                fov[] = {0.625, 0.12, 0.04};
            };
            hmd = 1;
            tgp = 1;
        };
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent  : TransportPylonsComponent {
                uiPicture = "\A3\Air_F_Gamma\Plane_Fighter_03\Data\UI\Plane_A143_3DEN_CA.paa";
                class Presets {

                };
                class Pylons {
                    class Pylons1 {
                        attachment = "PylonMissile_Missile_BIM9X_x1";
                        hardpoints[] = {"B_BIM9X_RAIL"};
                        maxweight = 200;
                        priority = 5;
                        UIposition[] = {0.35,0.08};
                    };
                    class Pylons2 : Pylons1 {
                        attachment = "itc_hp_lau117_rhs_ammo_agm65d";
                        hardpoints[] = {"B_BIM9X_RAIL","itc_hp_dumb","itc_hp_dumb_rocket","itc_hp_lau117"};
                        maxweight = 320;
                        priority = 4;
                        UIposition[] = {0.345,0.13};
                    };
                    class Pylons3 : Pylons1 {
                        attachment = "itc_hp_dumb_Bo_GBU12_LGB";
                        hardpoints[] = {"B_BIM9X_RAIL","itc_hp_dumb","itc_hp_dumb_rocket","itc_hp_lau117"};
                        maxweight = 400;
                        priority = 3;
                        UIposition[] = {0.34,0.18};
                    };
                    class Pylons4 : Pylons1 {
                        attachment = "PylonWeapon_300Rnd_20mm_shells";
                        hardpoints[] = {"B_A143_BUZZARD_CENTER_PYLON"};
                        maxweight = 500;
                        priority = 2;
                        UIposition[] = {0.27,0.28};
                    };
                    class Pylons5 : Pylons3 {
                        mirroredMissilePos = 3;
                        UIposition[] = {0.33,0.38};
                    };
                    class Pylons6 : Pylons2 {
                        mirroredMissilePos = 2;
                        UIposition[] = {0.33,0.43};
                    };
                    class Pylons7 : Pylons1 {
                        mirroredMissilePos = 1;
                        UIposition[] = {0.34,0.48};
                    };
                };
            };
        };
    };
    */
    class Plane_Fighter_01_Base_F : Plane_Base_F {
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent;
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
    };
    class ITC_F181E : Plane_Fighter_01_Base_F {
        side = 1;
        scope = 2;
        displayName= "F-181E";
        faction = "BLU_F";
        vehicleClass = "Air";
        editorSubcategory = "EdSubcat_Planes";
        crew = "B_pilot_F";
        incomingMissileDetectionSystem = 8;
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent  : TransportPylonsComponent {
                UIPicture = "\A3\Air_F_Jets\Plane_Fighter_01\Data\UI\Fighter_01_3DEN_CA.paa";
                class Bays {
                    class BayCenter1 {
                        autoCloseWhenEmptyDelay = 3;
                        bayOpenTime = 0.5;
                        openBayWhenWeaponSelected = 0;
                    };
                    class BayLeft1 {
                        autoCloseWhenEmptyDelay = 2;
                        bayOpenTime = 0.5;
                        openBayWhenWeaponSelected = 0;
                    };
                    class BayRight1 {
                        autoCloseWhenEmptyDelay = 2;
                        bayOpenTime = 0.5;
                        openBayWhenWeaponSelected = 0;
                    };
                };
                class Presets
                {
                };
                class pylons {
                    class pylon1 {
                        attachment = "PylonRack_Missile_AMRAAM_D_x1";
                        hardpoints[] = {"B_BIM9X_RAIL","B_BIM9X_DUAL_RAIL","B_AMRAAM_D_RAIL","B_AMRAAM_D_DUAL_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117"};
                        maxweight = 300;
                        priority = 12;
                        UIposition[] = {0.6,0.45};
                    };
                    class pylon2 : pylon1 {
                        mirroredMissilePos = 1;
                        UIposition[] = {0.05,0.45};
                    };
                    class pylon3 {
                        attachment = "PylonRack_Missile_AGM_02_x2";
                        hardpoints[] = {"B_BIM9X_RAIL","B_BIM9X_DUAL_RAIL","B_AMRAAM_D_RAIL","B_AMRAAM_D_DUAL_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117"};
                        maxweight = 1050;
                        priority = 11;
                        UIposition[] = {0.55,0.35};
                    };
                    class pylon4 : pylon3 {
                        mirroredMissilePos = 3;
                        UIposition[] = {0.1,0.35};
                    };
                    class pylonBayRight1 {
                        attachment = "PylonMissile_Missile_BIM9X_x1";
                        bay = 2;
                        hardpoints[] = {"B_BIM9X"};
                        maxweight = 1200;
                        priority = 10;
                        UIposition[] = {0.5,0.25};
                    };
                    class pylonBayLeft1 : pylonBayRight1 {
                        UIposition[] = {0.16,0.25};
                        mirroredMissilePos = 5;
                        bay = 1;
                    };
                    class pylonBayCenter1 {
                        attachment = "PylonMissile_Missile_AMRAAM_D_INT_x1";
                        bay = 3;
                        hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
                        maxweight = 1200;
                        priority = 9;
                        UIposition[] = {0.33,0.3};
                    };
                    class pylonBayCenter2 : pylonBayCenter1 {
                        mirroredMissilePos = 7;
                        UIposition[] = {0.33,0.35};
                    };
                    class pylonBayCenter3 {
                        attachment = "";
                        bay = 3;
                        hardpoints[] = {};
                        maxweight = 1200;
                        priority = 7;
                        UIposition[] = {0.33,0.4};
                    };
                    class pylonBayCenter4 : pylonBayCenter3 {
                        mirroredMissilePos = 9;
                        UIposition[] = {0.33,0.45};
                    };
                    class pylonBayCenter5 {
                        attachment = "PylonMissile_Bomb_GBU12_x1";
                        bay = 3;
                        hardpoints[] = {"B_AMRAAM_D_INT","itc_hp_dumb", "itc_hp_smart"};
                        maxweight = 1200;
                        priority = 5;
                        UIposition[] = {0.33,0.5};
                    };
                    class pylonBayCenter6 : pylonBayCenter5 {
                        mirroredMissilePos = 11;
                        UIposition[] = {0.33,0.55};
                    };
                };
            };
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
        class itc_air {
            class rover {
                capable = 1;
                frequency_default = 1337;
                ti_enabled = 1;
                ti_modes[] = {1, 0};
                nvg_enabled = 1;
                fov[] = {0.625, 0.12, 0.04};
            };
            hmd = 1;
            tgp = 1;
        };
    };

    class Plane_CAS_01_base_F : Plane_Base_F { };
    class Plane_CAS_01_dynamicLoadout_base_F : Plane_CAS_01_base_F {
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent;
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
        };
    };
    class ITC_A10E : Plane_CAS_01_dynamicLoadout_base_F {
        side = 1;
        scope = 2;
        scopeCurator = 2;
        faction = "BLU_F";
        vehicleClass = "Air";
        editorSubcategory = "EdSubcat_Planes";
        crew = "B_pilot_F";
        displayName="A-10E";
        weapons[]=
        {
            "rhs_weap_MASTERSAFE",
            "Laserdesignator_pilotCamera",
            "ITC_weap_gau8",
            "rhsusf_weap_CMFlareLauncher"
        };
        magazines[]=
        {
            "rhs_mag_1000Rnd_30x173_mixed",
            "240Rnd_CMFlare_Chaff_Magazine",
            "Laserbatteries"
        };
        incomingMissileDetectionSystem = 8;
        class Components : Components 
        {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class VehicleSystemsDisplayManagerComponentLeft;
            class VehicleSystemsDisplayManagerComponentRight;
            class TransportPylonsComponent  : TransportPylonsComponent 
            {
                class pylons
                {
                    class pylon1
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket","RHS_HP_AIM9_2x", "RHS_HP_ECM"};
                        priority = 5;
                        maxweight = 1200;
                        UIposition[] = {0.35,0};
                        bay = -1;
                        attachment = "rhs_mag_ANALQ131";
                    };
                    class pylon2
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket"};
                        priority = 4;
                        maxweight = 1200;
                        UIposition[] = {0.345,0.05};
                        bay = -1;
                        attachment = "itc_hp_dumb_rocket_rhs_ammo_Hydra_M151";
                    };
                    class pylon3
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_dumb_rocket", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru42"};
                        priority = 3;
                        maxweight = 1200;
                        UIposition[] = {0.34,0.1};
                        bay = -1;
                        attachment = "itc_hp_lau117_rhs_ammo_agm65d";
                    };
                    class pylon4
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_bru42"};
                        priority = 2;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.2};
                        bay = -1;
                        attachment = "itc_hp_dumb_Bo_GBU12_LGB";
                    };
                    class pylon5
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_bru42"};
                        priority = 1;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.25};
                        bay = -1;
                        attachment = "itc_hp_dumb_Bo_GBU12_LGB";
                    };
                    class pylon6 : pylon5
                    {
                        priority = 1;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.3};
                        bay = -1;
                        attachment = "itc_hp_dumb_Bo_GBU12_LGB";
                        mirroredMissilePos = 5;
                    };
                    class pylon7: pylon4
                    {
                        UIposition[] = {0.33,0.35};
                        mirroredMissilePos = 4;
                    };
                    class pylon8: pylon3
                    {
                        UIposition[] = {0.34,0.45};
                        mirroredMissilePos = 3;
                    };
                    class pylon9: pylon2
                    {
                        UIposition[] = {0.345,0.5};
                        mirroredMissilePos = 2;
                    };
                    class pylon10: pylon1
                    {
                        UIposition[] = {0.345,0.55};
                        mirroredMissilePos = 1;
                        attachment = "rhs_mag_Sidewinder_2";
                    };
                };
                class Presets
                {
                    class AT
                    {
                        attachment[] = {
                            "rhs_mag_ANALQ131",
                            "itc_hp_dumb_rocket_rhs_ammo_Hydra_M151",
                            "itc_hp_lau117_rhs_ammo_agm65d",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_lau117_rhs_ammo_agm65d",
                            "itc_hp_dumb_rocket_rhs_ammo_Hydra_M151",
                            "rhs_mag_Sidewinder_2"};
                        displayname = "Anti-Tank";
                    };
                    class CAS
                    {
                        attachment[] = {
                            "rhs_mag_ANALQ131",
                            "itc_hp_dumb_rocket_rhs_ammo_Hydra_M151",
                            "itc_hp_lau117_rhs_ammo_agm65e",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_smart_ITC_ammo_gbu38",
                            "itc_hp_smart_ITC_ammo_gbu38",
                            "itc_hp_dumb_Bo_GBU12_LGB",
                            "itc_hp_lau117_rhs_ammo_agm65e",
                            "itc_hp_dumb_rocket_rhs_ammo_Hydra_M151",
                            "rhs_mag_Sidewinder_2"};
                        displayname = "Close Air Support";
                    };
                };
            };
        };
        class itc_air {
            class rover {
                capable = 1;
                frequency_default = 5784;
                ti_enabled = 1;
                ti_modes[] = {1, 0};
                nvg_enabled = 1;
                fov[] = {0.25, 0.125, 0.03125};
            };
            hmd = 1;
            tgp = 1;
        };
    };
};