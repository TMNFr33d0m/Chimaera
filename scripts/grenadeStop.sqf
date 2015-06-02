/*
	GrenadeStop v0.8 for ArmA 3 Alpha by Bake (tweaked slightly by Rarek)
	
	DESCRIPTION:
	Stops players from throwing grenades in safety zones.
	
	INSTALLATION:
	Move grenadeStop.sqf to your mission's folder. Then add the
	following line to your init.sqf file (create one if necessary):
	execVM "grenadeStop.sqf";
	
	CONFIGURATION:
	Edit the #defines below.
*/

#define SAFETY_ZONES	[["respawn_west", 250]] // Syntax: [["marker1", radius1], ["marker2", radius2], ...]
#define GRENADE_MESSAGE			"Do not throw grenades inside the base, you retarded asshole!\nPress I instead of G to" +\
						" open your inventory.\n Rebind the throw key to avoid accidents. \n Offenders will be kicked / banned / disciplined by command staff. \n \n We are fucking serious now. "
#define MESSAGE "YOU RETARDED ASSHOLE!! Try not to be such a dick! \n No shooting inside friendly zones. No teamkilling. \n Offenders will be kicked / banned / disciplined by command staff. \n \n We are fucking serious now. "

if (isDedicated) exitWith {};
waitUntil {!isNull player};

player addEventHandler ["Fired", {
	if ({(_this select 0) distance getMarkerPos (_x select 0) < _x select 1} count SAFETY_ZONES > 0) then
	{
		deleteVehicle (_this select 6);
		if (_this select 2 == "HandGrenadeMuzzle") then
		{
			titleText [GRENADE_MESSAGE, "PLAIN", 3];
		} else {
			titleText [MESSAGE, "PLAIN", 3];
		};
	};
}];