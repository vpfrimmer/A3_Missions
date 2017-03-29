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
		case "tl_russe": {[_unit] call loadout_RU_TL};
		case "at_russe": {[_unit] call loadout_RU_AT};
		case "atass_russe": {[_unit] call loadout_RU_ATASS};
		case "mg_russe": {[_unit] call loadout_RU_MG};
		case "ingenieur_russe": {[_unit] call loadout_RU_INGE};
		case "medic_russe": {[_unit] call loadout_RU_Medic};
		case "tl_us": {[_unit] call loadout_US_TL};
		case "at_us": {[_unit] call loadout_US_AT};
		case "uav_us": {[_unit] call loadout_US_UAV};
		case "mg_us": {[_unit] call loadout_US_MG};
		case "marksman_us": {[_unit] call loadout_US_Marksman};
		case "medic_us": {[_unit] call loadout_US_Medic};
	};
};

loadout_RU_TL = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addVest "rhs_6b23_6sh92_vog";
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "rhs_mag_nspn_yellow";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
	for "_i" from 1 to 4 do {_unit addItemToVest "rhs_VOG25";};
	for "_i" from 1 to 5 do {_unit addItemToVest "Chemlight_blue";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_VOG25P";};
	_unit addItemToVest "rhs_VG40OP_green";
	_unit addItemToVest "rhs_VG40MD_White";
	_unit addHeadgear "rhs_6b27m";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_ak74m_gp25";
	_unit addPrimaryWeaponItem "rhs_acc_dtk";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

};

loadout_RU_AT = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addVest "rhs_6b23_6sh92_headset";
	_unit addItemToVest "ACE_EarPlugs";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
	_unit addItemToVest "rhs_mag_nspn_yellow";
	_unit addBackpack "rhs_rpg_empty";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_OG7V_mag";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";};
	_unit addHeadgear "rhs_6b27m_bala";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_dtk";
	_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";
	_unit addWeapon "rhs_weap_rpg7";
	_unit addSecondaryWeaponItem "rhs_acc_pgo7v";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
};

loadout_RU_ATASS = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addVest "rhs_6b23_6sh92_headset";
	_unit addItemToVest "ACE_EarPlugs";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
	_unit addItemToVest "rhs_mag_nspn_yellow";
	_unit addBackpack "rhs_rpg_empty";
	_unit addItemToBackpack "rhs_rpg7_PG7VL_mag";
	for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_rpg7_TBG7V_mag";};
	_unit addHeadgear "rhs_6b27m_ess";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_dtk";
	_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

};

loadout_RU_MG = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addVest "rhs_6b23_vydra_3m";
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "rhs_100Rnd_762x54mmR";
	_unit addBackpack "rhs_sidor";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_100Rnd_762x54mmR_green";};
	_unit addHeadgear "rhs_6b27m_ess_bala";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_pkp";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

};

loadout_RU_INGE = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addVest "rhs_6b23_engineer";
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_DefusalKit";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
	_unit addBackpack "rhs_sidor";
	_unit addItemToBackpack "ACE_Clacker";
	_unit addItemToBackpack "SatchelCharge_Remote_Mag";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};
	_unit addHeadgear "rhs_6b27m";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_dtk";
	_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

};

loadout_RU_Medic = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_flora";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "ACE_Flashlight_MX991";
	_unit addItemToUniform "rhs_mag_rgd5";
	_unit addVest "rhs_6b23_medic";
	_unit addItemToVest "ACE_EarPlugs";
	for "_i" from 1 to 5 do {_unit addItemToVest "rhs_30Rnd_545x39_AK";};
	_unit addItemToVest "rhs_mag_nspn_yellow";
	_unit addBackpack "rhs_assault_umbts";
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 7 do {_unit addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 6 do {_unit addItemToBackpack "ACE_epinephrine";};
	_unit addItemToBackpack "ACE_salineIV";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_salineIV_500";};
	_unit addItemToBackpack "ACE_salineIV_250";
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_quikclot";};
	_unit addItemToBackpack "ACE_personalAidKit";
	_unit addHeadgear "rhs_6b27m_ess";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_ak74m";
	_unit addPrimaryWeaponItem "rhs_acc_dtk";
	_unit addPrimaryWeaponItem "rhs_acc_2dpZenit";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";

};

loadout_US_TL = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_teamleader";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_m576";};
	_unit addItemToVest "rhs_mag_M585_white";
	_unit addItemToVest "rhs_mag_m662_red";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_M441_HE";};
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_m4a1_carryhandle_m203";
	_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addWeapon "lerca_1200_black";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemGPS";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};

loadout_US_AT = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_corpsman";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	for "_i" from 1 to 2 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";
	_unit addWeapon "rhs_weap_M136";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};

loadout_US_UAV = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_light";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
	_unit addBackpack "B_rhsusf_B_BACKPACK";
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};

loadout_US_MG = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_mg";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	_unit addItemToVest "rhsusf_100Rnd_556x45_soft_pouch";
	_unit addBackpack "B_AssaultPack_rgr";
	for "_i" from 1 to 3 do {_unit addItemToBackpack "rhsusf_100Rnd_556x45_soft_pouch";};
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_m249_pip_S_vfg";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "ItemRadioAcreFlagged";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};

loadout_US_Marksman = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_marksman";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	_unit addItemToVest "ACE_RangeCard";
	for "_i" from 1 to 6 do {_unit addItemToVest "rhsusf_20Rnd_762x51_m118_special_Mag";};
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_sr25";
	_unit addPrimaryWeaponItem "rhsusf_acc_SR25S";
	_unit addPrimaryWeaponItem "ACE_acc_pointer_green";
	_unit addPrimaryWeaponItem "optic_DMS";
	_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};

loadout_US_Medic = //
{
	_unit = _this select 0;

	comment "Exported from Arsenal by Random";

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
	_unit forceAddUniform "rhs_uniform_FROG01_wd";
	for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_fieldDressing";};
	_unit addItemToUniform "ACE_tourniquet";
	_unit addItemToUniform "rhs_mag_m18_purple";
	_unit addItemToUniform "rhs_mag_m18_yellow";
	_unit addItemToUniform "rhs_mag_m67";
	_unit addVest "rhsusf_spc_rifleman";
	for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
	_unit addItemToVest "ACE_EarPlugs";
	_unit addItemToVest "ACE_Flashlight_XL50";
	for "_i" from 1 to 7 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer";};
	_unit addBackpack "B_AssaultPack_rgr";
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_tourniquet";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_salineIV_250";};
	for "_i" from 1 to 15 do {_unit addItemToBackpack "ACE_quikclot";};
	_unit addItemToBackpack "ACE_personalAidKit";
	_unit addHeadgear "rhsusf_mich_helmet_marpatwd";

	comment "Add weapons";
	_unit addWeapon "rhs_weap_m4a1_carryhandle_grip";
	_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
	_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15";
	_unit addPrimaryWeaponItem "rhsusf_acc_ACOG";

	comment "Add items";
	_unit linkItem "ItemMap";
	_unit linkItem "ItemCompass";
	_unit linkItem "ItemWatch";
	_unit linkItem "rhsusf_ANPVS_14";

	_unit addItemToUniform "ACRE_PRC343";
};