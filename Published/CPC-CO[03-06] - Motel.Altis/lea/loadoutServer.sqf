/**
* Generated by LEA for Arma 3
* Version: 2.0.24
* Tue Jan 19 12:45:40 CET 2016
* Mission file name: Altis2-GRECE.Altis
* Mission name: Altis2-GRECE.Altis
* Required mods:
* + ArmA 3
* + ACRE
* + ACE3
* 
* Call the script: _dummy = [] execvm "lea\loadoutServer.sqf";
* 
*/

/**
* Loadout for crates
*/

//No named crates in this mission.

/**
* Loadout for soldiers units
*/

if (!isNil "unit_6_18") then {
removeallweapons unit_6_18;
removeallassigneditems unit_6_18;
removeBackpack unit_6_18;
removeVest unit_6_18;
removeHeadgear unit_6_18;
removeUniform unit_6_18;
removeGoggles unit_6_18;

unit_6_18 addWeapon "ItemMap";
unit_6_18 addWeapon "ItemWatch";
unit_6_18 addWeapon "ItemCompass";
unit_6_18 addWeapon "ItemGPS";
unit_6_18 addWeapon "G_Diving";
unit_6_18 addWeapon "NVGoggles_OPFOR";
unit_6_18 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_18) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_18 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_18;
unit_6_18 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_18 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_18 addPrimaryWeaponItem "optic_Arco";
unit_6_18 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_18) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_18 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_18;
unit_6_18 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_18);
clearMagazineCargoGlobal (vestContainer unit_6_18);
clearWeaponCargoGlobal (vestContainer unit_6_18);
unit_6_18 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_18);
clearMagazineCargoGlobal (uniformContainer unit_6_18);
clearWeaponCargoGlobal (uniformContainer unit_6_18);
(uniformContainer unit_6_18) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_18) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_18) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_18) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_18) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_18 addItemToUniform "SmokeShellRed";
unit_6_18 addItemToUniform "HandGrenade";
unit_6_18 selectWeapon (primaryWeapon unit_6_18);
};

if (!isNil "unit_6_20") then {
removeallweapons unit_6_20;
removeallassigneditems unit_6_20;
removeBackpack unit_6_20;
removeVest unit_6_20;
removeHeadgear unit_6_20;
removeUniform unit_6_20;
removeGoggles unit_6_20;

unit_6_20 addWeapon "ItemMap";
unit_6_20 addWeapon "ItemWatch";
unit_6_20 addWeapon "ItemCompass";
unit_6_20 addWeapon "G_Diving";
unit_6_20 addWeapon "NVGoggles_OPFOR";
unit_6_20 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_20 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_20;
unit_6_20 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_20 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_20 addPrimaryWeaponItem "optic_Arco";
unit_6_20 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_20;
unit_6_20 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_20);
clearMagazineCargoGlobal (vestContainer unit_6_20);
clearWeaponCargoGlobal (vestContainer unit_6_20);
unit_6_20 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_20);
clearMagazineCargoGlobal (uniformContainer unit_6_20);
clearWeaponCargoGlobal (uniformContainer unit_6_20);
(uniformContainer unit_6_20) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_20) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_20) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_20) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_20) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20 addItemToUniform "SmokeShellRed";
unit_6_20 addItemToUniform "HandGrenade";
unit_6_20 selectWeapon (primaryWeapon unit_6_20);
};

if (!isNil "unit_6_21") then {
removeallweapons unit_6_21;
removeallassigneditems unit_6_21;
removeBackpack unit_6_21;
removeVest unit_6_21;
removeHeadgear unit_6_21;
removeUniform unit_6_21;
removeGoggles unit_6_21;

unit_6_21 addWeapon "ItemMap";
unit_6_21 addWeapon "ItemWatch";
unit_6_21 addWeapon "ItemCompass";
unit_6_21 addWeapon "G_Diving";
unit_6_21 addWeapon "NVGoggles_OPFOR";
unit_6_21 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_21) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_21 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_21;
unit_6_21 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_21 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_21 addPrimaryWeaponItem "optic_Arco";
unit_6_21 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_21) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_21 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_21;
unit_6_21 addBackpack "B_AssaultPack_blk";
clearItemCargoGlobal (backpackContainer unit_6_21);
clearMagazineCargoGlobal (backpackContainer unit_6_21);
clearWeaponCargoGlobal (backpackContainer unit_6_21);
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_quikclot",10];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_fieldDressing",20];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_personalAidKit",1];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_salineIV_250",2];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_morphine",8];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_elasticBandage",15];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_salineIV",2];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_tourniquet",4];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_salineIV_500",4];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_epinephrine",8];
(backpackContainer unit_6_21) additemcargoGlobal ["ACE_packingBandage",20];
unit_6_21 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_21);
clearMagazineCargoGlobal (vestContainer unit_6_21);
clearWeaponCargoGlobal (vestContainer unit_6_21);
unit_6_21 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_21);
clearMagazineCargoGlobal (uniformContainer unit_6_21);
clearWeaponCargoGlobal (uniformContainer unit_6_21);
(uniformContainer unit_6_21) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_21) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_21) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_21) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_21) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_21 addItemToUniform "SmokeShellRed";
unit_6_21 addItemToUniform "HandGrenade";
unit_6_21 selectWeapon (primaryWeapon unit_6_21);
};

if (!isNil "unit_6_20_1") then {
removeallweapons unit_6_20_1;
removeallassigneditems unit_6_20_1;
removeBackpack unit_6_20_1;
removeVest unit_6_20_1;
removeHeadgear unit_6_20_1;
removeUniform unit_6_20_1;
removeGoggles unit_6_20_1;

unit_6_20_1 addWeapon "ItemMap";
unit_6_20_1 addWeapon "ItemWatch";
unit_6_20_1 addWeapon "ItemCompass";
unit_6_20_1 addWeapon "G_Diving";
unit_6_20_1 addWeapon "NVGoggles_OPFOR";
unit_6_20_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20_1) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_20_1 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_20_1;
unit_6_20_1 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_20_1 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_20_1 addPrimaryWeaponItem "optic_Arco";
unit_6_20_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20_1) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20_1 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_20_1;
unit_6_20_1 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_20_1);
clearMagazineCargoGlobal (vestContainer unit_6_20_1);
clearWeaponCargoGlobal (vestContainer unit_6_20_1);
unit_6_20_1 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_20_1);
clearMagazineCargoGlobal (uniformContainer unit_6_20_1);
clearWeaponCargoGlobal (uniformContainer unit_6_20_1);
(uniformContainer unit_6_20_1) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_20_1) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_20_1) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_20_1) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_20_1) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20_1 addItemToUniform "SmokeShellRed";
unit_6_20_1 addItemToUniform "HandGrenade";
unit_6_20_1 selectWeapon (primaryWeapon unit_6_20_1);
};

if (!isNil "unit_6_20_2") then {
removeallweapons unit_6_20_2;
removeallassigneditems unit_6_20_2;
removeBackpack unit_6_20_2;
removeVest unit_6_20_2;
removeHeadgear unit_6_20_2;
removeUniform unit_6_20_2;
removeGoggles unit_6_20_2;

unit_6_20_2 addWeapon "ItemMap";
unit_6_20_2 addWeapon "ItemWatch";
unit_6_20_2 addWeapon "ItemCompass";
unit_6_20_2 addWeapon "G_Diving";
unit_6_20_2 addWeapon "NVGoggles_OPFOR";
unit_6_20_2 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20_2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_20_2 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_20_2;
unit_6_20_2 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_20_2 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_20_2 addPrimaryWeaponItem "optic_Arco";
unit_6_20_2 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_20_2) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20_2 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_20_2;
unit_6_20_2 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_20_2);
clearMagazineCargoGlobal (vestContainer unit_6_20_2);
clearWeaponCargoGlobal (vestContainer unit_6_20_2);
unit_6_20_2 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_20_2);
clearMagazineCargoGlobal (uniformContainer unit_6_20_2);
clearWeaponCargoGlobal (uniformContainer unit_6_20_2);
(uniformContainer unit_6_20_2) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_20_2) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_20_2) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_20_2) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_20_2) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_20_2 addItemToUniform "SmokeShellRed";
unit_6_20_2 addItemToUniform "HandGrenade";
unit_6_20_2 selectWeapon (primaryWeapon unit_6_20_2);
};

if (!isNil "unit_6_19") then {
removeallweapons unit_6_19;
removeallassigneditems unit_6_19;
removeBackpack unit_6_19;
removeVest unit_6_19;
removeHeadgear unit_6_19;
removeUniform unit_6_19;
removeGoggles unit_6_19;

unit_6_19 addWeapon "ItemMap";
unit_6_19 addWeapon "ItemWatch";
unit_6_19 addWeapon "ItemCompass";
unit_6_19 addWeapon "G_Diving";
unit_6_19 addWeapon "NVGoggles_OPFOR";
unit_6_19 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_19) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_6_19 addWeapon "arifle_Katiba_F";
removeBackpack unit_6_19;
unit_6_19 addPrimaryWeaponItem "acc_pointer_IR";
unit_6_19 addPrimaryWeaponItem "muzzle_snds_H";
unit_6_19 addPrimaryWeaponItem "optic_Arco";
unit_6_19 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_6_19) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_19 addWeapon "hgun_Rook40_F";
removeBackpack unit_6_19;
unit_6_19 addBackpack "B_FieldPack_blk";
clearItemCargoGlobal (backpackContainer unit_6_19);
clearMagazineCargoGlobal (backpackContainer unit_6_19);
clearWeaponCargoGlobal (backpackContainer unit_6_19);
(backpackContainer unit_6_19) additemcargoGlobal ["ACE_M26_Clacker",1];
unit_6_19 addItemToBackpack "SatchelCharge_Remote_Mag";
unit_6_19 addItemToBackpack "DemoCharge_Remote_Mag";
unit_6_19 addItemToBackpack "DemoCharge_Remote_Mag";
unit_6_19 addItemToBackpack "DemoCharge_Remote_Mag";
unit_6_19 addItemToBackpack "DemoCharge_Remote_Mag";
unit_6_19 addVest "V_RebreatherIA";
clearItemCargoGlobal (vestContainer unit_6_19);
clearMagazineCargoGlobal (vestContainer unit_6_19);
clearWeaponCargoGlobal (vestContainer unit_6_19);
unit_6_19 forceAddUniform "U_O_Wetsuit";
clearItemCargoGlobal (uniformContainer unit_6_19);
clearMagazineCargoGlobal (uniformContainer unit_6_19);
clearWeaponCargoGlobal (uniformContainer unit_6_19);
(uniformContainer unit_6_19) additemcargoGlobal ["ACE_fieldDressing",4];
(uniformContainer unit_6_19) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_6_19) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_6_19) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",4];
(uniformContainer unit_6_19) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_6_19 addItemToUniform "SmokeShellRed";
unit_6_19 addItemToUniform "HandGrenade";
unit_6_19 selectWeapon (primaryWeapon unit_6_19);
};

