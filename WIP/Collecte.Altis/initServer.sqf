antonov addMagazine ["40Rnd_20mm_g_belt", 10]; 
antonov addWeapon "GMG_20mm";

"lzZone" addPublicVariableEventHandler {

	_null = [] spawn 
	{
		for "_i" from 1 to lzCount do 
		{
			[EAST, "mrkSpawn", lzZone, 2, true, false, true, false, false] spawn TAG_fnc_reinforcements;
			sleep 15;
		};
	};
		
};