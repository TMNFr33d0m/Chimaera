_GunrTarget = ((this select 0) select 0); 
_GunrShooter = ((_this select 0) select 1); 
_GunrRoundType= ((_this select 0) select 2); 
_GunrWherehit = ((_this select 0) select 3); 
_GunrRoundVelocity = ((_this select 0) select 4); 
_GunrDamage = ((_this select 0) select 6); 
_GunrDirectHit = ((_this select 0) select 10); 

if (isNil Totalhits) then {Totalhits = 0}; 
Totalhits = Totalhits + 1; 
publicVariable "Totalhits"; 

_monitor = format ["Hit! \n Target: %1 \n Shooter: %2 \n Round Type: %3 \n Hit Location: %4 \n Hit Velocity: %5 \n Damage: %6 \n Direct Hit: %7 \n Total Hits: %8",GunrTarget,GunrShooter,GunrRoundType,GunrWherehit,GunrRoundVelocity,GunrDamage,GunrDirectHit,Totalhits];
hint _monitor;