_object = _this;
_type = typeOf _object;
x_reload_time_factor = 3.00;
_Crew1= Crewman1;
_Crew2= Crewman2;
_Stage= crewstage1;
_Stage2= crewstage2;
_Stage3= crewstage3;
_helipad= salsvc;

_Object setFuel 0; 

_Crew1 playMove "Acts_NavigatingChopper_Out"; 
sleep 1.0; 
_Crew2 doMove (getPos _object);
sleep 3.0;
_Crew2 attachTo [_object, [-1.5,0.0,-1.5]];
_Crew2 setDir 90;
sleep 1.0;
publicSwitch1= Crewman2 switchMove "Acts_carFixingWheel"; 
publicVariable "publicSwitch1";

_object vehicleChat format ["Servicing %1... Please stand by...", _type];

_magazines = getArray(configFile >> "CfgVehicles" >> _type >> "magazines");

if (count _magazines > 0) then {
	_removed = [];
	{
		if (!(_x in _removed)) then {
			_object removeMagazines _x;
			_removed = _removed + [_x];
		};
	} forEach _magazines;
	{
		_object vehicleChat format ["Reloading %1", _x];
		sleep x_reload_time_factor;
		_object addMagazine _x;
	} forEach _magazines;
};

_count = count (configFile >> "CfgVehicles" >> _type >> "Turrets");

if (_count > 0) then {
	for "_i" from 0 to (_count - 1) do {
		scopeName "xx_reload2_xx";
		_config = (configFile >> "CfgVehicles" >> _type >> "Turrets") select _i;
		_magazines = getArray(_config >> "magazines");
		_removed = [];
		{
			if (!(_x in _removed)) then {
				_object removeMagazines _x;
				_removed = _removed + [_x];
			};
		} forEach _magazines;
		{
			_object vehicleChat format ["Reloading %1", _x];
			sleep x_reload_time_factor;
			_object addMagazine _x;
			sleep x_reload_time_factor;
		} forEach _magazines;
		_count_other = count (_config >> "Turrets");
		if (_count_other > 0) then {
			for "_i" from 0 to (_count_other - 1) do {
				_config2 = (_config >> "Turrets") select _i;
				_magazines = getArray(_config2 >> "magazines");
				_removed = [];
				{
					if (!(_x in _removed)) then {
						_object removeMagazines _x;
						_removed = _removed + [_x];
					};
				} forEach _magazines;
				{
					_object vehicleChat format ["Reloading %1", _x]; 
					sleep x_reload_time_factor;
					_object addMagazine _x;
					sleep x_reload_time_factor;
				} forEach _magazines;
			};
		};
	};
};
_object setVehicleAmmo 1;	// Reload turrets / drivers magazine

sleep x_reload_time_factor;
_object vehicleChat "Repairing...";
_object setDamage 0;
sleep x_reload_time_factor;
_object vehicleChat "Refueling...";
while {fuel _object < 0.99} do {
	//_object setFuel ((fuel _vehicle + 0.1) min 1);
	_object setFuel 1;
	sleep 0.01;
};
sleep x_reload_time_factor;
detach _Crew2;
_Crew2 switchMove "Acts_NavigatingChopper_Out"; 
_object vehicleChat format ["%1 is Go-Flight...fly safe!", _type];
sleep 2.0; 
_Crew2 doMove (getPos _Stage);
sleep 3.0;
_Crew2 setPosATL (getPos _Stage);
_Crew1 setPosATL (getPos _Stage2);
if (true) exitWith {};