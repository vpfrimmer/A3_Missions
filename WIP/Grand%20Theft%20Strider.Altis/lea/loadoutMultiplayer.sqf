/**
* Generated by LEA for Arma 3
* Version: 2.0.24
* Mon Jan 04 13:17:14 CET 2016
* Mission file name: Grand%20Theft%20Strider.Altis
* Mission name: Grand%20Theft%20Strider.Altis
* Required mods:
* + ArmA 3
* 
* Call the script: _dummy = [] execvm "lea\loadoutMultiplayer.sqf";
* 
*/

/**
* Loadout for crates
*/

//No named crates in this mission.

/**
* Loadout for soldiers units
*/

if (!isNil "TL") then {
	if (player == TL) exitwith {
removeallweapons TL;
removeallassigneditems TL;
removeBackpack TL;
removeVest TL;
removeHeadgear TL;
removeUniform TL;
removeGoggles TL;

TL addWeapon "ItemMap";
TL addWeapon "ItemWatch";
TL addWeapon "ItemCompass";
TL addWeapon "H_MilCap_ocamo";
TL addWeapon "G_Tactical_Clear";
TL addWeapon "Binocular";
TL addBackpack "B_TacticalPack_blk";
(backpackContainer TL) addmagazinecargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",1];
TL addWeapon "arifle_Mk20_F";
removeBackpack TL;
TL addPrimaryWeaponItem "optic_ACO_grn";
TL addBackpack "B_TacticalPack_blk";
(backpackContainer TL) addmagazinecargoGlobal ["6Rnd_45ACP_Cylinder",1];
TL addWeapon "hgun_Pistol_heavy_02_F";
removeBackpack TL;
TL addVest "V_TacVestCamo_khk";
clearItemCargoGlobal (vestContainer TL);
clearMagazineCargoGlobal (vestContainer TL);
clearWeaponCargoGlobal (vestContainer TL);
(vestContainer TL) additemcargoGlobal ["FirstAidKit",1];
TL addItemToVest "HandGrenade";
TL addItemToVest "SmokeShell";
TL forceAddUniform "U_BG_Guerilla1_1";
clearItemCargoGlobal (uniformContainer TL);
clearMagazineCargoGlobal (uniformContainer TL);
clearWeaponCargoGlobal (uniformContainer TL);
(uniformContainer TL) addmagazinecargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",2];
(uniformContainer TL) addmagazinecargoGlobal ["6Rnd_45ACP_Cylinder",1];
TL selectWeapon (primaryWeapon TL);
	};
};

if (!isNil "AR") then {
	if (player == AR) exitwith {
removeallweapons AR;
removeallassigneditems AR;
removeBackpack AR;
removeVest AR;
removeHeadgear AR;
removeUniform AR;
removeGoggles AR;

AR addWeapon "ItemMap";
AR addWeapon "ItemWatch";
AR addWeapon "ItemCompass";
AR addWeapon "H_HelmetIA";
AR addWeapon "G_Balaclava_combat";
AR addBackpack "B_TacticalPack_blk";
(backpackContainer AR) addmagazinecargoGlobal ["200Rnd_65x39_cased_Box",1];
AR addWeapon "LMG_Mk200_F";
removeBackpack AR;
AR addPrimaryWeaponItem "optic_Holosight";
AR addVest "V_TacVest_blk";
clearItemCargoGlobal (vestContainer AR);
clearMagazineCargoGlobal (vestContainer AR);
clearWeaponCargoGlobal (vestContainer AR);
(vestContainer AR) additemcargoGlobal ["FirstAidKit",1];
AR addItemToVest "SmokeShellOrange";
AR addItemToVest "SmokeShellGreen";
AR forceAddUniform "U_BG_Guerilla2_3";
clearItemCargoGlobal (uniformContainer AR);
clearMagazineCargoGlobal (uniformContainer AR);
clearWeaponCargoGlobal (uniformContainer AR);
AR addItemToUniform "HandGrenade";
AR selectWeapon (primaryWeapon AR);
	};
};

if (!isNil "GR") then {
	if (player == GR) exitwith {
removeallweapons GR;
removeallassigneditems GR;
removeBackpack GR;
removeVest GR;
removeHeadgear GR;
removeUniform GR;
removeGoggles GR;

GR addWeapon "ItemMap";
GR addWeapon "ItemWatch";
GR addWeapon "ItemCompass";
GR addWeapon "H_HelmetB";
GR addWeapon "G_Aviator";
GR addBackpack "B_TacticalPack_blk";
(backpackContainer GR) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",1];
GR addWeapon "arifle_Mk20_GL_plain_F";
removeBackpack GR;
GR addPrimaryWeaponItem "optic_Aco";
GR addVest "V_HarnessOGL_brn";
clearItemCargoGlobal (vestContainer GR);
clearMagazineCargoGlobal (vestContainer GR);
clearWeaponCargoGlobal (vestContainer GR);
(vestContainer GR) addmagazinecargoGlobal ["1Rnd_HE_Grenade_shell",8];
(vestContainer GR) addmagazinecargoGlobal ["9Rnd_45ACP_Mag",1];
(vestContainer GR) addmagazinecargoGlobal ["1Rnd_SmokeRed_Grenade_shell",2];
GR addItemToVest "HandGrenade";
GR addItemToVest "SmokeShell";
GR forceAddUniform "U_BG_Guerrilla_6_1";
clearItemCargoGlobal (uniformContainer GR);
clearMagazineCargoGlobal (uniformContainer GR);
clearWeaponCargoGlobal (uniformContainer GR);
(uniformContainer GR) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",3];
GR selectWeapon (primaryWeapon GR);
	};
};

if (!isNil "AT") then {
	if (player == AT) exitwith {
removeallweapons AT;
removeallassigneditems AT;
removeBackpack AT;
removeVest AT;
removeHeadgear AT;
removeUniform AT;
removeGoggles AT;

AT addWeapon "ItemMap";
AT addWeapon "ItemWatch";
AT addWeapon "ItemCompass";
AT addWeapon "H_Watchcap_blk";
AT addWeapon "G_Bandanna_aviator";
AT addBackpack "B_TacticalPack_blk";
(backpackContainer AT) addmagazinecargoGlobal ["30Rnd_9x21_Mag",1];
AT addWeapon "SMG_02_F";
removeBackpack AT;
AT addPrimaryWeaponItem "optic_ACO_grn_smg";
AT addBackpack "B_TacticalPack_blk";
(backpackContainer AT) addmagazinecargoGlobal ["RPG32_F",1];
AT addWeapon "launch_RPG32_F";
removeBackpack AT;
AT addBackpack "B_Kitbag_cbr";
clearItemCargoGlobal (backpackContainer AT);
clearMagazineCargoGlobal (backpackContainer AT);
clearWeaponCargoGlobal (backpackContainer AT);
(backpackContainer AT) addmagazinecargoGlobal ["RPG32_HE_F",1];
(backpackContainer AT) addmagazinecargoGlobal ["RPG32_F",1];
AT addVest "V_Chestrig_blk";
clearItemCargoGlobal (vestContainer AT);
clearMagazineCargoGlobal (vestContainer AT);
clearWeaponCargoGlobal (vestContainer AT);
(vestContainer AT) additemcargoGlobal ["FirstAidKit",1];
AT addItemToVest "HandGrenade";
AT addItemToVest "SmokeShell";
AT addItemToVest "SmokeShell";
AT forceAddUniform "U_BG_Guerilla2_3";
clearItemCargoGlobal (uniformContainer AT);
clearMagazineCargoGlobal (uniformContainer AT);
clearWeaponCargoGlobal (uniformContainer AT);
(uniformContainer AT) addmagazinecargoGlobal ["30Rnd_9x21_Mag",3];
AT selectWeapon (primaryWeapon AT);
	};
};

if (!isNil "ME") then {
	if (player == ME) exitwith {
removeallweapons ME;
removeallassigneditems ME;
removeBackpack ME;
removeVest ME;
removeHeadgear ME;
removeUniform ME;
removeGoggles ME;

ME addWeapon "ItemMap";
ME addWeapon "ItemWatch";
ME addWeapon "ItemCompass";
ME addWeapon "H_Cap_oli_hs";
ME addWeapon "G_Lady_Dark";
ME addWeapon "Binocular";
ME addBackpack "B_TacticalPack_blk";
(backpackContainer ME) addmagazinecargoGlobal ["30Rnd_556x45_Stanag_Tracer_Red",1];
ME addWeapon "arifle_Mk20_F";
removeBackpack ME;
ME addBackpack "B_FieldPack_blk";
clearItemCargoGlobal (backpackContainer ME);
clearMagazineCargoGlobal (backpackContainer ME);
clearWeaponCargoGlobal (backpackContainer ME);
(backpackContainer ME) additemcargoGlobal ["Medikit",2];
(backpackContainer ME) additemcargoGlobal ["FirstAidKit",5];
ME addVest "V_TacVestIR_blk";
clearItemCargoGlobal (vestContainer ME);
clearMagazineCargoGlobal (vestContainer ME);
clearWeaponCargoGlobal (vestContainer ME);
(vestContainer ME) additemcargoGlobal ["FirstAidKit",5];
ME addItemToVest "SmokeShellRed";
ME addItemToVest "SmokeShellOrange";
ME addItemToVest "SmokeShellGreen";
ME addItemToVest "SmokeShellPurple";
ME addItemToVest "SmokeShellBlue";
ME forceAddUniform "U_BG_Guerilla2_3";
clearItemCargoGlobal (uniformContainer ME);
clearMagazineCargoGlobal (uniformContainer ME);
clearWeaponCargoGlobal (uniformContainer ME);
(uniformContainer ME) addmagazinecargoGlobal ["30Rnd_556x45_Stanag",2];
ME selectWeapon (primaryWeapon ME);
	};
};

if (!isNil "RIL") then {
	if (player == RIL) exitwith {
removeallweapons RIL;
removeallassigneditems RIL;
removeBackpack RIL;
removeVest RIL;
removeHeadgear RIL;
removeGoggles RIL;

RIL addWeapon "ItemMap";
RIL addWeapon "ItemWatch";
RIL addWeapon "ItemCompass";
RIL addBackpack "B_TacticalPack_blk";
(backpackContainer RIL) addmagazinecargoGlobal ["11Rnd_45ACP_Mag",1];
RIL addWeapon "hgun_Pistol_heavy_01_F";
removeBackpack RIL;
RIL addHandgunItem "optic_MRD";
RIL addVest "V_TacVestCamo_khk";
clearItemCargoGlobal (vestContainer RIL);
clearMagazineCargoGlobal (vestContainer RIL);
clearWeaponCargoGlobal (vestContainer RIL);
(vestContainer RIL) additemcargoGlobal ["FirstAidKit",1];
RIL addItemToVest "HandGrenade";
RIL addItemToVest "SmokeShellBlue";
clearItemCargoGlobal (uniformContainer RIL);
clearMagazineCargoGlobal (uniformContainer RIL);
clearWeaponCargoGlobal (uniformContainer RIL);
(uniformContainer RIL) addmagazinecargoGlobal ["11Rnd_45ACP_Mag",4];
if (count weapons RIL > 0) then {
  private['_type', '_muzzles'];
  _type = ((weapons RIL) select 0);
  _muzzles = getArray(configFile >>"cfgWeapons">> _type >>"muzzles");
  if (count _muzzles > 1) then {
     RIL selectWeapon (_muzzles select 0);
  }
  else {
     RIL selectWeapon _type;
  };
};
	};
};

if (!isNil "RIL_1") then {
	if (player == RIL_1) exitwith {
removeallweapons RIL_1;
removeallassigneditems RIL_1;
removeBackpack RIL_1;
removeVest RIL_1;
removeHeadgear RIL_1;
removeGoggles RIL_1;

RIL_1 addWeapon "ItemMap";
RIL_1 addWeapon "ItemWatch";
RIL_1 addWeapon "ItemCompass";
RIL_1 addWeapon "H_Bandanna_khk";
RIL_1 addBackpack "B_TacticalPack_blk";
(backpackContainer RIL_1) addmagazinecargoGlobal ["30Rnd_9x21_Mag",1];
RIL_1 addWeapon "SMG_02_F";
removeBackpack RIL_1;
RIL_1 addVest "V_BandollierB_blk";
clearItemCargoGlobal (vestContainer RIL_1);
clearMagazineCargoGlobal (vestContainer RIL_1);
clearWeaponCargoGlobal (vestContainer RIL_1);
(vestContainer RIL_1) additemcargoGlobal ["FirstAidKit",1];
RIL_1 addItemToVest "APERSMine_Range_Mag";
clearItemCargoGlobal (uniformContainer RIL_1);
clearMagazineCargoGlobal (uniformContainer RIL_1);
clearWeaponCargoGlobal (uniformContainer RIL_1);
(uniformContainer RIL_1) addmagazinecargoGlobal ["30Rnd_9x21_Mag",3];
RIL_1 selectWeapon (primaryWeapon RIL_1);
	};
};

if (!isNil "RIL_2") then {
	if (player == RIL_2) exitwith {
removeallweapons RIL_2;
removeallassigneditems RIL_2;
removeBackpack RIL_2;
removeVest RIL_2;
removeHeadgear RIL_2;
removeGoggles RIL_2;

RIL_2 addWeapon "ItemMap";
RIL_2 addWeapon "ItemWatch";
RIL_2 addWeapon "ItemCompass";
RIL_2 addWeapon "G_Balaclava_oli";
RIL_2 addBackpack "B_TacticalPack_blk";
(backpackContainer RIL_2) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01_Tracer_Green",1];
RIL_2 addWeapon "SMG_01_F";
removeBackpack RIL_2;
RIL_2 addPrimaryWeaponItem "optic_Holosight_smg";
RIL_2 addVest "V_Rangemaster_belt";
clearItemCargoGlobal (vestContainer RIL_2);
clearMagazineCargoGlobal (vestContainer RIL_2);
clearWeaponCargoGlobal (vestContainer RIL_2);
(vestContainer RIL_2) additemcargoGlobal ["FirstAidKit",1];
clearItemCargoGlobal (uniformContainer RIL_2);
clearMagazineCargoGlobal (uniformContainer RIL_2);
clearWeaponCargoGlobal (uniformContainer RIL_2);
(uniformContainer RIL_2) addmagazinecargoGlobal ["30Rnd_45ACP_Mag_SMG_01",2];
RIL_2 selectWeapon (primaryWeapon RIL_2);
	};
};

