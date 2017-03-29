_drones = [d1, d2, d3, d1D, d1G, d1D_1, d1G_1, d1D_2, d1G_2];

{
	_tempGroup = createGroup east;
	[_x] joinSilent _tempGroup;
	
} forEach _drones;

hackDone = 1;
publicVariable "hackDone";