// Let It Snow, Let It Snow, Let It Snowwwwwwwww

hint "BRRR! It's Snowing!! \n \n Current Temperature: -5c"; 

//Adds Condensation to Units (Non-ACRE)
//By Falcon (Original by tpw)
//Last Updated 23.01.2012

private ["_unit","_int","_nextTime", "_source", "_mylogic", "_fog"];

sleep 5;
my_breath_func = {
	{
		_unit = _x;
		if(alive _unit) then {
			_nextTime = _unit getVariable ["myNextBreathTime", -1];
			if(_nextTime == -1) then {
				_unit setVariable ["myNextBreathTime", diag_tickTime + (1+random(2))];
				_source = "logic" createVehicleLocal (getpos _unit);
			    _unit setVariable ["myBreathingParticleLogic", _source];
				if(_unit == player) then {_source attachto [_unit,[0,0.1,.04], "neck"];} else {_source attachto [_unit,[0,0.05,-0.08], "pilot"];};
				_unit setVariable ["myBreathingParticleSource", nil];
			};
			_myParticleSource = _unit getVariable ["myBreathingParticleSource", nil];
			if(diag_tickTime >= _nextTime) then {
				if (isNil "_myParticleSource") then {
					_unit setVariable ["myNextBreathTime", diag_tickTime + 0.5];
					_mylogic = _unit getVariable "myBreathingParticleLogic";
					_fog = "#particlesource" createVehicleLocal (getpos _mylogic);
					_fog setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal", 16, 12, 13,0],
						"", 
						"Billboard", 
						0.5, 
						0.5, 
						[0,0,0],
						[0, 0.0, -0.3], 
						1, 1.275,    1, 0.2, 
						[0, 0.2,0], 
						[[1,1,1, (.03+random(.06))], [1,1,1, 0.01], [1,1,1, 0]], //Change  (.01+random(.03)) for different effect 0 (less) 1 (more)
						[1000], 
						1, 
						0.04, 
						"", 
						"", 
						_mylogic];
						_fog setParticleRandom [2, [0, 0, 0], [0.25, 0.25, 0.25], 0, 0.5, [0, 0, 0, 0.1], 0, 0, 10];
						_fog setDropInterval (0.008-random(0.001)); //change drop interval for particle density 0.001 (most dense) -> .999 (least dense)
						
						_unit setVariable ["myBreathingParticleSource", _fog];
					} else {
					        _unit setVariable ["myNextBreathTime", diag_tickTime + (2+random(3))];
						deletevehicle (_unit getVariable "myBreathingParticleSource");
						_unit setVariable ["myBreathingParticleSource", nil];
					};				
			};
		} else {
				_unit setVariable ["myNextBreathTime", -1]; 
				deletevehicle (_unit getVariable "myBreathingParticleLogic");
				deletevehicle (_unit getVariable "myBreathingParticleSource");
			};
	} forEach allUnits;
};

[my_breath_func, 0.1] call cba_fnc_addPerFrameHandler;

private ["_snowSparse","_snowLight","_snowMedium","_snowHeavy","_snowStorm","_rSnow"];

while {true} do {

    _rSnow = [1,5] call BIS_fnc_randomInt;
    
    switch (_rSnow) do {
    
        case 1 : {
                _snowSparse = "#particleSource" createVehicleLocal (position player);  
                _snowSparse setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
                _snowSparse setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
                _snowSparse setParticleCircle [0,[0,0,0]];
                _snowSparse setDropInterval 0.0001; // 0.0001 more zeros is more snow
                };
        case 2 : {
                _snowLight = "#particleSource" createVehicleLocal (position player);  
                _snowLight setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
                _snowLight setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
                _snowLight setParticleCircle [0,[0,0,0]];
                _snowLight setDropInterval 0.00001; // 0.0001 more zeros is more snow
                };
        case 3 : {
                _snowMedium = "#particleSource" createVehicleLocal (position player);  
                _snowMedium setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
                _snowMedium setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
                _snowMedium setParticleCircle [0,[0,0,0]];
                _snowMedium setDropInterval 0.000001; // 0.0001 more zeros is more snow
                };
        case 4 : {
                _snowHeavy = "#particleSource" createVehicleLocal (position player);  
                _snowHeavy setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
                _snowHeavy setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
                _snowHeavy setParticleCircle [0,[0,0,0]];
                _snowHeavy setDropInterval 0.0000001; // 0.0001 more zeros is more snow
                };
        case 5 : {
                _snowStorm = "#particleSource" createVehicleLocal (position player);  
                _snowStorm setParticleParams [["\A3\data_f\ParticleEffects\Universal\Universal", 16,12,13,1], "","Billboard", 1, 7, [0,0,0], [0,0,0], 1, 0.0000001, 0.000, 1.7,[0.07],[[1,1,1,1]],[0,1], 0.2, 1.2, "", "",vehicle player];
                _snowStorm setParticleRandom [0,[30,30,20],[0,0,0],0,0.01,[0,0,0,0.1],0,0];
                _snowStorm setParticleCircle [0,[0,0,0]];
                _snowStorm setDropInterval 0.00000000001; // 0.0001 more zeros is more snow
                };        
    };

sleep 20 + (random 1800);

deleteVehicle _snowSparse;
deleteVehicle _snowLight;
deleteVehicle _snowMedium;
deleteVehicle _snowHeavy;
deleteVehicle _snowStorm;

    //add random 5% possible no snow interval
    if (random 1 <= 0.05) then {
        sleep 1 + (random 1200);
    };
};  
