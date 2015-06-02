// 2ABCT Counter Insurgency Init
// Visit Us At: Http://www.a3milsim.com
// Scripting By: Salazar (TMN_Fr33dom)

switchMoveEverywhere = compileFinal " _this select 0 switchMove (_this select 1);";

// Anti-Faggotry Script
//execVM "scripts\grenadeStop.sqf"; 

nopop=true; 

// Intro Shot for Player 
[getMarkerPos "Base","Wake Island Pacific Station",300,200,180,0,[]] spawn BIS_fnc_establishingShot;
waitUntil {player == player}; 

_uid = getPlayerUID player;

if (_uid == "76561198039996106") then { hint "Welcome, 1st Lt Lanyan! You have flown to this island stealthily in your A-10, but cannot approach the area of Thirsk and further due to EWRS. Await infantry arrival. "} 
else { if (_uid == "76561198102873933") then {hint "Welcome, 2nd Lt Wolfe! You have flown to this island stealthily in your A-10, but cannot approach the area of Thirsk and further due to EWRS. Await infantry arrival. " } else {player moveinCargo SpawnPlane;} }; 


hint format ["5th Special Forces Group \n \n MIssion: Chimaera \n \n Get a loadout and fall in for briefing."]; 