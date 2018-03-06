#include "vehDefines.hpp"
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
        class Components : Components {
            class SensorsManagerComponent;
            class TransportCountermeasuresComponent;
            class TransportPylonsComponent  : TransportPylonsComponent {
                UIPicture = "\A3\Air_F_Jets\Plane_Fighter_04\Data\UI\Fighter_04_3DEN_CA.paa";
                class Presets
                {
                    class AT
                    {
                        attachment[] = {
                            "I_AMRAAM_C_RAIL",
                            "I_AMRAAM_C_RAIL",
                            "rhs_mag_gbu12",
                            "rhs_mag_gbu12",
                            "rhs_mag_agm65d_3",
                            "rhs_mag_agm65d_3"
                        };
                        displayname = "Anti-Tank";
                    };
                    class CAS
                    {
                        attachment[] = {
                            "I_AMRAAM_C_RAIL",
                            "I_AMRAAM_C_RAIL",
                            "itc_2rnd_gbu38",
                            "ITC_3rnd_gbu12",
                            "ITC_3rnd_gbu12",
                            "itc_2rnd_gbu38"
                        };
                        displayname = "Close Air Support";
                    };
                    class Strike
                    {
                        attachment[] = {
                            "I_AMRAAM_C_RAIL",
                            "I_AMRAAM_C_RAIL",
                            "itc_2rnd_gbu38",
                            "itc_2rnd_gbu38",
                            "itc_2rnd_gbu38",
                            "itc_2rnd_gbu38"
                        };
                        displayname = "Strike";
                    };
                };
                class pylons {
                    class pylon1 {
                        attachment = "PylonMissile_Missile_BIM9X_x1";
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
                        attachment = "PylonRack_Missile_AGM_02_x1";
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
                        attachment = "PylonRack_Missile_AMRAAM_C_x1";
                        hardpoints[] = {"I_BIM9X","I_AMRAAM_C_RAIL","I_AGM65_RAIL","itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru33", "itc_hp_bru55", "itc_hp_bru55_lau117"};
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
                        hardpoints[] = {"itc_hp_dumb","RHS_HP_AIM9_2x", "RHS_HP_ECM"};
                        priority = 5;
                        maxweight = 1200;
                        UIposition[] = {0.35,0};
                        bay = -1;
                        attachment = "rhs_mag_ANALQ131";
                    };
                    class pylon2
                    {
                        hardpoints[] = {"itc_hp_dumb"};
                        priority = 4;
                        maxweight = 1200;
                        UIposition[] = {0.345,0.05};
                        bay = -1;
                        attachment = "rhs_mag_FFAR_7_USAF";
                    };
                    class pylon3
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_lau117", "itc_hp_bru42"};
                        priority = 3;
                        maxweight = 1200;
                        UIposition[] = {0.34,0.1};
                        bay = -1;
                        attachment = "rhs_mag_agm65d";
                    };
                    class pylon4
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_bru42"};
                        priority = 2;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.2};
                        bay = -1;
                        attachment = "rhs_mag_gbu12";
                    };
                    class pylon5
                    {
                        hardpoints[] = {"itc_hp_dumb", "itc_hp_smart", "itc_hp_bru42"};
                        priority = 1;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.25};
                        bay = -1;
                        attachment = "rhs_mag_gbu12";
                    };
                    class pylon6 : pylon5
                    {
                        priority = 1;
                        maxweight = 1200;
                        UIposition[] = {0.33,0.3};
                        bay = -1;
                        attachment = "rhs_mag_gbu12";
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
                            "rhs_mag_FFAR_7_USAF",
                            "rhs_mag_agm65d_3",
                            "rhs_mag_gbu12",
                            "rhs_mag_gbu12",
                            "rhs_mag_gbu12",
                            "rhs_mag_gbu12",
                            "rhs_mag_agm65d_3",
                            "itc_mag_M156_7",
                            "rhs_mag_Sidewinder_2"};
                        displayname = "Anti-Tank";
                    };
                    class CAS
                    {
                        attachment[] = {
                            "rhs_mag_ANALQ131",
                            "rhs_mag_FFAR_7_USAF",
                            "rhs_mag_agm65e",
                            "rhs_mag_gbu12",
                            "ITC_1rnd_gbu38",
                            "ITC_1rnd_gbu38",
                            "rhs_mag_gbu12",
                            "rhs_mag_agm65e",
                            "itc_mag_M156_7",
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