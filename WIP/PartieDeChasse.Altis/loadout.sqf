/*-----------------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------------------------------
***	Author: Hardballer

***	Description : 
	Loadouts de la mission

*** Utilisation :
	1/ Copiez les fichiers 'loadout.sqf', 'initPlayerLocal.sqf' et 'inventory_briefing.sqf' dans le dossier de votre mission.
	2/ Modifiez le fichier loadout.sqf à votre convenance.
		- Vous pouvez creer vos loadouts dans l'arsenal virtuel de Arma 3, les exporter avec la commande ingame et les coller dans le script comme ci-dessous.
		- Une fois ceci fait, remplacez tout les 'this' par '_unit'.
	3/ Dans l'éditeur, placez la commande ci-dessous dans les init d'unités jouables pour leur attribuer le loadout souhaité :
		this setVariable ["loadout", "aaf_officer"];
		
	PS :Dans l'exemple ci-dessous les lignes des commentaires issues de l'exportation avec l'arsenal vitruel ont été supprimées pour une meilleure lisibilité.

-------------------------------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------------------------*/


hard_setLoadout = 
{
	_unit = _this select 0;
	_loadout = _unit getVariable "loadout";
	switch _loadout do 
	{
		case "tl": {[_unit] call loadoutTL};
		case "scout": {[_unit] call loadoutScout};
		case "at": {[_unit] call loadoutAT};
		case "medic": {[_unit] call loadoutMedic};
		case "marksman": {[_unit] call loadoutMarksman};
	};
};



loadoutTL = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by RandomPeon";

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_O_CombatUniform_ocamo";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "Chemlight_blue";
	_unit addItemToUniform "HandGrenade";
	_unit addVest "V_HarnessOGL_gry";
	_unit addItemToVest "HandGrenade";
	_unit addItemToVest "SmokeShellYellow";
	_unit addItemToVest "SmokeShellRed";
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_green";};
	for "_i" from 1 to 7 do {_unit addItemToVest "1Rnd_HE_Grenade_shell";};
	_unit addItemToVest "UGL_FlareWhite_F";
	_unit addItemToVest "1Rnd_SmokeRed_Grenade_shell";
	_unit addItemToVest "1Rnd_Smoke_Grenade_shell";
	_unit addItemToVest "1Rnd_SmokeGreen_Grenade_shell";
	_unit addHeadgear "H_HelmetO_ocamo";
	_unit addWeapon "Rangefinder";

	comment "Add weapons";
	_unit addWeapon "arifle_Katiba_GL_F";
	_unit addPrimaryWeaponItem "muzzle_snds_H";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_Arco";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

	_unit addItemToUniform "ACRE_PRC343";
};

loadoutMarksman = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by RandomPeon";

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_O_CombatUniform_ocamo";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "Chemlight_blue";
	_unit addVest "V_TacVest_oli";
	_unit addItemToVest "HandGrenade";
	_unit addItemToVest "SmokeShellYellow";
	_unit addItemToVest "SmokeShellRed";
	_unit addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 8 do {_unit addItemToVest "10Rnd_762x54_Mag";};
	_unit addHeadgear "H_HelmetO_ocamo";

	comment "Add weapons";
	_unit addWeapon "srifle_DMR_01_F";
	_unit addPrimaryWeaponItem "muzzle_snds_B";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_DMS";
	_unit addPrimaryWeaponItem "bipod_02_F_hex";
	_unit addWeapon "Rangefinder";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

	_unit addItemToUniform "ACRE_PRC343";
};

loadoutScout = //
{
	_unit = _this select 0;
	
	comment "Exported from Arsenal by RandomPeon";

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_O_CombatUniform_ocamo";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "Chemlight_blue";
	_unit addVest "V_TacVest_oli";
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_green";};
	_unit addItemToVest "HandGrenade";
	_unit addItemToVest "SmokeShellYellow";
	_unit addItemToVest "SmokeShellRed";
	_unit addHeadgear "H_HelmetO_ocamo";

	comment "Add weapons";
	_unit addWeapon "arifle_Katiba_C_F";
	_unit addPrimaryWeaponItem "muzzle_snds_H";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_ACO_grn";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

	_unit addItemToUniform "ACRE_PRC343";
};

loadoutAT = //
{
	_unit = _this select 0;
	
	comment "Exported from Arsenal by RandomPeon";

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_O_CombatUniform_ocamo";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "Chemlight_blue";
	_unit addVest "V_TacVest_oli";
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_green";};
	_unit addItemToVest "HandGrenade";
	_unit addItemToVest "SmokeShellYellow";
	_unit addItemToVest "SmokeShellRed";
	_unit addBackpack "B_Kitbag_rgr";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "RPG32_F";};
	_unit addItemToBackpack "RPG32_HE_F";
	_unit addHeadgear "H_HelmetO_ocamo";

	comment "Add weapons";
	_unit addWeapon "arifle_Katiba_C_F";
	_unit addPrimaryWeaponItem "muzzle_snds_H";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addWeapon "launch_RPG32_F";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

	_unit addItemToUniform "ACRE_PRC343";
};

loadoutMedic = //
{
	_unit = _this select 0;
	
	comment "Exported from Arsenal by RandomPeon";

	comment "Remove existing items";
	removeAllWeapons _unit;
	removeAllItems _unit;
	removeAllAssignedItems _unit;
	removeUniform _unit;
	removeVest _unit;
	removeBackpack _unit;
	removeHeadgear _unit;
	removeGoggles _unit;

	comment "Add containers";
	_unit forceAddUniform "U_O_CombatUniform_ocamo";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "Chemlight_green";
	_unit addItemToUniform "Chemlight_blue";
	_unit addVest "V_TacVest_oli";
	for "_i" from 1 to 5 do {_unit addItemToVest "30Rnd_65x39_caseless_green";};
	_unit addItemToVest "HandGrenade";
	_unit addItemToVest "SmokeShellYellow";
	_unit addItemToVest "SmokeShellRed";
	_unit addBackpack "B_FieldPack_ocamo";
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 1 do {_unit addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
	_unit addItemToBackpack "ACE_personalAidKit";
	_unit addHeadgear "H_HelmetO_ocamo";

	comment "Add weapons";
	_unit addWeapon "arifle_Katiba_C_F";
	_unit addPrimaryWeaponItem "muzzle_snds_H";
	_unit addPrimaryWeaponItem "acc_flashlight";
	_unit addPrimaryWeaponItem "optic_ACO_grn";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	
	_unit addItemToUniform "ACRE_PRC343";
};