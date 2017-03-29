// Stuff ACE de base

for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};
player addItem "ACE_tourniquet";
player addItem "ACE_EarPlugs";
for "_i" from 1 to 2 do {player addItem "ACE_CableTie";};
player addItem "ACRE_PRC343";

// Radios chefs de groupe
if (player in [sl, tl1, tl2, pilot]) then {
	clearAllItemsFromBackpack player;
	
	_unit = player;
	
	_unit addItemToBackpack "ACRE_PRC117F";
};

// AT
if (player in [at]) then {
	clearAllItemsFromBackpack player;	
	_unit = player;
	
	_unit addItemToBackpack "Titan_AP";
	_unit addItemToBackpack "Titan_AT";
	_unit addItemToBackpack "Titan_AT";
	
};

// On donne leur stuff médical aux médics
if (player in [medic1]) then {
	clearAllItemsFromBackpack player;
	
	_unit = player;
	
	_unit addItemToBackpack "ACE_personalAidKit";
   for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
   for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
   for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
   for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
   for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
   for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
   for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
   for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
   for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
   for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
};

// Lancement du script qui affiche le loadout lors du briefing.
[] execVM "inventory_briefing.sqf";