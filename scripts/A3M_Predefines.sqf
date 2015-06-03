// 5SFG Chimaera MP Predefines

AATask = player createSimpleTask ["Anti-Air Battery"]; 
AATask setSimpleTaskDescription ["Destroy Anti-Ait Battery (4 Tanks)","AA Battery","AA Battery"]; 
AATask setSimpleTaskDestination (getMarkerPos "AA");
AATask setTaskState "Assigned";


EWSTask = player createSimpleTask ["Early Warning Radar "]; 
EWSTask setSimpleTaskDescription ["Destroy Early Warning Radars","EWS","Early Warning Radar"]; 
EWSTask setSimpleTaskDestination (getMarkerPos "EWS");
EWSTask setTaskState "Assigned";


ConTask = player createSimpleTask ["Early Warning Radar "]; 
ConTask setSimpleTaskDescription ["Destroy Early Warning Radars","EWS","Early Warning Radar"]; 
ConTask setSimpleTaskDestination (getMarkerPos "HVT");
ConTask setTaskState "Assigned";



A3M_fnc_EWS1 = {
Hint Format ["<t size='1.25' font='TahomaB' color='#00CC00'> The Early Warning System has suffered a loss! </t> \n \n Signal Reduced."];
}; 

A3M_fnc_EWS2 = {
Hint Format ["<t size='1.25' font='TahomaB' color='#00CC00'> The Early Warning System has suffered a loss! </t> \n \n Signal Reduced. "];
}; 

A3M_fnc_EWSF = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> The Early Warning System has been taken offline. </t> \n \nTask Complete."];
EWSTask setTaskState "Succeeded"; 
}; 

A3M_fnc_AA1_C = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t>\n \n It was 1 of 4 AA Tanks."]; 
}; 

A3M_fnc_AA2_C = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> \n \n It was 1 of 4 AA Tanks."]; 
}; 

A3M_fnc_AA3_C = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> \n \n It was 1 of 4 AA Tanks."]; 
}; 

A3M_fnc_AA4_C = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> \n \n It was 1 of 4 AA Tanks."]; 
}; 

A3M_fnc_AA_C = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'> All Anti-Air tanks detroyed! </t> \n \n The AA Battery is offline. Air Support is cleared for flight."]; 
AATask setTaskState "Succeeded"; 
}; 

A3M_fnc_ConvoyFailed = {
hint format ["<t size='1.25' font='TahomaB' color='#ff0000'>TASK FAILED!</t> \n \n The HVT has safely reached the base, and is no longer a viable target. The HVT has given the order for Russian QRF to come inbound. Be Advised."];
}; 

A3M_fnc_CV1 = {
hint format ["<t size='1.25' font='TahomaB' color='#00CC00'>TASK COMPLETE!</t> \n \n The HVT and his convoy have been destroyed."];
}; 

A3M_fnc_Penalty_QRF  = {
_QRF1= [getMarkerPos "QRF1_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_QRF1, getMarkerPos "Thirsk"] call BIS_fnc_taskAttack; 

_QRF2= [getMarkerPos "QRF2_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_QRF2, getMarkerPos "Thirsk"] call BIS_fnc_taskAttack; 
}; 



A3M_fnc_BeginAssault = {

RG_Task setTaskState "Succeeded";

Asslt_Task = player createSimpleTask ["Assault Thirsk"]; 
Asslt_Task setSimpleTaskDescription ["Assault the VIllage of Thirsk, Take control from the enemy.","Assault Thirsk","Assault"]; 
Asslt_Task setSimpleTaskDestination (getMarkerPos "Thirsk");
Asslt_Task setTaskState "Assigned";

player setCurrentTask Asslt_Task;

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
ASLT_Trg setTriggerStatements ["this", "[] call A3M_fnc_AssaultDone", ""]; 

_EQRF1= [getMarkerPos "EQRF1_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_EQRF1, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

_EQRF2= [getMarkerPos "EQRF2_Start", EAST, ["rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_rifleman","rhs_msv_emr_machinegunner","rhs_msv_emr_marksman","rhs_msv_emr_medic", "rhs_msv_emr_rifleman"]] call BIS_fnc_spawnGroup;
[_EQRF2, getMarkerPos "Thirsk"] call BIS_fnc_taskDefend; 

TankG1= createGroup East;
_Tank1 = "rhs_t80ue1" createVehicle getMarkerPos "ETank1";
[_Tank1, TankG1] call BIS_fnc_spawnCrew; 
TankG2= createGroup East;
_Tank2 = "rhs_t80ue1" createVehicle getMarkerPos "ETank2";
[_Tank2, TankG2] call BIS_fnc_spawnCrew; 
TankG3= createGroup East;
_Tank3 = "rhs_t80ue1" createVehicle getMarkerPos "ETank3";
[_Tank3, TankG3] call BIS_fnc_spawnCrew; 
TankG4= createGroup East;
_Tank4 = "rhs_t80ue1" createVehicle getMarkerPos "ETank4";
[_Tank4, TankG4] call BIS_fnc_spawnCrew; 

}; 

A3M_fnc_Regroup = {
RG_Task = player createSimpleTask ["Regroup"]; 
RG_Task setSimpleTaskDescription ["Regroup with other elements","Regroup","Regroup"]; 
RG_Task setSimpleTaskDestination (getMarkerPos "Rgp");
RG_Task setTaskState "Assigned";
player setCurrentTask RG_Task;

RG_Trg= createTrigger ["EmptyDetector", getMarkerPos "Rgp"]; 
RG_Trg setTriggerArea [100, 100, 0, false]; 
RG_Trg setTriggerActivation ["WEST", "PRESENT", True]; 
RG_Trg setTriggerType "NONE";
RG_Trg setTriggerStatements ["player in thislist", "[] call A3M_fnc_BeginAssault", ""]; 
}; 