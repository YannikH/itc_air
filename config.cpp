class CfgPatches {
    class itc_air {
        name = "";
        units[] = {"ITC_A10E", "itc_Gripen","ITC_ROVER_SIR"};
        requiredVersion = 1.0;
        requiredAddons[] = {"CBA_Extended_EventHandlers", "A3_Air_F","A3_Air_F_Beta","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPB_Heli_Light_03","A3_CargoPoses_F","rhsusf_c_troops","rhsusf_c_heavyweapons","rhsusf_sounds","rhsusf_c_airweapons"};
        icon = "\itc_air\data\UI\MDF.paa";
        picture = "\itc_air\data\UI\MDF.paa";
    };
};
#define STRINGIFY(s) #s

#include "cfgAmmo.hpp"
#include "cfgMagazines.hpp"
#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"

#include "Dialog.hpp"
#include "Dialog_rover.hpp"

class CfgFunctions
{
    class ITC
    {
        class general
        {
            class fired {
                file = "itc_air\functions\fired.sqf";
            };
            class draw_laser_bundle {
                file = "itc_air\functions\targeting\drawLaserBundle.sqf";
            };
        };

        class ammo
        {
            class ammo_init {
                preInit = 1;
                file = "itc_air\functions\ammo\init.sqf";
            };
            class ammo_fired_wp {
                file = "itc_air\functions\ammo\firedWP.sqf";
            };
            class ammo_prox_fuze {
                file = "itc_air\functions\ammo\proxFuze.sqf";
            };
        };
        class jdam {
            class targeting_fired {
                file = "itc_air\functions\targeting\fired.sqf";
            };
            class targeting_init {
                preInit = 1;
                file = "itc_air\functions\targeting\init.sqf";
            };
            class targeting_keyDown {
                file = "itc_air\functions\targeting\keyDown.sqf";
            };
            class targeting_cycleWP {
                file = "itc_air\functions\targeting\cycleWP.sqf";
            };
            class targeting_config_bomb {
                file = "itc_air\functions\targeting\configBomb.sqf";
            };
            class targeting_targetWP {
                file = "itc_air\functions\targeting\targetWP.sqf";
            };
            class targeting_store_poi {
                file = "itc_air\functions\targeting\storePOI.sqf";
            };
            class targeting_laser_spot_search_track {
                file = "itc_air\functions\targeting\laserSpotSearchTrack.sqf";
            };
            class targeting_hmd_tgp_slew {
                file = "itc_air\functions\targeting\hmdSlewTgp.sqf";
            };
            class targeting_fcr_tgp_slew {
                file = "itc_air\functions\targeting\fcrSlewTgp.sqf";
            };
            class targeting_render_3d {
                file = "itc_air\functions\targeting\render3dassets.sqf";
                preInit = 1;
            };
            class targeting_laser_ir {
                file = "itc_air\functions\targeting\laserIR.sqf";
            };
            class targeting_laser_ir_local {
                file = "itc_air\functions\targeting\toggleLaserLocal.sqf";
            };
            class targeting_vehicle_changed_handler {
                file = "itc_air\functions\targeting\vehicleChangedHandler.sqf";
            };
        };

        class rover {
            class initRover {
                preInit = 1;
                file = "itc_air\functions\rover\initROVER.sqf";
            };
            class rover_cycle_code {
                file = "itc_air\functions\rover\cycleCode.sqf";
            };
            class openRover {
                file = "itc_air\functions\rover\openROVER.sqf";
            };
            class roverButton {
                file = "itc_air\functions\rover\roverButton.sqf";
            };
            class openDuoTouch {
                file = "itc_air\functions\rover\openDuoTouch.sqf";
            };
            class canOpenRover {
                file = "itc_air\functions\rover\canRover.sqf";
            };
        };
    };
    class itc_air_rover {
        class rover {
            class broadcast_toggle {
                file = "itc_air\functions\rover\broadcastToggle.sqf";
            };
        };
    };
};  


class TB_MK13SmokeEffects {
    class LightExpSmall {
        simulation = "light";
        type = "ExploLight";
        position[] = {0, 1.3, 0};
        intensity = 0.0005;
        interval = 1;
        lifeTime = 0.8;
    };

    class SmokeCloud {
        simulation = "particles";
        type = "TB_MK13SmokeCloudBigLight";
        position[] = {0, 0.6, 0};
        intensity = 1;
        interval = 1;
        lifeTime = 2.2;
    };

    class SmokeCloudLinger {
        simulation = "particles";
        type = "TB_MK13SmokeCloudBigLightSlow";
        position[] = {0, 0.6, 0};
        intensity = 1;
        interval = 1;
        lifeTime = 30;
    };
};

class CfgCloudlets {
    class Default;
    class TB_MK13SmokeCloudBigLight : Default {
        interval = "0.4 * interval";
        circleRadius = 3.3;
        circleVelocity[] = {0, 0.03, 0};
        angleVar = 1;
        animationName = "";
        timerPeriod = 1;
        lifeTime = 30;
        moveVelocity[] = {0.05, 0.085, 0.05};
        rotationVelocity = 0;
        weight = 0.052;
        volume = 0.04;
        rubbing = 0.025;
        size[] = {"0.0125 * intensity + 7", "0.0125 * intensity + 13", "0.0125 * intensity + 14", "0.0125 * intensity + 16"};
        color[] = {{0.8, 0.8, 0.8, 0.8}, {0.9, 0.9, 0.9, 0.8}, {0.95, 0.95, 0.95, 0.75}, {0.97, 0.97, 0.97, 0.65}, {0.97, 0.97, 0.97, 0.6}, {0.98, 0.98, 0.98, 0.6}, {1, 1, 1, 0}};
        animationSpeed[] = {1.5, 0.5, 0.3, 0.25, 0.25};
        randomDirectionPeriod = 0.2;
        randomDirectionIntensity = 0.2;
        onTimerScript = "";
        beforeDestroyScript = "";
        lifeTimeVar = 4;
        positionVar[] = {5, 12, 5};
        MoveVelocityVar[] = {0.05, 0.05, 0.05};
        rotationVelocityVar = 20;
        sizeVar = 0.7;
        colorVar[] = {0, 0, 0, 0};
        randomDirectionPeriodVar = 0;
        randomDirectionIntensityVar = 0;
    };
    class TB_MK13SmokeCloudBigLightSlow : TB_MK13SmokeCloudBigLight {
        circleRadius = 2.9;
        interval = 0.8;
        positionVar[] = {4, 8, 4};
    };
};