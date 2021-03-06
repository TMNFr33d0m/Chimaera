//A3M Chimaera
// Visit Us At: Http://www.a3milsim.com
// Scripting By: Salazar (TMN_Fr33dom)
switchMoveEverywhere = compileFinal " _this select 0 switchMove (_this select 1);"; 

_Intro = execVM "scripts\intro.sqf"; 
waitUntil {scriptDone _Intro};
_Predef = execVM "scripts\A3M_Predefines.sqf"; 
waitUntil {scriptDone _Predef}; 
_MissionDef = execVM "scripts\A3M_Chimaera.sqf"; 
waitUntil {scriptDone _MissionDef};
execVM "scripts\LetItSnow.sqf";

PlayerType = typeof player; 

if (PlayerType == "rhsusf_airforce_pilot") then { hint "Welcome, Pilot! You have just flown to this island on a top secret, under the radar mission, and rested at this Ukranian base. You await the arrival of Harbinger and Nomad, who are expected to HALO in very soon."} else {ExecVM "Scripts\SpawnToJump.sqf"}; 
hint format ["5th Special Forces Group \n \n Mission: Chimaera \n \n Prepare to jump. Make sure you have a 'chute before you jump! \n \n Your landing zone is the airfield."];

