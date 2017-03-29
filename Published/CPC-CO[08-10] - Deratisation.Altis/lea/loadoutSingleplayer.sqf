/**
* Generated by LEA for Arma 3
* Version: 2.0.24
* Tue Jan 19 12:18:06 CET 2016
* Mission file name: Altis1-GRECE.Altis
* Mission name: Altis1-GRECE.Altis
* Required mods:
* + ArmA 3
* + ACRE
* + ACE3
* 
* Call the script: _dummy = [] execvm "lea\loadoutSingleplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//No named crates in this mission.

/**
* Loadout for soldiers units
*/

if (!isNil "unit_0_0") then {
removeallweapons unit_0_0;
removeallassigneditems unit_0_0;
removeBackpack unit_0_0;
removeVest unit_0_0;
removeHeadgear unit_0_0;
removeUniform unit_0_0;
removeGoggles unit_0_0;

unit_0_0 addWeapon "ItemMap";
unit_0_0 addWeapon "ItemWatch";
unit_0_0 addWeapon "ItemCompass";
unit_0_0 addWeapon "ItemGPS";
unit_0_0 addWeapon "H_CrewHelmetHeli_O";
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",1];
unit_0_0 addWeapon "SMG_01_F";
removeBackpack unit_0_0;
unit_0_0 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_0) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_0_0 addWeapon "hgun_Rook40_F";
removeBackpack unit_0_0;
unit_0_0 addBackpack "B_FieldPack_oli";
clearItemCargoGlobal (backpackContainer unit_0_0);
clearMagazineCargoGlobal (backpackContainer unit_0_0);
clearWeaponCargoGlobal (backpackContainer unit_0_0);
(backpackContainer unit_0_0) additemcargoGlobal ["ACRE_PRC117F",1];
unit_0_0 addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer unit_0_0);
clearMagazineCargoGlobal (vestContainer unit_0_0);
clearWeaponCargoGlobal (vestContainer unit_0_0);
(vestContainer unit_0_0) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
(vestContainer unit_0_0) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",6];
unit_0_0 addItemToVest "SmokeShellOrange";
unit_0_0 addItemToVest "HandGrenade";
unit_0_0 addItemToVest "SmokeShellPurple";
unit_0_0 forceAddUniform "U_I_HeliPilotCoveralls";
clearItemCargoGlobal (uniformContainer unit_0_0);
clearMagazineCargoGlobal (uniformContainer unit_0_0);
clearWeaponCargoGlobal (uniformContainer unit_0_0);
(uniformContainer unit_0_0) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_0_0) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_0_0) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_0_0) additemcargoGlobal ["ACE_tourniquet",1];
unit_0_0 selectWeapon (primaryWeapon unit_0_0);
};

if (!isNil "unit_0_1") then {
removeallweapons unit_0_1;
removeallassigneditems unit_0_1;
removeBackpack unit_0_1;
removeVest unit_0_1;
removeHeadgear unit_0_1;
removeUniform unit_0_1;
removeGoggles unit_0_1;

unit_0_1 addWeapon "ItemMap";
unit_0_1 addWeapon "ItemWatch";
unit_0_1 addWeapon "ItemCompass";
unit_0_1 addWeapon "ItemGPS";
unit_0_1 addWeapon "H_CrewHelmetHeli_O";
unit_0_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_1) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",1];
unit_0_1 addWeapon "SMG_01_F";
removeBackpack unit_0_1;
unit_0_1 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_0_1) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_0_1 addWeapon "hgun_Rook40_F";
removeBackpack unit_0_1;
unit_0_1 addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer unit_0_1);
clearMagazineCargoGlobal (vestContainer unit_0_1);
clearWeaponCargoGlobal (vestContainer unit_0_1);
(vestContainer unit_0_1) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
(vestContainer unit_0_1) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",6];
unit_0_1 addItemToVest "SmokeShellOrange";
unit_0_1 addItemToVest "HandGrenade";
unit_0_1 addItemToVest "SmokeShellPurple";
unit_0_1 forceAddUniform "U_I_HeliPilotCoveralls";
clearItemCargoGlobal (uniformContainer unit_0_1);
clearMagazineCargoGlobal (uniformContainer unit_0_1);
clearWeaponCargoGlobal (uniformContainer unit_0_1);
(uniformContainer unit_0_1) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_0_1) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_0_1) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_0_1) additemcargoGlobal ["ACE_tourniquet",1];
unit_0_1 selectWeapon (primaryWeapon unit_0_1);
};

if (!isNil "unit_5_12") then {
removeallweapons unit_5_12;
removeallassigneditems unit_5_12;
removeBackpack unit_5_12;
removeVest unit_5_12;
removeHeadgear unit_5_12;
removeUniform unit_5_12;
removeGoggles unit_5_12;

unit_5_12 addWeapon "ItemMap";
unit_5_12 addWeapon "ItemWatch";
unit_5_12 addWeapon "ItemCompass";
unit_5_12 addWeapon "ItemGPS";
unit_5_12 addWeapon "H_HelmetO_ocamo";
unit_5_12 addWeapon "Rangefinder";
unit_5_12 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_12) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer",1];
unit_5_12 addWeapon "arifle_Katiba_F";
removeBackpack unit_5_12;
unit_5_12 addPrimaryWeaponItem "optic_Arco";
unit_5_12 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_12) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_12 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_12;
unit_5_12 addBackpack "B_FieldPack_oli";
clearItemCargoGlobal (backpackContainer unit_5_12);
clearMagazineCargoGlobal (backpackContainer unit_5_12);
clearWeaponCargoGlobal (backpackContainer unit_5_12);
(backpackContainer unit_5_12) additemcargoGlobal ["ACRE_PRC117F",1];
unit_5_12 addVest "V_HarnessOSpec_brn";
clearItemCargoGlobal (vestContainer unit_5_12);
clearMagazineCargoGlobal (vestContainer unit_5_12);
clearWeaponCargoGlobal (vestContainer unit_5_12);
(vestContainer unit_5_12) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_12) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
(vestContainer unit_5_12) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green_mag_Tracer",2];
unit_5_12 addItemToVest "SmokeShellOrange";
unit_5_12 addItemToVest "HandGrenade";
unit_5_12 addItemToVest "SmokeShellPurple";
unit_5_12 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_12);
clearMagazineCargoGlobal (uniformContainer unit_5_12);
clearWeaponCargoGlobal (uniformContainer unit_5_12);
(uniformContainer unit_5_12) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_12) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_12) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_12) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_12 selectWeapon (primaryWeapon unit_5_12);
};

if (!isNil "unit_5_13") then {
removeallweapons unit_5_13;
removeallassigneditems unit_5_13;
removeBackpack unit_5_13;
removeVest unit_5_13;
removeHeadgear unit_5_13;
removeUniform unit_5_13;
removeGoggles unit_5_13;

unit_5_13 addWeapon "ItemMap";
unit_5_13 addWeapon "ItemWatch";
unit_5_13 addWeapon "ItemCompass";
unit_5_13 addWeapon "H_HelmetO_ocamo";
unit_5_13 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_13) addmagazinecargoGlobal ["150Rnd_762x54_Box_Tracer",1];
unit_5_13 addWeapon "LMG_Zafir_F";
removeBackpack unit_5_13;
unit_5_13 addPrimaryWeaponItem "optic_Arco";
unit_5_13 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_13) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_13 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_13;
unit_5_13 addBackpack "B_AssaultPack_rgr";
clearItemCargoGlobal (backpackContainer unit_5_13);
clearMagazineCargoGlobal (backpackContainer unit_5_13);
clearWeaponCargoGlobal (backpackContainer unit_5_13);
(backpackContainer unit_5_13) addmagazinecargoGlobal ["150Rnd_762x54_Box_Tracer",3];
unit_5_13 addVest "V_TacVest_camo";
clearItemCargoGlobal (vestContainer unit_5_13);
clearMagazineCargoGlobal (vestContainer unit_5_13);
clearWeaponCargoGlobal (vestContainer unit_5_13);
(vestContainer unit_5_13) addmagazinecargoGlobal ["150Rnd_762x54_Box_Tracer",1];
(vestContainer unit_5_13) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_13 addItemToVest "SmokeShellOrange";
unit_5_13 addItemToVest "HandGrenade";
unit_5_13 addItemToVest "SmokeShellPurple";
unit_5_13 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_13);
clearMagazineCargoGlobal (uniformContainer unit_5_13);
clearWeaponCargoGlobal (uniformContainer unit_5_13);
(uniformContainer unit_5_13) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_13) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_13) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_13) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_13 selectWeapon (primaryWeapon unit_5_13);
};

if (!isNil "unit_5_14") then {
removeallweapons unit_5_14;
removeallassigneditems unit_5_14;
removeBackpack unit_5_14;
removeVest unit_5_14;
removeHeadgear unit_5_14;
removeUniform unit_5_14;
removeGoggles unit_5_14;

unit_5_14 addWeapon "ItemMap";
unit_5_14 addWeapon "ItemWatch";
unit_5_14 addWeapon "ItemCompass";
unit_5_14 addWeapon "H_HelmetO_ocamo";
unit_5_14 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_14) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_5_14 addWeapon "arifle_Katiba_GL_F";
removeBackpack unit_5_14;
unit_5_14 addPrimaryWeaponItem "optic_Aco";
unit_5_14 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_14) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_14 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_14;
unit_5_14 addVest "V_HarnessOGL_brn";
clearItemCargoGlobal (vestContainer unit_5_14);
clearMagazineCargoGlobal (vestContainer unit_5_14);
clearWeaponCargoGlobal (vestContainer unit_5_14);
(vestContainer unit_5_14) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_14) addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",10];
(vestContainer unit_5_14) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_14 addItemToVest "SmokeShellOrange";
unit_5_14 addItemToVest "HandGrenade";
unit_5_14 addItemToVest "SmokeShellPurple";
unit_5_14 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_14);
clearMagazineCargoGlobal (uniformContainer unit_5_14);
clearWeaponCargoGlobal (uniformContainer unit_5_14);
(uniformContainer unit_5_14) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_14) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_14) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_14) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_14 selectWeapon (primaryWeapon unit_5_14);
};

if (!isNil "unit_5_15") then {
removeallweapons unit_5_15;
removeallassigneditems unit_5_15;
removeBackpack unit_5_15;
removeVest unit_5_15;
removeHeadgear unit_5_15;
removeUniform unit_5_15;
removeGoggles unit_5_15;

unit_5_15 addWeapon "ItemMap";
unit_5_15 addWeapon "ItemWatch";
unit_5_15 addWeapon "ItemCompass";
unit_5_15 addWeapon "H_HelmetO_ocamo";
unit_5_15 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_15) addmagazinecargoGlobal ["20Rnd_762x51_Mag",1];
unit_5_15 addWeapon "arifle_Katiba_F";
removeBackpack unit_5_15;
unit_5_15 addPrimaryWeaponItem "optic_Aco";
unit_5_15 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_15) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_15 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_15;
unit_5_15 addBackpack "B_Carryall_ocamo";
clearItemCargoGlobal (backpackContainer unit_5_15);
clearMagazineCargoGlobal (backpackContainer unit_5_15);
clearWeaponCargoGlobal (backpackContainer unit_5_15);
(backpackContainer unit_5_15) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",15];
(backpackContainer unit_5_15) addmagazinecargoGlobal ["20Rnd_762x51_Mag",4];
(backpackContainer unit_5_15) addmagazinecargoGlobal ["150Rnd_762x54_Box",3];
unit_5_15 addVest "V_TacVest_brn";
clearItemCargoGlobal (vestContainer unit_5_15);
clearMagazineCargoGlobal (vestContainer unit_5_15);
clearWeaponCargoGlobal (vestContainer unit_5_15);
(vestContainer unit_5_15) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_15) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_15 addItemToVest "SmokeShellOrange";
unit_5_15 addItemToVest "HandGrenade";
unit_5_15 addItemToVest "SmokeShellPurple";
unit_5_15 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_15);
clearMagazineCargoGlobal (uniformContainer unit_5_15);
clearWeaponCargoGlobal (uniformContainer unit_5_15);
(uniformContainer unit_5_15) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_15) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_15) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_15) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_15 selectWeapon (primaryWeapon unit_5_15);
};

if (!isNil "unit_5_16") then {
removeallweapons unit_5_16;
removeallassigneditems unit_5_16;
removeBackpack unit_5_16;
removeVest unit_5_16;
removeHeadgear unit_5_16;
removeUniform unit_5_16;
removeGoggles unit_5_16;

unit_5_16 addWeapon "ItemMap";
unit_5_16 addWeapon "ItemWatch";
unit_5_16 addWeapon "ItemCompass";
unit_5_16 addWeapon "H_HelmetO_ocamo";
unit_5_16 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_16) addmagazinecargoGlobal ["20Rnd_762x51_Mag",1];
unit_5_16 addWeapon "srifle_EBR_F";
removeBackpack unit_5_16;
unit_5_16 addPrimaryWeaponItem "optic_DMS";
unit_5_16 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_16) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_16 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_16;
unit_5_16 addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer unit_5_16);
clearMagazineCargoGlobal (vestContainer unit_5_16);
clearWeaponCargoGlobal (vestContainer unit_5_16);
(vestContainer unit_5_16) addmagazinecargoGlobal ["20Rnd_762x51_Mag",5];
(vestContainer unit_5_16) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_16 addItemToVest "SmokeShellOrange";
unit_5_16 addItemToVest "HandGrenade";
unit_5_16 addItemToVest "SmokeShellPurple";
unit_5_16 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_16);
clearMagazineCargoGlobal (uniformContainer unit_5_16);
clearWeaponCargoGlobal (uniformContainer unit_5_16);
(uniformContainer unit_5_16) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_16) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_16) additemcargoGlobal ["muzzle_snds_B",1];
(uniformContainer unit_5_16) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_16) additemcargoGlobal ["ACE_tourniquet",1];
(uniformContainer unit_5_16) additemcargoGlobal ["ACE_ATragMX",1];
unit_5_16 selectWeapon (primaryWeapon unit_5_16);
};

if (!isNil "unit_5_17") then {
removeallweapons unit_5_17;
removeallassigneditems unit_5_17;
removeBackpack unit_5_17;
removeVest unit_5_17;
removeHeadgear unit_5_17;
removeUniform unit_5_17;
removeGoggles unit_5_17;

unit_5_17 addWeapon "ItemMap";
unit_5_17 addWeapon "ItemWatch";
unit_5_17 addWeapon "ItemCompass";
unit_5_17 addWeapon "H_HelmetO_ocamo";
unit_5_17 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_17) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_5_17 addWeapon "arifle_Katiba_F";
removeBackpack unit_5_17;
unit_5_17 addPrimaryWeaponItem "optic_Aco";
unit_5_17 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_17) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_17 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_17;
unit_5_17 addBackpack "B_AssaultPack_rgr";
clearItemCargoGlobal (backpackContainer unit_5_17);
clearMagazineCargoGlobal (backpackContainer unit_5_17);
clearWeaponCargoGlobal (backpackContainer unit_5_17);
(backpackContainer unit_5_17) additemcargoGlobal ["Toolkit",1];
unit_5_17 addVest "V_HarnessO_brn";
clearItemCargoGlobal (vestContainer unit_5_17);
clearMagazineCargoGlobal (vestContainer unit_5_17);
clearWeaponCargoGlobal (vestContainer unit_5_17);
(vestContainer unit_5_17) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_17) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_17 addItemToVest "SmokeShellOrange";
unit_5_17 addItemToVest "HandGrenade";
unit_5_17 addItemToVest "SmokeShellPurple";
unit_5_17 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_17);
clearMagazineCargoGlobal (uniformContainer unit_5_17);
clearWeaponCargoGlobal (uniformContainer unit_5_17);
(uniformContainer unit_5_17) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_17) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_17) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_17) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_17 selectWeapon (primaryWeapon unit_5_17);
};

if (!isNil "unit_5_18") then {
removeallweapons unit_5_18;
removeallassigneditems unit_5_18;
removeBackpack unit_5_18;
removeVest unit_5_18;
removeHeadgear unit_5_18;
removeUniform unit_5_18;
removeGoggles unit_5_18;

unit_5_18 addWeapon "ItemMap";
unit_5_18 addWeapon "ItemWatch";
unit_5_18 addWeapon "ItemCompass";
unit_5_18 addWeapon "H_HelmetO_ocamo";
unit_5_18 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_18) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_5_18 addWeapon "arifle_Katiba_F";
removeBackpack unit_5_18;
unit_5_18 addPrimaryWeaponItem "optic_Aco";
unit_5_18 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_18) addmagazinecargoGlobal ["RPG32_F",1];
unit_5_18 addWeapon "launch_RPG32_F";
removeBackpack unit_5_18;
unit_5_18 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_18) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_18 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_18;
unit_5_18 addBackpack "B_Carryall_ocamo";
clearItemCargoGlobal (backpackContainer unit_5_18);
clearMagazineCargoGlobal (backpackContainer unit_5_18);
clearWeaponCargoGlobal (backpackContainer unit_5_18);
(backpackContainer unit_5_18) addmagazinecargoGlobal ["RPG32_HE_F",3];
(backpackContainer unit_5_18) addmagazinecargoGlobal ["RPG32_F",3];
unit_5_18 addVest "V_TacVest_khk";
clearItemCargoGlobal (vestContainer unit_5_18);
clearMagazineCargoGlobal (vestContainer unit_5_18);
clearWeaponCargoGlobal (vestContainer unit_5_18);
(vestContainer unit_5_18) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_18) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_18 addItemToVest "SmokeShellOrange";
unit_5_18 addItemToVest "HandGrenade";
unit_5_18 addItemToVest "SmokeShellPurple";
unit_5_18 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_18);
clearMagazineCargoGlobal (uniformContainer unit_5_18);
clearWeaponCargoGlobal (uniformContainer unit_5_18);
(uniformContainer unit_5_18) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_18) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_18) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_18) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_18 selectWeapon (primaryWeapon unit_5_18);
};

if (!isNil "unit_5_19") then {
removeallweapons unit_5_19;
removeallassigneditems unit_5_19;
removeBackpack unit_5_19;
removeVest unit_5_19;
removeHeadgear unit_5_19;
removeUniform unit_5_19;
removeGoggles unit_5_19;

unit_5_19 addWeapon "ItemMap";
unit_5_19 addWeapon "ItemWatch";
unit_5_19 addWeapon "ItemCompass";
unit_5_19 addWeapon "H_HelmetO_ocamo";
unit_5_19 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_19) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
unit_5_19 addWeapon "arifle_Katiba_F";
removeBackpack unit_5_19;
unit_5_19 addPrimaryWeaponItem "optic_Aco";
unit_5_19 addBackpack "B_TacticalPack_blk";
(backpackContainer unit_5_19) addmagazinecargoGlobal ["16Rnd_9x21_Mag",1];
unit_5_19 addWeapon "hgun_Rook40_F";
removeBackpack unit_5_19;
unit_5_19 addBackpack "B_FieldPack_oli";
clearItemCargoGlobal (backpackContainer unit_5_19);
clearMagazineCargoGlobal (backpackContainer unit_5_19);
clearWeaponCargoGlobal (backpackContainer unit_5_19);
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_quikclot",15];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_fieldDressing",20];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_personalAidKit",1];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_morphine",10];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_elasticBandage",20];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_salineIV",4];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_tourniquet",5];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_salineIV_500",4];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_epinephrine",10];
(backpackContainer unit_5_19) additemcargoGlobal ["ACE_packingBandage",20];
unit_5_19 addVest "V_TacVest_camo";
clearItemCargoGlobal (vestContainer unit_5_19);
clearMagazineCargoGlobal (vestContainer unit_5_19);
clearWeaponCargoGlobal (vestContainer unit_5_19);
(vestContainer unit_5_19) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer unit_5_19) addmagazinecargoGlobal ["16Rnd_9x21_Mag",2];
unit_5_19 addItemToVest "SmokeShellOrange";
unit_5_19 addItemToVest "HandGrenade";
unit_5_19 addItemToVest "SmokeShellPurple";
unit_5_19 forceAddUniform "U_O_CombatUniform_ocamo";
clearItemCargoGlobal (uniformContainer unit_5_19);
clearMagazineCargoGlobal (uniformContainer unit_5_19);
clearWeaponCargoGlobal (uniformContainer unit_5_19);
(uniformContainer unit_5_19) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer unit_5_19) additemcargoGlobal ["ACRE_PRC343",1];
(uniformContainer unit_5_19) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer unit_5_19) additemcargoGlobal ["ACE_tourniquet",1];
unit_5_19 selectWeapon (primaryWeapon unit_5_19);
};

