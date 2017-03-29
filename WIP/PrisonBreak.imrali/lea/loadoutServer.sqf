/**
* Generated by LEA for Arma 3
* Version: 2.0.24
* Tue Jan 19 14:55:23 CET 2016
* Mission file name: PrisonBreak.imrali
* Mission name: PrisonBreak.imrali
* Required mods:
* + ArmA 3
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

if (!isNil "TeamLeader") then {
removeallweapons TeamLeader;
removeallassigneditems TeamLeader;
removeBackpack TeamLeader;
removeVest TeamLeader;
removeUniform TeamLeader;

TeamLeader addWeapon "ItemMap";
TeamLeader addWeapon "ItemWatch";
TeamLeader addWeapon "ItemCompass";
TeamLeader addWeapon "ItemGPS";
TeamLeader addWeapon "NVGoggles_OPFOR";
TeamLeader addWeapon "Binocular";
TeamLeader addBackpack "B_TacticalPack_blk";
(backpackContainer TeamLeader) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag",1];
TeamLeader addWeapon "arifle_MXM_Black_F";
removeBackpack TeamLeader;
TeamLeader addPrimaryWeaponItem "acc_pointer_IR";
TeamLeader addPrimaryWeaponItem "muzzle_snds_H";
TeamLeader addPrimaryWeaponItem "optic_Hamr";
TeamLeader addBackpack "B_FieldPack_oli";
clearItemCargoGlobal (backpackContainer TeamLeader);
clearMagazineCargoGlobal (backpackContainer TeamLeader);
clearWeaponCargoGlobal (backpackContainer TeamLeader);
(backpackContainer TeamLeader) additemcargoGlobal ["ACE_wirecutter",1];
TeamLeader addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer TeamLeader);
clearMagazineCargoGlobal (vestContainer TeamLeader);
clearWeaponCargoGlobal (vestContainer TeamLeader);
(vestContainer TeamLeader) addmagazinecargoGlobal ["30Rnd_65x39_caseless_mag",7];
TeamLeader addItemToVest "SmokeShellGreen";
TeamLeader addItemToVest "SmokeShellGreen";
TeamLeader addItemToVest "SmokeShellGreen";
TeamLeader forceAddUniform "U_I_G_resistanceLeader_F";
clearItemCargoGlobal (uniformContainer TeamLeader);
clearMagazineCargoGlobal (uniformContainer TeamLeader);
clearWeaponCargoGlobal (uniformContainer TeamLeader);
(uniformContainer TeamLeader) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer TeamLeader) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer TeamLeader) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer TeamLeader) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer TeamLeader) additemcargoGlobal ["ACE_tourniquet",1];
TeamLeader addItemToUniform "HandGrenade";
TeamLeader selectWeapon (primaryWeapon TeamLeader);
};

if (!isNil "AutoRifleman") then {
removeallweapons AutoRifleman;
removeallassigneditems AutoRifleman;
removeBackpack AutoRifleman;
removeVest AutoRifleman;
removeUniform AutoRifleman;

AutoRifleman addWeapon "ItemMap";
AutoRifleman addWeapon "ItemWatch";
AutoRifleman addWeapon "ItemCompass";
AutoRifleman addWeapon "NVGoggles_OPFOR";
AutoRifleman addWeapon "Binocular";
AutoRifleman addBackpack "B_TacticalPack_blk";
(backpackContainer AutoRifleman) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box",1];
AutoRifleman addWeapon "LMG_Mk200_F";
removeBackpack AutoRifleman;
AutoRifleman addPrimaryWeaponItem "acc_pointer_IR";
AutoRifleman addBackpack "B_AssaultPack_blk";
clearItemCargoGlobal (backpackContainer AutoRifleman);
clearMagazineCargoGlobal (backpackContainer AutoRifleman);
clearWeaponCargoGlobal (backpackContainer AutoRifleman);
(backpackContainer AutoRifleman) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box",2];
AutoRifleman addVest "V_TacVest_khk";
clearItemCargoGlobal (vestContainer AutoRifleman);
clearMagazineCargoGlobal (vestContainer AutoRifleman);
clearWeaponCargoGlobal (vestContainer AutoRifleman);
(vestContainer AutoRifleman) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box",1];
AutoRifleman addItemToVest "HandGrenade";
AutoRifleman addItemToVest "HandGrenade";
AutoRifleman addItemToVest "SmokeShellGreen";
AutoRifleman addItemToVest "SmokeShellGreen";
AutoRifleman addItemToVest "SmokeShellGreen";
AutoRifleman forceAddUniform "U_IG_leader";
clearItemCargoGlobal (uniformContainer AutoRifleman);
clearMagazineCargoGlobal (uniformContainer AutoRifleman);
clearWeaponCargoGlobal (uniformContainer AutoRifleman);
(uniformContainer AutoRifleman) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer AutoRifleman) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer AutoRifleman) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer AutoRifleman) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer AutoRifleman) additemcargoGlobal ["ACE_tourniquet",1];
AutoRifleman selectWeapon (primaryWeapon AutoRifleman);
};

if (!isNil "Grenadier") then {
removeallweapons Grenadier;
removeallassigneditems Grenadier;
removeBackpack Grenadier;
removeVest Grenadier;
removeUniform Grenadier;

Grenadier addWeapon "ItemMap";
Grenadier addWeapon "ItemWatch";
Grenadier addWeapon "ItemCompass";
Grenadier addWeapon "NVGoggles_OPFOR";
Grenadier addBackpack "B_TacticalPack_blk";
(backpackContainer Grenadier) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
Grenadier addWeapon "arifle_Katiba_GL_F";
removeBackpack Grenadier;
Grenadier addPrimaryWeaponItem "acc_pointer_IR";
Grenadier addPrimaryWeaponItem "muzzle_snds_H";
Grenadier addPrimaryWeaponItem "optic_ACO_grn";
Grenadier addVest "V_HarnessOGL_brn";
clearItemCargoGlobal (vestContainer Grenadier);
clearMagazineCargoGlobal (vestContainer Grenadier);
clearWeaponCargoGlobal (vestContainer Grenadier);
(vestContainer Grenadier) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
(vestContainer Grenadier) addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",10];
Grenadier addItemToVest "HandGrenade";
Grenadier addItemToVest "HandGrenade";
Grenadier addItemToVest "SmokeShellGreen";
Grenadier addItemToVest "SmokeShellGreen";
Grenadier addItemToVest "SmokeShellGreen";
Grenadier forceAddUniform "U_BG_Guerrilla_6_1";
clearItemCargoGlobal (uniformContainer Grenadier);
clearMagazineCargoGlobal (uniformContainer Grenadier);
clearWeaponCargoGlobal (uniformContainer Grenadier);
(uniformContainer Grenadier) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer Grenadier) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer Grenadier) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer Grenadier) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer Grenadier) additemcargoGlobal ["ACE_tourniquet",1];
Grenadier selectWeapon (primaryWeapon Grenadier);
};

if (!isNil "FusilierAT") then {
removeallweapons FusilierAT;
removeallassigneditems FusilierAT;
removeBackpack FusilierAT;
removeVest FusilierAT;
removeUniform FusilierAT;

FusilierAT addWeapon "ItemMap";
FusilierAT addWeapon "ItemWatch";
FusilierAT addWeapon "ItemCompass";
FusilierAT addWeapon "NVGoggles_OPFOR";
FusilierAT addBackpack "B_TacticalPack_blk";
(backpackContainer FusilierAT) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
FusilierAT addWeapon "arifle_TRG21_F";
removeBackpack FusilierAT;
FusilierAT addPrimaryWeaponItem "acc_pointer_IR";
FusilierAT addPrimaryWeaponItem "muzzle_snds_M";
FusilierAT addPrimaryWeaponItem "optic_ACO_grn";
FusilierAT addBackpack "B_TacticalPack_blk";
(backpackContainer FusilierAT) addmagazinecargoGlobal ["RPG32_F",1];
FusilierAT addWeapon "launch_RPG32_F";
removeBackpack FusilierAT;
FusilierAT addBackpack "B_AssaultPack_blk";
clearItemCargoGlobal (backpackContainer FusilierAT);
clearMagazineCargoGlobal (backpackContainer FusilierAT);
clearWeaponCargoGlobal (backpackContainer FusilierAT);
(backpackContainer FusilierAT) addmagazinecargoGlobal ["RPG32_HE_F",1];
(backpackContainer FusilierAT) addmagazinecargoGlobal ["RPG32_F",2];
FusilierAT addVest "V_TacVestCamo_khk";
clearItemCargoGlobal (vestContainer FusilierAT);
clearMagazineCargoGlobal (vestContainer FusilierAT);
clearWeaponCargoGlobal (vestContainer FusilierAT);
(vestContainer FusilierAT) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",6];
FusilierAT addItemToVest "HandGrenade";
FusilierAT addItemToVest "HandGrenade";
FusilierAT addItemToVest "SmokeShellGreen";
FusilierAT addItemToVest "SmokeShellGreen";
FusilierAT addItemToVest "SmokeShellGreen";
FusilierAT forceAddUniform "U_BG_Guerilla2_3";
clearItemCargoGlobal (uniformContainer FusilierAT);
clearMagazineCargoGlobal (uniformContainer FusilierAT);
clearWeaponCargoGlobal (uniformContainer FusilierAT);
(uniformContainer FusilierAT) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer FusilierAT) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer FusilierAT) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer FusilierAT) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer FusilierAT) additemcargoGlobal ["ACE_tourniquet",1];
FusilierAT selectWeapon (primaryWeapon FusilierAT);
};

if (!isNil "Demo") then {
removeallweapons Demo;
removeallassigneditems Demo;
removeBackpack Demo;
removeVest Demo;
removeUniform Demo;

Demo addWeapon "ItemMap";
Demo addWeapon "ItemWatch";
Demo addWeapon "ItemCompass";
Demo addWeapon "NVGoggles_OPFOR";
Demo addBackpack "B_TacticalPack_blk";
(backpackContainer Demo) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
Demo addWeapon "arifle_Mk20_plain_F";
removeBackpack Demo;
Demo addPrimaryWeaponItem "acc_pointer_IR";
Demo addPrimaryWeaponItem "muzzle_snds_M";
Demo addPrimaryWeaponItem "optic_ACO_grn";
Demo addBackpack "B_Kitbag_cbr";
clearItemCargoGlobal (backpackContainer Demo);
clearMagazineCargoGlobal (backpackContainer Demo);
clearWeaponCargoGlobal (backpackContainer Demo);
Demo addItemToBackpack "SatchelCharge_Remote_Mag";
Demo addItemToBackpack "SatchelCharge_Remote_Mag";
Demo addItemToBackpack "SatchelCharge_Remote_Mag";
Demo addVest "V_TacVestCamo_khk";
clearItemCargoGlobal (vestContainer Demo);
clearMagazineCargoGlobal (vestContainer Demo);
clearWeaponCargoGlobal (vestContainer Demo);
(vestContainer Demo) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",6];
Demo addItemToVest "HandGrenade";
Demo addItemToVest "HandGrenade";
Demo addItemToVest "SmokeShellGreen";
Demo addItemToVest "SmokeShellGreen";
Demo addItemToVest "SmokeShellGreen";
Demo forceAddUniform "U_BG_Guerilla1_1";
clearItemCargoGlobal (uniformContainer Demo);
clearMagazineCargoGlobal (uniformContainer Demo);
clearWeaponCargoGlobal (uniformContainer Demo);
(uniformContainer Demo) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer Demo) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer Demo) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer Demo) additemcargoGlobal ["ACE_Clacker",1];
(uniformContainer Demo) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer Demo) additemcargoGlobal ["ACE_tourniquet",1];
Demo selectWeapon (primaryWeapon Demo);
};

if (!isNil "Medic") then {
removeallweapons Medic;
removeallassigneditems Medic;
removeBackpack Medic;
removeVest Medic;
removeHeadgear Medic;
removeUniform Medic;
removeGoggles Medic;

Medic addWeapon "ItemMap";
Medic addWeapon "ItemWatch";
Medic addWeapon "ItemCompass";
Medic addWeapon "ItemGPS";
Medic addWeapon "NVGoggles_OPFOR";
Medic addBackpack "B_TacticalPack_blk";
(backpackContainer Medic) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",1];
Medic addWeapon "arifle_Katiba_C_F";
removeBackpack Medic;
Medic addPrimaryWeaponItem "acc_pointer_IR";
Medic addPrimaryWeaponItem "muzzle_snds_H";
Medic addPrimaryWeaponItem "optic_ACO_grn";
Medic addBackpack "B_AssaultPack_blk";
clearItemCargoGlobal (backpackContainer Medic);
clearMagazineCargoGlobal (backpackContainer Medic);
clearWeaponCargoGlobal (backpackContainer Medic);
(backpackContainer Medic) additemcargoGlobal ["ACE_quikclot",10];
(backpackContainer Medic) additemcargoGlobal ["ACE_fieldDressing",20];
(backpackContainer Medic) additemcargoGlobal ["ACE_personalAidKit",1];
(backpackContainer Medic) additemcargoGlobal ["ACE_salineIV_250",2];
(backpackContainer Medic) additemcargoGlobal ["ACE_morphine",8];
(backpackContainer Medic) additemcargoGlobal ["ACE_elasticBandage",15];
(backpackContainer Medic) additemcargoGlobal ["ACE_salineIV",2];
(backpackContainer Medic) additemcargoGlobal ["ACE_tourniquet",4];
(backpackContainer Medic) additemcargoGlobal ["ACE_salineIV_500",4];
(backpackContainer Medic) additemcargoGlobal ["ACE_epinephrine",9];
(backpackContainer Medic) additemcargoGlobal ["ACE_packingBandage",20];
Medic addVest "V_BandollierB_blk";
clearItemCargoGlobal (vestContainer Medic);
clearMagazineCargoGlobal (vestContainer Medic);
clearWeaponCargoGlobal (vestContainer Medic);
(vestContainer Medic) addmagazinecargoGlobal ["30Rnd_65x39_caseless_green",6];
Medic forceAddUniform "U_BG_Guerrilla_6_1";
clearItemCargoGlobal (uniformContainer Medic);
clearMagazineCargoGlobal (uniformContainer Medic);
clearWeaponCargoGlobal (uniformContainer Medic);
(uniformContainer Medic) additemcargoGlobal ["ACE_CableTie",1];
(uniformContainer Medic) additemcargoGlobal ["ACE_fieldDressing",5];
(uniformContainer Medic) additemcargoGlobal ["ACE_IR_Strobe_Item",1];
(uniformContainer Medic) additemcargoGlobal ["ACE_EarPlugs",1];
(uniformContainer Medic) additemcargoGlobal ["ACE_tourniquet",1];
Medic addItemToUniform "HandGrenade";
Medic addItemToUniform "SmokeShellGreen";
Medic addItemToUniform "SmokeShellGreen";
Medic addItemToUniform "SmokeShellGreen";
Medic selectWeapon (primaryWeapon Medic);
};
