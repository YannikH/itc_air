/*
 * Author: BlackHawk
 *
 * Main logic of autopilot component. Initializes target flight parameters
 * and starts PFH monitoring and adjusting flight until turned off or canceled.
 *
 * Arguments:
 * 0: vehicle that uses the autopilot <OBJECT>
 * 1: autopilot mode 0 - 2 <NUMBER>
 *
 * Return Value:
 * None
 *
 * Example:
 * [] call itc_air_autopilot_fnc_autpilot;
 *
 * Public: No
 */

//after how much deviation AP will disengage, all values in degrees
#define AP_DISENG_MAX_VELOCITY_ANGLE_DIFF 20
#define AP_DISENG_MAX_BANK_DIFF 40
#define AP_DISENG_MAX_HDG_DIFF 10

//values used to finetune aggressiveness of autopilot.
//light planes are yanked harder and big ones don't respond too quickly
#define AP_PLANE_WEIGHT_MULT 0.0001
#define AP_PITCH_FORCE_MULT 1
#define AP_BANK_TORQUE_MULT 300
#define AP_YAW_TORQUE_MULT 2500
#define AP_YAW_BOUND 2

//if autopilot applies force below this treshold, we assume that we are on course
//and only deviation is due to plane's flight characteristics, so we will use these values to calibrate
//this is done so plane doesn't drift slowly to one direction
#define AP_VA_CALIBRATION_TRESH 20
#define AP_BANK_CALIBRATION_TRESH 10
#define AP_YAW_CALIBRATION_TRESH 10

params ["_plane", "_mode"];

private _vX = velocity _plane select 0;
private _vY = velocity _plane select 1;
private _vXY = sqrt (_vX * _vX + _vY * _vY);
private _vZ = velocity _plane select 2;
itc_air_autopilot_targetVelocityAngle = _vZ atan2 _vXY; //note: it doesn't line up with in-game TVV (in-game TVV is shit - you fly level even if it's not on horizon)
itc_air_autopilot_targetBank = (_plane call BIS_fnc_getPitchBank) select 1;
private _weightMult = getMass _plane * AP_PLANE_WEIGHT_MULT;

ITC_AP_mode = _mode; //this one exists for legacy 2D MFD use
itc_air_autopilot_mode = _mode; //this is used with the super hornet cockpit to change it while it's turned on
ITC_AP_TargetAlt = getPosASL _plane select 2;
ITC_AP_TargetHdg = getDir _plane;


//hint format ["va %1, bank %2, hdg %3", itc_air_autopilot_targetVelocityAngle, itc_air_autopilot_targetBank, ITC_AP_TargetHdg];

//these variables are global because we can't easily initialize local ones in pfh
ITC_AP_VaCalibrationCounter = 0;
ITC_AP_VaCalibrationSum = 0;
ITC_AP_VaCalibrationOffset = 0;

ITC_AP_BankCalibrationCounter = 0;
ITC_AP_BankCalibrationSum = 0;
ITC_AP_BankCalibrationOffset = 0;

ITC_AP_YawCalibrationCounter = 0;
ITC_AP_YawCalibrationSum = 0;
ITC_AP_YawCalibrationOffset = 0;

ITC_AP_lastFrameTime = 0;

//used to make sure the heading disable is turned off when using manual direction
itc_air_ap_apman = false;

//modes are ALT (velocity_angle=0 + bank) - 0, ALT/HDG (velocity_angle=0 + hdg + bank=0) - 1, PATH (velocity_angle + bank=0) - 2
//AGCAS - 3
if (itc_air_autopilot_mode == 0 || itc_air_autopilot_mode == 1) then {
	itc_air_autopilot_targetVelocityAngle = 0;
};
if (itc_air_autopilot_mode == 1 || itc_air_autopilot_mode == 2) then {
	itc_air_autopilot_targetBank = 0;
};
if(itc_air_autopilot_mode == 3) then {
	itc_air_autopilot_targetBank = 0;
	itc_air_autopilot_targetVelocityAngle = 20;
};

//playing sound over itself should amplify it's volume
playSound "Click";
playSound "Click";
playSound "Click";

hint "autopilot on";

itc_air_autopilot_pfhId = [{
	_this select 0 params ["_plane", "_weightMult"];

	if (time == ITC_AP_lastFrameTime) exitWith {};
	ITC_AP_lastFrameTime = time; //we do this to check if we are not in pause menu

	//calculate basic values
	private _vX = velocity _plane select 0;
	private _vY = velocity _plane select 1;
	private _vXY = sqrt (_vX * _vX + _vY * _vY);
	private _vZ = velocity _plane select 2;
	private _pitchBank = (_plane call BIS_fnc_getPitchBank);

	private _velocityAngle = _vZ atan2 _vXY;
	private _hdg = getDir _plane;
	private _pitch = _pitchBank select 0;
	private _bank = _pitchBank select 1;

	private _altDifference = ITC_AP_TargetAlt - (getPosASL _plane select 2);
	if(itc_air_autopilot_mode == 1) then {
		private _targetClimbRate = -(4000 * 0.00508) max (_altDifference / 6) min (4000 * 0.00508); // m/s, 0.00508fpm = 1m/s
		itc_air_autopilot_targetVelocityAngle = -30 max (asin (_targetClimbRate / (vectorMagnitude velocity _plane))) min 30; // max pitch -30 ~ 30
	};

	//first we need to figure out whether to cancel autopilot
	private _velocityAngleDiseng = abs (_velocityAngle - itc_air_autopilot_targetVelocityAngle) > AP_DISENG_MAX_VELOCITY_ANGLE_DIFF;
	private _hdgDiseng = (abs (_hdg - ITC_AP_TargetHdg) > AP_DISENG_MAX_HDG_DIFF) && !itc_air_ap_apman;
	private _bankDiseng = abs (_bank - itc_air_autopilot_targetBank) > AP_DISENG_MAX_BANK_DIFF;

	if(itc_air_autopilot_mode == 3) then {
		_velocityAngleDiseng = false;
		_hdgDiseng = false;
		_bankDiseng = false;
	};

	private _avionicsDamaged = false;
	if (!isNil {_plane getHitPointDamage "HitAvionics"}) then { //some vehicles might not have this hitpoint name
		_avionicsDamaged = (_plane getHitPointDamage "HitAvionics") > 0.5;
	};

	if (
		!alive player ||
		!alive _plane ||
		_avionicsDamaged ||
		speed _plane < 200 ||
		(getPos _plane select 2) < 10 ||
		(itc_air_autopilot_mode == 0 && (_velocityAngleDiseng || _bankDiseng)) ||
		(itc_air_autopilot_mode == 1 && (_velocityAngleDiseng || _bankDiseng || _hdgDiseng)) ||
		(itc_air_autopilot_mode == 2 && (_velocityAngleDiseng || _bankDiseng)) ||
		!ITC_AP_isEnabled //turn off autpilot if it was toggled off via pressing keybind again
	) exitWith {
		//we exit
		[_this select 1] call CBA_fnc_removePerFrameHandler;

		//this value is set to false in key handler where we toggle AP off
		if (!ITC_AP_isEnabled) exitWith {
			hint "Autopilot turned off";
		};

		//play the sound only if we didn't turn off manually
		playSound "Click";
		playSound "Click";
		ITC_AP_isEnabled = false;

		if ((_plane gethit "HitAvionics") > 0.5) exitWith {
			hint "Autopilot off - Damaged";
		};
		if (speed _plane < 200) exitWith {
			hint "Autopilot off - Speed";
		};
		if ((getPos _plane select 2) < 10) exitWith {
			hint "Autopilot off - Ground";
		};
		if (_velocityAngleDiseng) exitWith {
			hint "Autopilot off - Pitch limit";
		};
		if (_bankDiseng) exitWith {
			hint "Autopilot off - Bank limit";
		};
		if (itc_air_autopilot_mode == 1 && _hdgDiseng) exitWith {
			hint "Autopilot off - Heading limit";
		};

		//systemChat format ["aborting autopilot!, va: %1, bank: %2, hdg: %3", abs (_velocityAngle - itc_air_autopilot_targetVelocityAngle), abs (_bank - itc_air_autopilot_targetBank), abs (_hdg - ITC_AP_TargetHdg)];
	};

	//BANK TURN
	private _hdgRotate = 0;
	if (itc_air_autopilot_mode == 1) then {
		_hdgRotate = ITC_AP_TargetHdg - _hdg + ([0, 360] select ((_hdg > 180) && ((_hdg - 180) > ITC_AP_TargetHdg)));
		private _bankTurn = -itc_air_autopilot_bankLim max (_hdgRotate * 2) min itc_air_autopilot_bankLim;
		itc_air_autopilot_targetBank = (itc_air_autopilot_targetBank + _bankTurn) max -(_hdgDiff*4) min (_hdgDiff*4) max -itc_air_autopilot_bankLim min itc_air_autopilot_bankLim;
	};

	//BANK
	//linear relationship between offset and force proved to have most stable results
	private _bankTorque = (itc_air_autopilot_targetBank - _bank) * AP_BANK_TORQUE_MULT * _weightMult;

	//Calibration
	if (abs _bankTorque < AP_BANK_CALIBRATION_TRESH) then {
		ITC_AP_BankCalibrationCounter = ITC_AP_BankCalibrationCounter + 1;
		ITC_AP_BankCalibrationSum = ITC_AP_BankCalibrationSum + _bankTorque;

		if (ITC_AP_BankCalibrationCounter == 100) then {
			ITC_AP_BankCalibrationCounter = 0;
			ITC_AP_BankCalibrationOffset = ITC_AP_BankCalibrationOffset + ITC_AP_BankCalibrationSum / 100;
			ITC_AP_BankCalibrationSum = 0;
		};
		_bankTorque = _bankTorque + ITC_AP_BankCalibrationOffset;
	};
	//

	_plane addTorque (_plane vectorModelToWorld [0,-_bankTorque,0]);
	//systemChat format ["pf %1, bt %2", _velocityAngle, _bank];


	//YAW
	private _yawTorque = 0;
	if (itc_air_autopilot_mode == 1) then {
		_yawTorque = (-AP_YAW_BOUND max _hdgRotate min AP_YAW_BOUND) * AP_YAW_TORQUE_MULT * _weightMult;

		//Calibration
		if (abs _yawTorque < AP_YAW_CALIBRATION_TRESH) then {
			ITC_AP_YawCalibrationCounter = ITC_AP_YawCalibrationCounter + 1;
			ITC_AP_YawCalibrationSum = ITC_AP_YawCalibrationSum + _yawTorque;

			if (ITC_AP_YawCalibrationCounter == 100) then {
				ITC_AP_YawCalibrationCounter = 0;
				ITC_AP_YawCalibrationOffset = ITC_AP_YawCalibrationOffset + ITC_AP_YawCalibrationSum / 100;
				ITC_AP_YawCalibrationSum = 0;
			};
			_yawTorque = _yawTorque + ITC_AP_YawCalibrationOffset;
		};
		//

		_plane addTorque (_plane vectorModelToWorld [0,0,_yawTorque]);
		//systemChat format ["pf %1, yt %2", _pitchForce, _yawTorque];
	};


	//VELOCITY ANGLE
	//we use force applied far in front of the nose of the plane so we don't have to worry
	//about bank when we want to point nose vertically up
	if(itc_air_autopilot_mode == 3) then {
		itc_air_autopilot_targetVelocityAngle = 20;
	};
	private _yawCompensation = abs ((-AP_YAW_BOUND max _hdgRotate min AP_YAW_BOUND) * (sin _bank) * AP_YAW_TORQUE_MULT / 2000);
	private _pitchForce = (itc_air_autopilot_targetVelocityAngle - _velocityAngle + _yawCompensation) * AP_PITCH_FORCE_MULT * _weightMult;

	//we want only small samples to not account for large errors
	if (abs _pitchForce < AP_VA_CALIBRATION_TRESH) then {
		ITC_AP_VaCalibrationCounter = ITC_AP_VaCalibrationCounter + 1;
		ITC_AP_VaCalibrationSum = ITC_AP_VaCalibrationSum + _pitchForce;

		//below we count average force deficit from last 100 samples, we add it to the offset and reset the counter
		//it is done to prevent situations where plane slowly drifts up or down due to it's flight model
		//(in default behaviour AP would try to apply very small force over a long time while plane slowly looses altitude)
		if (ITC_AP_VaCalibrationCounter == 100) then {
			ITC_AP_VaCalibrationCounter = 0;
			ITC_AP_VaCalibrationOffset = ITC_AP_VaCalibrationOffset + ITC_AP_VaCalibrationSum / 100;
			ITC_AP_VaCalibrationSum = 0;
		};
		_pitchForce = _pitchForce + ITC_AP_VaCalibrationOffset;
	};

	//we apply the force to point in front of plane's nose
	//note that applied force is in world space (not relative to plane)
	_plane addForce [[0,0,_pitchForce],[0,500,0]];

}, 0.1, [_plane, _weightMult]] call CBA_fnc_addPerFrameHandler;
