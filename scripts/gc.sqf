{ if (!alive _x) then { deletevehicle _x } } foreach (nearestObjects [center, ["Man", "Car", "Tank", "Helicopter"], 2600]);
hint "2ABCT Wake Island Garbage collector has initialized...cleaning up the wasted shit...";