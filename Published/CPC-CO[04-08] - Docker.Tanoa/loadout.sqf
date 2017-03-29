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
		case "viper_tl": {[_unit] call loadoutTL};
		case "viper_at": {[_unit] call loadoutAT};
		case "viper_medic": {[_unit] call loadoutMedic};
		case "viper_demo": {[_unit] call loadoutDemo};
		case "viper_soldier": {[_unit] call loadoutSoldier};
		case "viper_marksman": {[_unit] call loadoutMarksman};
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_CableTie";
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	for "_i" from 1 to 6 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_red_Mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShellGreen";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "SmokeShell";};
	_unit addItemToBackpack "HandGrenade";
	for "_i" from 1 to 8 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addItemToBackpack "SmokeShellOrange";
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_Arco_ghex_F";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";
	_unit addWeapon "Laserdesignator_02_ghex_F";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "O_UavTerminal";
	_unit addItemToUniform "ACRE_PRC148";
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_CableTie";
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	_unit addItemToBackpack "SmokeShellGreen";
	_unit addItemToBackpack "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addItemToBackpack "16Rnd_9x21_red_Mag";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "RPG32_F";};
	_unit addItemToBackpack "RPG32_HE_F";
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "launch_RPG32_ghex_F";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit addItemToUniform "ACRE_PRC148";
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_CableTie";
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
	_unit addItemToBackpack "ACE_salineIV";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV_500";};
	_unit addItemToBackpack "ACE_personalAidKit";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	_unit addItemToBackpack "SmokeShellGreen";
	_unit addItemToBackpack "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 5 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addItemToBackpack "16Rnd_9x21_red_Mag";
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit addItemToUniform "ACRE_PRC148";
};

loadoutDemo = //
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addItemToUniform "ACE_M26_Clacker";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	_unit addItemToBackpack "ACE_DefusalKit";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	_unit addItemToBackpack "SmokeShellGreen";
	_unit addItemToBackpack "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addItemToBackpack "16Rnd_9x21_red_Mag";
	for "_i" from 1 to 7 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_ACO_grn";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit addItemToUniform "ACRE_PRC148";
};

loadoutSoldier = //
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_CableTie";
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	for "_i" from 1 to 6 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_red_Mag";};
	_unit addItemToBackpack "SmokeShellGreen";
	_unit addItemToBackpack "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	
	_unit addItemToUniform "ACRE_PRC148";
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
	_unit forceAddUniform "U_O_V_Soldier_Viper_F";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_CableTie";
	_unit addItemToUniform "ACE_EarPlugs";
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_IR_Strobe_Item";
	_unit addItemToUniform "ACE_Flashlight_KSF1";
	_unit addBackpack "B_ViperLightHarness_ghex_F";
	for "_i" from 1 to 6 do {_unit addItemToBackpack "10Rnd_50BW_Mag_F";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "16Rnd_9x21_red_Mag";};
	_unit addItemToBackpack "SmokeShellGreen";
	_unit addItemToBackpack "SmokeShell";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "HandGrenade";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "30Rnd_65x39_caseless_green";};
	_unit addHeadgear "H_HelmetO_ViperSP_ghex_F";

	comment "Add weapons";
	_unit addWeapon "arifle_ARX_ghex_F";
	_unit addPrimaryWeaponItem "muzzle_snds_65_TI_ghex_F";
	_unit addPrimaryWeaponItem "acc_pointer_IR";
	_unit addPrimaryWeaponItem "optic_Nightstalker";
	_unit addWeapon "hgun_Rook40_F";
	_unit addHandgunItem "muzzle_snds_L";
	_unit addWeapon "Laserdesignator_02_ghex_F";
	
	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	
	_unit addItemToUniform "ACRE_PRC148";
};
