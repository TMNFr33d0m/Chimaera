A3M_fnc_EWS1_Logic = {

if (isNil "SignalStrengthM") then {SignalStrengthM= 100}; 
SignalStrengthM= (SignalStrengthM-50);   
publicVariable "SignalStrengthM";

cunt= ['','A3M_fnc_EWS1',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_EWS2_Logic = {
if (isNil "SignalStrengthM") then {SignalStrengthM= 100};   
SignalStrengthM= (SignalStrengthM-50);   
publicVariable "SignalStrengthM";

cunt= ['','A3M_fnc_EWS2',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_EWSF_Logic = {
SignalStrengthM= nil; 
publicVariable "SignalStrengthM";

cunt= ['','A3M_fnc_EWSF',True,False] spawn BIS_fnc_MP; 
}; 

A3M_fnc_AA1_C_Logic = {

if (isNil "NoAA") then {NoAA = 0}; 

NoAA= (NoAA+1); 
publicVariable "NoAA"; 

cunt= ['','A3M_fnc_AA1_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_AA2_C_Logic = {

if (isNil "NoAA") then {NoAA = 0}; 

NoAA= (NoAA+1); 
publicVariable "NoAA"; 

cunt= ['','A3M_fnc_AA2_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_AA3_C_Logic = {

if (isNil "NoAA") then {NoAA = 0}; 

NoAA= (NoAA+1); 
publicVariable "NoAA"; 

cunt= ['','A3M_fnc_AA3_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_AA4_C_Logic = {

if (isNil "NoAA") then {NoAA = 0}; 

NoAA= (NoAA+1); 
publicVariable "NoAA"; 

cunt= ['','A3M_fnc_AA4_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_AA_C_Logic = {
NoAA= nil; 
publicVariable "NoAA"; 

cunt= ['','A3M_fnc_AA_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_CV1_A_Logic = {

if (isNil "NoCV") then {NoCV = 0}; 
NoCV= (NoCV+1); 
publicVariable "NoCV";

cunt= ['','A3M_fnc_CV1_A',True,False] spawn BIS_fnc_MP;  
}; 

A3M_fnc_CV1_B_Logic = {

if (isNil "NoCV") then {NoCV = 0}; 

NoCV= (NoCV+1); 
publicVariable "NoCV"; 

cunt= ['','A3M_fnc_CV1_B',True,False] spawn BIS_fnc_MP; 
}; 

A3M_fnc_CV1_C_Logic = {

if (isNil "NoCV") then {NoCV = 0}; 

NoCV= (NoCV+1); 
publicVariable "NoCV"; 

cunt= ['','A3M_fnc_CV1_C',True,False] spawn BIS_fnc_MP;
}; 

A3M_fnc_Penalty_QRF  = {
_QRF1= [getMarkerPos "QRF1_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_QRF1, getMarkerPos "Thirsk"] call BIS_fnc_taskAttack; 

_QRF2= [getMarkerPos "QRF2_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_QRF2, getMarkerPos "Thirsk"] call BIS_fnc_taskAttack; 
}; 

A3M_fnc_BeginAssaultTask = {

RG_Task setTaskState "Succeeded";

Asslt_Task = player createSimpleTask ["Assault Thirsk"]; 
Asslt_Task setSimpleTaskDescription ["Assault the VIllage of Thirsk, Take control from the enemy.","Assault Thirsk","Assault"]; 
Asslt_Task setSimpleTaskDestination (getMarkerPos "Thirsk");
Asslt_Task setTaskState "Assigned";

player setCurrentTask Asslt_Task;
}; 

A3M_fnc_BeginAssault = {

MT RemoveAction ForceAction; 

if (IsNil "QRF_Active") then {QRF_Active= 0;}; 

if (QRF_Active == 0) then {

QRF_Active= 1; 
publicVariable "QRF_Active"; 

DeleteVehicle RG_Trg; 
DeleteVehicle EWS2_C;
DeleteVehicle EWS1_C; 
DeleteVehicle EWS_Obj; 
DeleteVehicle Conv_Trg;
DeleteVehicle CV3_Trg; 
DeleteVehicle CV2_Trg; 
DeleteVehicle CV1_Trg; 
DeleteVehicle Regroup_Trg;
DeleteVehicle AA_Trg;
DeleteVehicle AA1_C;
DeleteVehicle AA2_C;
DeleteVehicle AA3_C; 
DeleteVehicle AA4_C;

ASLT_Trg= createTrigger ["EmptyDetector", getMarkerPos "Thirsk"]; 
ASLT_Trg setTriggerArea [200, 200, 0, false]; 
ASLT_Trg setTriggerActivation ["WEST SEIZED", "EAST D", True]; 
ASLT_Trg setTriggerType "NONE";
ASLT_Trg setTriggerStatements ["this", "cunt= ['','A3M_fnc_AssaultDone',True,False] spawn BIS_fnc_MP;", ""]; 

_EQRF1= [getMarkerPos "EQRF1_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_EQRF1, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

_EQRF2= [getMarkerPos "EQRF2_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_EQRF2, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

TankG1= createGroup East;
_Tank1 = "rhs_t80ue1" createVehicle getMarkerPos "ETank1";
[_Tank1, TankG1] call BIS_fnc_spawnCrew; 
[TankG1, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

TankG2= createGroup East;
_Tank2 = "rhs_t80ue1" createVehicle getMarkerPos "ETank2";
[_Tank2, TankG2] call BIS_fnc_spawnCrew; 
[TankG2, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

TankG3= createGroup East;
_Tank3 = "rhs_t80ue1" createVehicle getMarkerPos "ETank3";
[_Tank3, TankG3] call BIS_fnc_spawnCrew; 
[TankG3, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

TankG4= createGroup East;
_Tank4 = "rhs_t80ue1" createVehicle getMarkerPos "ETank4";
[_Tank4, TankG4] call BIS_fnc_spawnCrew; 
[TankG4, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

Chalk1= createGroup East;

_Fighter1 = [markerPos "QRF_JetPos1", 150, "RHS_Su25SM_vvs", Chalk1] call Bis_fnc_spawnvehicle;
_veh1 = _Fighter1 select 0 ;
_veh1 setPos [getpos _veh1 select 0, getpos _veh1 select 1, 1000];

_Fighter2 = [markerPos "QRF_JetPos1", 150, "RHS_Su25SM_vvs", Chalk1] call Bis_fnc_spawnvehicle;
_veh2 = _Fighter2 select 0 ;
_veh2 setPos [getpos _veh2 select 0, getpos _veh2 select 1, 1000];

sleep 10; 

_Fighter3 = [markerPos "QRF_JetPos1", 150, "RHS_Su25SM_vvs", Chalk1] call Bis_fnc_spawnvehicle;
_veh3 = _Fighter3 select 0 ;
_veh3 setPos [getpos _veh3 select 0, getpos _veh3 select 1, 1000];

_Fighter4 = [markerPos "QRF_JetPos1", 150, "RHS_Su25SM_vvs", Chalk1] call Bis_fnc_spawnvehicle;
_veh4 = _Fighter4 select 0 ;
_veh4 setPos [getpos _veh4 select 0, getpos _veh4 select 1, 1000];

[Chalk1, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

cunt= ['','A3M_fnc_BeginAssaultTask',True,False] spawn BIS_fnc_MP; 
}; 
}; 

A3M_fnc_Regroup_Logic = {

cunt= ['','A3M_fnc_Regroup',True,False] spawn BIS_fnc_MP;

};