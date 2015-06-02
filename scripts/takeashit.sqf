// TMN Seating Script (MP Compatible) 
// By TMN Fr33d0m

_Shitter = _this select 0;

player attachTo [_Shitter,[0,0.7,-0.4]]; 
player setDir 90;
[[ player, "HubSittingChairA_idle1" ], "switchMoveEverywhere" ] call BIS_fnc_MP;
sleep 0.2;
detach player;

AllDone= player addAction ["Done Shitting", {
detach player;
player removeAction AllDone; 
[[ player, "AidlPercMstpSlowWrflDnon_AI" ], "switchMoveEverywhere" ] call BIS_fnc_MP; 
 }
 ]; 
