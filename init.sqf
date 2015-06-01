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

hint format ["5th Special Forces Group \n \n MIssion: Chimaera \n \n Get a loadout and fall in for briefing."]; 