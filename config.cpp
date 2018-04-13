class CfgPatches {
    class itc_air {
        name = "ITC Aircraft";
        author = "Yax";
        units[] = {"ITC_A10E", "itc_Gripen", "ITC_A159", "ITC_F181E"};
        weapons[] = {"ITC_ROVER_SIR"};
        requiredVersion = 1.0;
        requiredAddons[] = {"CBA_Extended_EventHandlers", "A3_Air_F","A3_Air_F_Beta","A3_Air_F_EPC_Plane_CAS_01","A3_Air_F_EPB_Heli_Light_03","A3_CargoPoses_F"};
        icon = "\itc_air\data\UI\ITC.paa";
        picture = "\itc_air\data\UI\ITC.paa";
    };
};
#define STRINGIFY(s) #s

#include "config\pods.hpp"
#include "config\presets.hpp"

#include "cfgAmmo.hpp"
#include "cfgMagazines.hpp"
#include "cfgWeapons.hpp"
#include "cfgVehicles.hpp"

#include "Dialog.hpp"
#include "Dialog_rover.hpp"
#include "config\mfd.hpp"
#include "config\tgp.hpp"

class CfgFunctions
{

    #include "config\mfd_functions.cpp"
    class itc_air_common {
        class functions {
            class get_turret_target {
                file = "itc_air\functions\common\getTurretTargetPoint.sqf";
            };
            class get_turret_rotation {
                file = "itc_air\functions\common\getTurretRotation.sqf";
            };
            class get_fov_steps {
                file = "itc_air\functions\common\getFovSteps.sqf";
            };
            class set_var {
                file = "itc_air\functions\common\setVarGlobal.sqf";
            };
            class is_laser_code {
                file = "itc_air\functions\common\isLaserCode.sqf";
            };
        };
    };
    class itc_air_datalink {
        class functions {
            class broadcast_toggle {
                file = "itc_air\functions\datalink\broadcastToggle.sqf";
            };
            class init {
                preInit = 1;
                file = "itc_air\functions\datalink\init.sqf";
            };
            class text_send {
                file = "itc_air\functions\datalink\sendText.sqf";
            };
            class text_recv {
                file = "itc_air\functions\datalink\recvText.sqf";
            };
        };
    };
    class itc_air_rover {
        class functions {
            class can_open {
                file = "itc_air\functions\rover\canRover.sqf";
            };
            class cycle_code {
                file = "itc_air\functions\rover\cycle.sqf";
            };
            class open {
                file = "itc_air\functions\rover\openRover.sqf";
            };
            class button {
                file = "itc_air\functions\rover\roverButton.sqf";
            };
            class view_duo_touch {
                file = "itc_air\functions\rover\openDuoTouch.sqf";
            };
            class change_camera_mode {
                file = "itc_air\functions\rover\cameraMode.sqf";
            };
        };
    };
    class itc_air_ir_laser {
        class functions {
            class init {
                preInit = 1;
                file = "itc_air\functions\irLaser\init.sqf";
            };
            class toggle_pulse {
                file = "itc_air\functions\irLaser\toggleLaserPulse.sqf";
            };
            class toggle {
                file = "itc_air\functions\irLaser\laserIR.sqf";
            };
            class toggle_drawing {
                file = "itc_air\functions\irLaser\toggleLaserLocal.sqf";
            };
        };
    };
    class itc_air_ammo {
        class functions {
            class fired {
                file = "itc_air\functions\ammo\fired.sqf";
            };
            class init {
                preInit = 1;
                file = "itc_air\functions\ammo\init.sqf";
            };
            class fired_wp {
                file = "itc_air\functions\ammo\firedWP.sqf";
            };
            class fired_prox_fuze {
                file = "itc_air\functions\ammo\proxFuze.sqf";
            };
            class paveway {
                file = "itc_air\functions\ammo\paveway.sqf";
            };
            class apkws {
                file = "itc_air\functions\ammo\apkws.sqf";
            };
            class calculate_drag {
                file = "itc_air\functions\ammo\calculateDrag.sqf";
            };
            class calculate_mass {
                file = "itc_air\functions\ammo\calculateMass.sqf";
            };
        };
    };
    class itc_air_jdam {
        class functions {
            class fired {
                file = "itc_air\functions\jdam\fired.sqf";
            };
            class guidance {
                file = "itc_air\functions\jdam\guidance.sqf";
            };
            class fuzing {
                file = "itc_air\functions\jdam\fuzing.sqf";
            };
            class config_bomb {
                file = "itc_air\functions\jdam\configBomb.sqf";
            };
        };
    };
    class itc_air_steerpoints {
        class functions {
            class cycle {
                file = "itc_air\functions\steerpoints\cycleWP.sqf";
            };
            class target {
                file = "itc_air\functions\steerpoints\targetWP.sqf";
            };
            class store {
                file = "itc_air\functions\steerpoints\storePOI.sqf";
            };
            class create {
                file = "itc_air\functions\steerpoints\create.sqf";
            };
            class delete {
                file = "itc_air\functions\steerpoints\delete.sqf";
            };
            class update {
                file = "itc_air\functions\steerpoints\update.sqf";
            };
        };
    };
    class itc_air_tgp {
        class functions {
            class init {
                preInit = 1;
                file = "itc_air\functions\targeting\init.sqf";
            };
            class laser_spot_search_track {
                file = "itc_air\functions\targeting\laserSpotSearchTrack.sqf";
            };
            class hmd_slew {
                file = "itc_air\functions\targeting\hmdSlewTgp.sqf";
            };
            class fcr_slew {
                file = "itc_air\functions\targeting\fcrSlewTgp.sqf";
            };
            class create_camera {
                file = "itc_air\functions\targeting\createCamera.sqf";
            };
            class target {
                file = "itc_air\functions\targeting\targetPod.sqf";
            };
            class wso_camera {
                file = "itc_air\functions\targeting\wso\camera.sqf";
            };
            class wso_mouse_move {
                file = "itc_air\functions\targeting\wso\mouseMove.sqf";
            };
            class wso_open {
                file = "itc_air\functions\targeting\wso\open.sqf";
            };
            class wso_button {
                file = "itc_air\functions\targeting\wso\button.sqf";
            };
            class wso_render {
                file = "itc_air\functions\targeting\wso\render.sqf";
            };
        };
    };
    class itc_air_ui {
        class functions {
            class draw_laser_bundle {
                file = "itc_air\functions\UI\drawLaserBundle.sqf";
            };
            class render_3d {
                file = "itc_air\functions\UI\render3dassets.sqf";
                preInit = 1;
            };
            class tgp_symbology {
                file = "itc_air\functions\UI\drawTGPSymbology.sqf";
            };
            class pitch_bank_indicators {
                file = "itc_air\functions\UI\pitchBankIndicators.sqf";
            };
            class sa_cue {
                file = "itc_air\functions\UI\SACue.sqf";
            };
            class laser_status {
                file = "itc_air\functions\UI\laserStatus.sqf";
            };
            class yardstick {
                file = "itc_air\functions\UI\yardstick.sqf";
            };
            class grid {
                file = "itc_air\functions\UI\grid.sqf";
            };
            class hmd_symbology {
                file = "itc_air\functions\UI\drawHMDSymbology.sqf";
            };
            class poi_markers {
                file = "itc_air\functions\UI\POImarkers.sqf";
            };
            class tof {
                file = "itc_air\functions\UI\tof.sqf";
            };
            class tof_bomb {
                file = "itc_air\functions\UI\tofBomb.sqf";
            };
        };
    };
    class itc_air_vehicle {
      class functions {
        class changed {
            file = "itc_air\functions\vehicle\vehicleChangedHandler.sqf";
        };
        class setup {
            file = "itc_air\functions\vehicle\vehicleSetup.sqf";
        };
        class apply_forces {
            file = "itc_air\functions\vehicle\applyForces.sqf";
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
