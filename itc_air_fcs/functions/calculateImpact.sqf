  params ["_mag", "_plane",["_fps",30],["_checkRate",10]];
  private ["_x","_y","_vx","_vy","_elevation","_fc","_tof","_startAltitude","_startDir","_startPos","_altASL","_altATL","_frictionFwd","_frictionUd","_sideAirFriction"];
  _ammo = (configFile >> "CfgMagazines" >> _mag >> "ammo")  call BIS_fnc_getCfgData;
  _vel = vectorMagnitude (velocity _plane);
  _airFriction = (getNumber(configFile >> "CfgAmmo" >> _ammo >> "airFriction"));
  _sideAirFriction = (getNumber(configFile >> "CfgAmmo" >> _ammo >> "sideAirFriction"));

  //_airFriction = 0;
  _grav = -9.80665;
  //_elevation = (_plane call BIS_fnc_getPitchBank) # 0;
  _elevation = asin ((vectorNormalized velocity _plane) # 2);
  //_elevation = 0;
  _fc = 0;
  _tof = 0;
  _useElevation = _elevation;
  // Set t0 parameters
  _vx = _vel * cos(_useElevation);
  _vy = _vel * sin(_useElevation);
  _frame = 1 / _fps;
  _x = 0;
  _y = 0.1;
  _alt = 0;
  _aboveLand = true;
  _simulatedPos = [];
  _startAltitude = ((getPosASL _plane) # 2);
  _altASL = _startAltitude;
  _altATL = ((getPosATL _plane) # 2);
  _startDir = getDir _plane;
  _startPos = getPosASL _plane;
  while {_aboveLand} do
  {
      _altASL = _startAltitude + _y;
      if(_checkRate % _checkRate == 0) then {
          _simulatedPosXY = (_startPos getPos [_x, _startDir]);
          _simulatedPos = [_simulatedPosXY # 0, _simulatedPosXY # 1, _altASL];
          _alt = _simulatedPos # 2;
          _altATL = getTerrainHeightASL  _simulatedPos;
          _aboveLand = _altATL < _alt;
      };

      //_vel = sqrt(_vx*_vx + _vy*_vy);
      //_vx = _vx - (_vel * _airFriction * _frame);
      //_vy = _vy - (_vel * _sideAirFriction * _frame);

      _vy = _vy + (_grav * _frame);
      // Increment positions
      _y = _y + (_vy * _frame);
      _x = _x + (_vx * _frame);
      // Increment frame count.
      _fc = _fc + 1;
  };
  //player sideChat format ["alt %1 tAlt %2",_simulatedPos # 2, getTerrainHeightASL  _simulatedPos];
  //drawIcon3D ["a3\ui_f\data\gui\Rsc\RscDisplayArsenal\radio_ca.paa", [1,1,1,1], [_simulatedPos # 0, _simulatedPos # 1, 1], 1, 1, 0, str (_fc * _frame), 0, 0.05, "PuristaMedium"];
  [_simulatedPos, _fc * _frame]
