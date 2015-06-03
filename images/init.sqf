// 2ABCT Counter Insurgency Init
// Visit Us At: Http://www.a3milsim.com
// Scripting By: Salazar (TMN_Fr33dom)

switchMoveEverywhere = compileFinal " _this select 0 switchMove (_this select 1);";
execVM "scripts\A3M_Predefines.sqf"; 
execVM "scripts\LetItSnow.sqf";

_uid = getPlayerUID player;

if (_uid == "76561198039996106") then { hint "Welcome, 1st Lt Lanyan! You have flown to this island stealthily in your A-10, but cannot approach the area of Thirsk and further due to EWRS. Await infantry arrival by HALO."} 
else { 
		if (_uid == "76561198102873933") then {hint "Welcome, 2nd Lt Wolfe! You have flown to this island stealthily in your A-10, but cannot approach the area of Thirsk and further due to EWRS. Await infantry arrival by HALO." } else {execVM "scripts\SpawnToJump.sqf"};
 }; 

hint format ["5th Special Forces Group \n \n MIssion: Chimaera \n \n Prepare to jump. Make sure you have a 'chute before you jump! \n \n Your landing zone is the airfield."]; 

