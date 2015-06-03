//2ABCT Armory Module

disableSerialization; 

///////////////////////////////////////////////////////////////////////////////////////////
// Open Dialog
_handle= CreateDialog "DRI_2ABCT_Armory";

// Versioning
curVersion = "1.2"; 

//Add Loadout Element Selector (Separates Restricted Loadouts, for teams or elements)  
_indexSM0= lbAdd [2100, "5SFG Personalized Loadouts"];
_indexSM1= lbAdd [2100, "5SFG General Loadouts"];

DRI_2ABCT_ACL= {
CommandOn = 1; 
RegularOn = 0; 
lbClear 1500; 
_index1= lbAdd [1500, "Reigns, X"];
_index2= lbAdd [1500, "Ambrosino, X"]; 
_index3 = lbAdd [1500, "Salazar, Cody"];
_index4 = lbAdd [1500, "McKenzie, X"];
_index5 = lbAdd [1500, "Blackburn, X"];
_index6 = lbAdd [1500, "Green, X"];

};

DRI_2ABCT_ARL = {
CommandOn = 0; 
RegularOn = 1; 
lbClear 1500; 
_index1= lbAdd [1500, "Squad Leader"];
_index2= lbAdd [1500, "Squad Designated Marksman"]; 
_index3 = lbAdd [1500, "Squad Medic"];
_index4 = lbAdd [1500, "Team Leader"];
_index5 = lbAdd [1500, "Automatic Rifleman"]; 
_index6 = lbAdd [1500, "Grenadier"]; 
_index7= lbAdd [1500, "Rifleman"];
_index8= lbAdd [1500, "Rifleman + Javelin"]; 
_index9 = lbAdd [1500, "Machinegunner"];
_index10 = lbAdd [1500, "Asst. Machinegunner"];
_index11 = lbAdd [1500, "Ammo Bearer"]; 
_index12 = lbAdd [1500, "Anti-Armor Specialist"]; 
_index13 = lbadd [1500, "Armor Crewman"]; 
_index14 = lbadd [1500, "Trainee"];
_index15 = lbadd [1500, "Garrison"]; 
}; 


DRI_2ABCT_handleRoleClick= {
RoleSelection = _this select 1; 
//hint format ["Handle Mod Click Activated. Variable passed was %1", ModSelection]; 

switch (RoleSelection) do {

case 0: { 
hint "WARNING: These personalized loadouts are restricted to approved 5SFG personal use!"; 
lbClear 1500; 
[] call DRI_2ABCT_ACL; 
}; 

case 1: {
hint "Welcome to the 5SFG Approved Loadout Manager. Please select a loadout as it pertains the the role you are assigned."; 
lbClear 1500; 
[] call DRI_2ABCT_ARL;
}; 

// End HandleModClick
}; 
}; 


DRI_2ABCT_handleClick = {
TheSelection = _this select 1; 
//hint format ["Handle Click Activated. Variable passed was %1", TheSelection]; 
if (CommandOn == 1) then {_this call DRI_2ABCT_CLM;}; 
if (RegularOn == 1) then {_this call DRI_2ABCT_RLM;};
}; 

DRI_2ABCT_CLM = {
Switch (TheSelection) do {

// Reigns
case 0 : {
[player] execVM "loadouts\reigns.sqf"; 
hint "Welcome, X. Reigns! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier! ";
}; 

// Ambrosino
case 1: {
[player] execVM "loadouts\Ambrosino.sqf"; 
hint "Welcome, X. Ambrosino! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier!"; 
}; 

// Salazar
case 2: {
[player] execVM "loadouts\Salazar.sqf"; 
hint "Welcome, C. Salazar! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier!"; 
}; 

// 
case 3: {
//  McKenzie 
[player] execVM "loadouts\McKenzie.sqf"; 
hint "Welcome, X. McKenzie! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier!"; 
}; 

case 4: {
//  Blackburn
[player] execVM "loadouts\Blackburn.sqf"; 
hint "Welcome, X. Blackburn! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier!"; 
}; 

case 5: {
//  Green 
[player] execVM "loadouts\Green.sqf"; 
hint "Welcome, X. Green! Your personalized loadout has been applied. Good luck, and Godspeed, Soldier!"; 
}; 


}; 
}; 

DRI_2ABCT_RLM= {

Switch (TheSelection) do {
// Squad Leader
case 0: {
[player] execVM "loadouts\SquadLeader.sqf"; 
hint "Squad Leader Loadout Applied";
}; 

case 1: {
[player] execVM "loadouts\SquadDR.sqf"; 
hint "Squad Designated Rifleman Loadout Applied.";
}; 

case 2: {
[player] execVM "loadouts\SquadMedic.sqf";
hint "Squad Medic Loadout Applied."; 
};

case 3:{
[player] execVM "loadouts\TeamLeader.sqf"; 
hint "Team Leader Loadout Applied"; 
}; 

case 4: {
[player] execVM "loadouts\Autorifleman.sqf"; 
hint "Automatic Rifleman Loadout Applied."; 
}; 

case 5: {
[player] execVM "loadouts\Grenadier.sqf"; 
hint "Grenadier loadout applied.";  
}; 

case 6: {
[player] execVM "loadouts\Rifleman.sqf"; 
hint "Rifleman Loadout Applied"; 
}; 

case 7: {
[player] execVM "loadouts\RiflemanJav.sqf"; 
hint "Rifleman +Javelin Loadout Applied";
}; 

case 8: {
[player] execVM "loadouts\Machinegunner.sqf"; 
hint "Machinegunner Loadout Applied"; 
}; 

case 9: {
[player] execVM "loadouts\AsstMachinegunner.sqf"; 
hint "Assistant Machinegunner Loadout Applied."; 
}; 

case 10: {
[player] execVM "loadouts\AmmoBearer.sqf"; 
hint "Ammo Bearer Loadout Applied"; 
}; 

case 11: {
[player] execVM "loadouts\AntiArmor.sqf"; 
hint "Anti-Armor Specialist Loadout Applied"; 
}; 

case 12: {
[player] execVM "loadouts\ArmorCrewman.sqf"; 
hint "Armor Crewman Loadout Applied"; 
}; 

 case 13: {
[player] execVM "loadouts\Trainee.sqf"; 
hint "Trainee Loadout Applied"; 
};

 case 14: {
[player] execVM "loadouts\Garrison.sqf"; 
hint "Garrison Loadout Applied"; 
};
 
}; 
}; 