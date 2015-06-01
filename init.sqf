// 2ABCT Counter Insurgency Init
// Visit Us At: Http://www.a3milsim.com
// Scripting By: Salazar (TMN_Fr33dom)

switchMoveEverywhere = compileFinal " _this select 0 switchMove (_this select 1);";

// Add R3F Logistics (Fucking awesome) 
execVM "R3F_LOG\init.sqf";

// Anti-Faggotry Script
execVM "scripts\grenadeStop.sqf"; 

[] spawn {
while{not isnull MHQ1} do {"MHQMK" setmarkerpos getpos MHQ1; sleep 0.5;};
};

[] spawn {
while{not isnull MHQ2} do {"MHQmk2" setmarkerpos getpos MHQ2; sleep 0.5;};
};

Coroner = {
{ if (!alive _x) then { deletevehicle _x } } foreach (nearestObjects [center, ["Man", "Car", "Tank", "Helicopter"], 7500]);
};

// Intro Shot for Player 
[getMarkerPos "respawn_West"," FOB Loyalty",300,200,180,0,[]] spawn BIS_fnc_establishingShot;

ENG_TRK_RESPAWN = {

waitUntil {!alive ENG_TRK}; 

if (isServer) then {
hint "You are the host of this game, yes? This mission is really meant for dedicated server, but ok. The Corps of Engineers Truck was blown up. It should respawn and re-add the R3F Creation Factory to the truck after 300s, but it might fuck up. "; 
sleep 10; 
deleteVehicle ENG_TRK; 
sleep 290; 
ENG_TRK= "rhsusf_M1078A1P2_d_fmtv_usarmy" createVehicle getMarkerPos "ENS"; 
sleep 1; 
[ENG_TRK] execVM 'R3F_LOG\USER_FUNCT\init_creation_factory.sqf';
[] spawn ENG_TRK_RESPAWN;

} else {Hint "The Engineer Truck has been destroyed. The Army Corps of Engineers is arranging another Engineer Truck to be delivered."}; 

}; 

/*
  _____
  \_   \_ __  ___ _   _ _ __ __ _  ___ _ __   ___ _   _
   / /\/ '_ \/ __| | | | '__/ _` |/ _ \ '_ \ / __| | | |
/\/ /_ | | | \__ \ |_| | | | (_| |  __/ | | | (__| |_| |
\____/ |_| |_|___/\__,_|_|  \__, |\___|_| |_|\___|\__, |
                            |___/                 |___/

@filename: init.sqf

Author:

	Hazey

Special Thanks:

	Highhead
	ARJay

Last modified:

	2/11/2015

Description:

	Main Init - Starts and runs things.
______________________________________________________*/

//--- Start Init
["Insurgency | ALiVE - Executing init.sqf..."] call ALiVE_fnc_Dump;

// ====================================================================================
	//--- DEFINES/ INCLUDES
	call compile preprocessFile "common_defines.sqf";
// ====================================================================================

//--- Disable Saving
enableSaving [false, false];

//--- Civilian Call to Prayer
if (paramsArray select 2 == 1) then {
	_null = [] spawn INS_fnc_CallToPrayer;
};

//--- Spawn Intel
if (paramsArray select 7 == 1) then {
	if (isServer || isDedicated) then {
		_null = [] spawn INS_fnc_SpawnIntel;
	};
};

//--- Create MHQ
if (paramsArray select 11 == 1) then {
	_null = execVM "scripts\wco\hze_fnc_MHQ.sqf";
};

//--- Enable map teleport on click
if (ins_debug) then {
	[] call INS_fnc_mapTeleport;
};

//--- Game Briefing
[] call compileFinal preprocessfilelinenumbers "scripts\briefings\briefing.sqf";

if (isServer || isDedicated) then {
	_null = [] spawn INS_fnc_setupCache;
};

["Insurgency | ALiVE - END OF INIT..."] call ALiVE_fnc_Dump;

//////////////////////////////////////////////////////////////////
// TPWCAS v5.5 init startup
//////////////////////////////////////////////////////////////////

private ["_temp_tpwcas_mode"];

if !( isClass(configFile >> 'CfgPatches' >> 'A3_Map_Stratis') ) exitWith 
{ 
	hint "THIS VERION OF TPWCAS REQUIRES ARMA 3";
	diag_log format ["ERROR: This version of TPWCAS requires ArmA 3 !"];
};

// HEADLESS CLIENT CHECK
tpwcas_isHC =  ( !(hasInterface) && !(isDedicated) );

if !(isNil "tpwcas_mode") then // tpwcas_mode set by logic module or by global pubvar
{
	diag_log format ["%1 pre-init defined twpcas mode: 'tpwcas_mode = %2'", time, tpwcas_mode];
};

// SinglePlayer Mode (tpwcas_mode 1)
if ( (isServer) && !(isMultiPlayer) ) then 
{
	if (isNil "tpwcas_mode") then 
	{
		// check for forced disabled tpwcas for Single Player or (hosted or dedicated) Multi Player Server (tpwcas_mode 0)
		_temp_tpwcas_mode = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_mode");
		if ( _temp_tpwcas_mode == 0 ) exitWith 
		{
			tpwcas_mode = 0;
			diag_log format ["%1 disabled tpwcas by userconfig file: tpwcas_mode = %2", time, tpwcas_mode];
		};
	};
	
	// else force SinglePlayer Mode (tpwcas_mode 1) if not set above
	tpwcas_mode = 1; 
};

diag_log format ["%1 twpcas mode init check: Server: [%2] - MP: [%3] - tpwcas_isHC: [%4] - isNil tpwcas_mode: [%5]", time, isServer, isMultiPlayer, tpwcas_isHC, isNil "tpwcas_mode"];

// Multi Player Client Mode (tpwcas_mode 0, 2, or 3)
if ( !(isServer) && !(tpwcas_isHC) && isMultiPlayer ) then 
{	
	if ( isNil "tpwcas_mode" ) then 
	{
		diag_log format ["%1 waiting for twpcas client mode variable set by server", time];
		0 = [] spawn // set parameter to close tpwcas if no server variable received within 4 minutes
			{ 
				sleep 240;
				if (isNil "tpwcas_mode") then 
				{
					tpwcas_mode = 0;
				}; 	
			};
		waitUntil { sleep 3;!(isNil "tpwcas_mode") };
		diag_log format ["%1 twpcas client mode set to tpwcas_mode: [%2]", time, tpwcas_mode];
	};

	if ( tpwcas_mode == 2 ) then // set by global pub var
	{
		diag_log format ["%1 enabled tpwcas client mode: tpwcas_mode = %2", time, tpwcas_mode];
	}
	else //unknown value or value = 3 - disable tpwcas
	{
		diag_log format ["%1 disable tpwcas client mode: detected value for tpwcas_mode = %2", time, tpwcas_mode];
		tpwcas_mode = 0;
	};
};

// Multi Player Server or HC Mode (tpwcas_mode 2 or 3)
if ( ( ( isServer || tpwcas_isHC ) ) && ( isMultiPlayer ) ) then 
{  
	if ( isNil "tpwcas_mode" ) then // read tpwcas_mode value from userconfig file
	{
		tpwcas_mode = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_mode");	
	};
	
	if !( (tpwcas_mode == 2) || (tpwcas_mode == 3) || (tpwcas_mode == 0) ) then 
	{
		diag_log format ["%1 forcing tpwcas to value [3]: determined tpwcas_mode value: [%2]", time, tpwcas_mode];
		tpwcas_mode = 3; 
	}; 
	
	diag_log format ["%1 tpwcas - Server: [%2] - MP: [%3] - config: [%4] - isNil tpwcas_mode: [%5]", time, isServer, isMultiPlayer, getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_mode"), isNil "tpwcas_mode"];
};

//////////////////////////////////////////////////////////////////////////
// Read TPWCAS Parameters from userconfig file
if ( isServer || tpwcas_isHC ) then 
{
	tpwcas_hint = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_hint");
	tpwcas_sleep = getNumber(configFile>> "tpwcas_key_setting" >> "tpwcas_sleep");
		
	tpwcas_ir = getNumber(configFile>> "tpwcas_key_setting" >> "tpwcas_ir");
	tpwcas_maxdist = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_maxdist");
	tpwcas_bulletlife = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_bulletlife");
	tpwcas_st = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_st");
	tpwcas_mags = getArray(configFile>> "tpwcas_key_setting"  >> "tpwcas_mags");

	tpwcas_skillsup = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_skillsup");
	tpwcas_minskill = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_minskill");
	tpwcas_reveal = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_reveal");
	tpwcas_canflee = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_canflee");

	
	tpwcas_los_maxdist = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_los_maxdist");
	tpwcas_los_mindist = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_los_mindist");
	tpwcas_los_minfps = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_los_minfps");
	tpwcas_los_knowsabout = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_los_knowsabout");

	tpwcas_coverdist = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_coverdist");
	tpwcas_getcover_minfps = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_getcover_minfps");
	
	tpwcas_playershake = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_playershake");
	tpwcas_playervis = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_playervis");
	//tpwcas_textdebug = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_textdebug"); => DEPRECATED
	
	// if not set using logic read from userconfig file
	if (isNil "tpwcas_debug") then { tpwcas_debug = getNumber(configFile>> "tpwcas_key_setting" >> "tpwcas_debug"); };
	if (isNil "tpwcas_getcover") then { tpwcas_getcover = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_getcover"); };
	if (isNil "tpwcas_los_enable") then { tpwcas_los_enable = getNumber(configFile>> "tpwcas_key_setting"  >> "tpwcas_los_enable"); };
};

if ( !(tpwcas_mode == 0) ) then  
{
	nul = [] execVM "tpwcas\tpwcas_init.sqf";
};
