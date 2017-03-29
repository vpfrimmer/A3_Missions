initDone = 0;

waitUntil { initDone == 1 };

[] execVM "inventory_briefing.sqf"; // lancement du script qui affiche le loadout lors du briefing.