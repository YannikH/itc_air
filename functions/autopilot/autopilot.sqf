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
 * [] call ITC_fnc_autpilot;
 *
 * Public: No
 */

//after how much deviation AP will disengage, all values in degrees
#define AP_DISENG_MAX_VELOCITY_ANGLE_DIFF 10
#define AP_DISENG_MAX_BANK_DIFF 20
#define AP_DISENG_MAX_HDG_DIFF 10

//values used to finetune aggressiveness of autopilot.
//light planes are yanked harder and big ones don't respond too quickly
#define AP_PLANE_WEIGHT_MULT 0.0001
#define AP_PITCH_FORCE_MULT 1
#define AP_BANK_TORQUE_MULT 300
#define AP_YAW_TORQUE_MULT 2000

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
private _targetVelocityAngle = _vZ atan2 _vXY; //note: it doesn't line up with in-game TVV (in-game TVV is shit - you fly level even if it's not on horizon)
private _targetBank = (_plane call BIS_fnc_getPitchBank) select 1;
private _targetHdg = getDir _plane;
private _weightMult = getMass _plane * AP_PLANE_WEIGHT_MULT;

//hint format ["va %1, bank %2, hdg %3", _targetVelocityAngle, _targetBank, _targetHdg];

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

//modes are ALT (velocity_angle=0 + bank) - 0, ALT/HDG (velocity_angle=0 + hdg + bank=0) - 1, PATH (velocity_angle + bank=0) - 2
if (_mode == 0 || _mode == 1) then {
	_targetVelocityAngle = 0;
};
if (_mode == 1 || _mode == 2) then {
	_targetBank = 0;
};

//playing sound over itself should amplify it's volume
playSound "Click";
playSound "Click";
playSound "Click";

hint "autopilot on";

pfhID = [{
	_this select 0 params ["_plane", "_targetVelocityAngle", "_targetBank", "_targetHdg", "_weightMult", "_mode"];

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

	//first we need to figure out whether to cancel autopilot
	private _velocityAngleDiseng = abs (_velocityAngle - _targetVelocityAngle) > AP_DISENG_MAX_VELOCITY_ANGLE_DIFF;
	private _hdgDiseng = abs (_hdg - _targetHdg) > AP_DISENG_MAX_HDG_DIFF;
	private _bankDiseng = abs (_bank - _targetBank) > AP_DISENG_MAX_BANK_DIFF;

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
		(_mode == 0 && (_velocityAngleDiseng || _bankDiseng)) ||
		(_mode == 1 && (_velocityAngleDiseng || _bankDiseng || _hdgDiseng)) ||
		(_mode == 2 && (_velocityAngleDiseng || _bankDiseng)) ||
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
		if (_mode == 1 && _hdgDiseng) exitWith {
			hint "Autopilot off - Heading limit";
		};

		//systemChat format ["aborting autopilot!, va: %1, bank: %2, hdg: %3", abs (_velocityAngle - _targetVelocityAngle), abs (_bank - _targetBank), abs (_hdg - _targetHdg)];
	};

	//VELOCITY ANGLE
	//we use force applied far in front of the nose of the plane so we don't have to worry when
	//about bank when we want to point nose vertically up
	private _pitchForce = (_targetVelocityAngle - _velocityAngle) * AP_PITCH_FORCE_MULT * _weightMult;
	
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

	//BANK
	//linear relationship between offset and force proved to have most stable results
	private _bankTorque = (_targetBank - _bank) * AP_BANK_TORQUE_MULT * _weightMult;
	
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
	if (_mode == 1) then {
		private _yawTorque = (_targetHdg - _hdg) * AP_YAW_TORQUE_MULT * _weightMult;

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

}, 0.1, [_plane, _targetVelocityAngle, _targetBank, _targetHdg, _weightMult, _mode]] call CBA_fnc_addPerFrameHandler;