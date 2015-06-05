// 5SFG Chimaera MP Predefines

AATask = player createSimpleTask ["Anti-Air Battery"]; 
AATask setSimpleTaskDescription ["Destroy Anti-Ait Battery (4 Tanks)","Destroy AA Battery","AA Battery"]; 
AATask setSimpleTaskDestination (getMarkerPos "AA");
AATask setTaskState "Assigned";

EWSTask = player createSimpleTask ["Early Warning Radar "]; 
EWSTask setSimpleTaskDescription ["Destroy Early Warning Radars","Destroy EWS","Early Warning Radar"]; 
EWSTask setSimpleTaskDestination (getMarkerPos "EWS");
EWSTask setTaskState "Assigned";

ConTask = player createSimpleTask ["Destroy Convoy"]; 
ConTask setSimpleTaskDescription ["Destroy All Convoy Vehicles, Killing the HVT inside one of the cars. Which car is unknown, so take them all out to be sure.","Destroy 3 Car Convoy","Ambush Convoy"]; 
ConTask setSimpleTaskDestination (getMarkerPos "HVT");
ConTask setTaskState "Assigned";

A3M_fnc_EWS1 = {
hint parsetext format ["The Early Warning System has suffered a loss!  < br/> <br /> <t size='1.25' font='TahomaB' color='#00CC00'> Signal Reduced to %1 Percent </t>",  SignalStrengthM];
}; 

A3M_fnc_EWS2 = {
hint format [" The Early Warning System has suffered a loss!  \n \n Signal Reduced to %1 Percent", SignalStrengthM];
}; 

A3M_fnc_EWSF = {
hint parseText format [" The Early Warning System has been taken offline. <br /> <br /> <t size='1.25' font='TahomaB' color='#00CC00'>Task Complete. </t>"];
EWSTask setTaskState "Succeeded"; 
}; 

A3M_fnc_AA1_C = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t><br /> <br />%1 of 4 AA Tanks.", NoAA]; 
}; 

A3M_fnc_AA2_C = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> <br /> <br /> %1 of 4 AA Tanks.", NoAA]; 
}; 

A3M_fnc_AA3_C = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> <br /> <br />%1 of 4 AA Tanks.", NoAA]; 
}; 

A3M_fnc_AA4_C = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> An Anti-Air Tank has been destroyed. </t> <br /> <br /> %1 of 4 AA Tanks.", NoAA]; 
}; 

A3M_fnc_AA_C = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> All Anti-Air tanks detroyed! </t> <br /> <br /> The AA Battery is offline. Air Support is cleared for flight."]; 
AATask setTaskState "Succeeded"; 
}; 

A3M_fnc_CV1_A = {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> A Convoy Vehicle has been destroyed. </t><br /> <br />%1 of 3 Vehicles.", NoCV]; 
}; 

A3M_fnc_CV1_B= {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> A Convoy Vehicle has been destroyed. </t><br /> <br />%1 of 3 Vehicles.", NoCV];
}; 

A3M_fnc_CV1_C= {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'> A Convoy Vehicle has been destroyed. </t><br /> <br />%1 of 3 Vehicles.", NoCV];
}; 

A3M_fnc_ConvoyFailed= {
hint parseText format ["<t size='1.25' font='TahomaB' color='#ff0000'>TASK FAILED!</t> \n \n The HVT has safely reached the base, and is no longer a viable target. The HVT has given the order for additional Russian QRF to come inbound. Be Advised."];
ConTask setTaskState "Failed";
}; 

A3M_fnc_CV1= {
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'>TASK COMPLETE!</t> <br /> <br /> The HVT and his convoy have been destroyed."];
ConTask setTaskState "Succeeded";
}; 

A3M_fnc_AssaultDone= {
ASLT_Task setTaskState "Succeeded";
hint parseText format ["<t size='1.25' font='TahomaB' color='#00CC00'>MISSION COMPLETE!</t> <br/> <br/>  The Russian Held village of Thrisk has been dominated by American forces. Russians have ordered a retreat. Great job, extract to Ukranian base for debrief."];

}; 

A3M_fnc_Regroup= {

ForceAction = MT AddAction ["Start Attack on Thirsk",{[] spawn A3M_fnc_BeginAssault;}];

RG_Task = player createSimpleTask ["Regroup"]; 
RG_Task setSimpleTaskDescription ["Regroup with other elements","Regroup","Regroup"]; 
RG_Task setSimpleTaskDestination (getMarkerPos "Rgp");
RG_Task setTaskState "Assigned";
player setCurrentTask RG_Task;

hint "All groups move to the Radio Tower at 027030 and rendezvous with a Ukranian Officer for rearmament and preparation for final objective.";
}; 

A3M_fnc_BeginAssaultTask= {

RG_Task setTaskState "Succeeded";

MT RemoveAction ForceAction; 
Ukr_SF RemoveAction ForceAction2; 

ASLT_Task = player createSimpleTask ["Assault Thirsk"]; 
ASLT_Task setSimpleTaskDescription ["Assault the Village of Thirsk","Assault Thirsk","Assault"]; 
ASLT_Task setSimpleTaskDestination (getMarkerPos "Thirsk");
ASLT_Task setTaskState "Assigned";
player setCurrentTask ASLT_Task;

}; 
