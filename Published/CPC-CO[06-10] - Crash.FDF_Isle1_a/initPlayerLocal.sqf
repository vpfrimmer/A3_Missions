removeAllWeapons player;
removeAllItems player;
removeAllAssignedItems player;

player linkItem "ItemCompass";
player linkItem "ItemWatch";

player addItem "ACE_EarPlugs";
player addItem "ACRE_PRC343";
player addItem "ACE_tourniquet";
for "_i" from 1 to 5 do {player addItem "ACE_fieldDressing";};

if(isNil "tl") then { tl = 0; };
if(isNil "mg") then { mg = 0; };
if(isNil "at") then { at = 0; };
if(isNil "medic") then { medic = 0; };
if(isNil "heliD") then { heliD = 0; };
if(isNil "soldier1") then { soldier1 = 0; };
if(isNil "soldier2") then { soldier2 = 0; };
if(isNil "soldier_l1") then { soldier_l1 = 0; };
if(isNil "soldier_l2") then { soldier_l2 = 0; };
if(isNil "gl") then { gl = 0; };

//TL
if(player in [tl]) then 
{
	for "_i" from 1 to 5 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	player addItemToVest "rhs_mag_nspn_green";
	player addItemToVest "rhs_mag_nspn_yellow";
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rdg2_white";};
	player addItemToVest "rhs_mag_rgd5";
	player addWeapon "rhs_weap_ak74m_fullplum";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addWeapon "rhs_weap_rsp30_green";
	player addWeapon "Binocular";
};

//MG
if(player in [mg]) then 
{
	for "_i" from 1 to 3 do {player addItemToBackpack "rhs_100Rnd_762x54mmR";};
	player addWeapon "rhs_weap_pkm";
};

//AT
if(player in [at]) then
{
	player addWeapon "rhs_pdu4";
	for "_i" from 1 to 3 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {player addItemToBackpack "rhs_rpg7_PG7VL_mag";};
	player addItemToBackpack "rhs_rpg7_OG7V_mag";
	player addItemToBackpack "rhs_rpg7_PG7VL_mag";
	player addWeapon "rhs_weap_ak74m_fullplum";
	player addPrimaryWeaponItem "rhs_acc_dtk";
	player addWeapon "rhs_weap_rpg7";
	player addSecondaryWeaponItem "rhs_acc_pgo7v";
};

//GL
if(player in [gl]) then
{
	for "_i" from 1 to 3 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 5 do {player addItemToVest "rhs_VOG25";};
	player addWeapon "rhs_weap_ak74m_fullplum_gp25";
	player addPrimaryWeaponItem "rhs_acc_dtk";
};

//MEDIC
if(player in [medic]) then
{
	player addItemToBackpack "ACE_personalAidKit";
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_fieldDressing";};
	for "_i" from 1 to 20 do {player addItemToBackpack "ACE_packingBandage";};
	for "_i" from 1 to 15 do {player addItemToBackpack "ACE_elasticBandage";};
	for "_i" from 1 to 10 do {player addItemToBackpack "ACE_quikclot";};
	for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV_250";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_salineIV_500";};
	for "_i" from 1 to 2 do {player addItemToBackpack "ACE_salineIV";};
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_morphine";};
	for "_i" from 1 to 8 do {player addItemToBackpack "ACE_epinephrine";};
	for "_i" from 1 to 4 do {player addItemToBackpack "ACE_tourniquet";};
   
	for "_i" from 1 to 3 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	player addItemToVest "rhs_mag_nspn_yellow";
	player addWeapon "rhs_weap_aks74u";
	player addPrimaryWeaponItem "rhs_acc_pgs64_74u";
};

//PILOT
if(player in [heliD]) then
{
	removeVest player;
	for "_i" from 1 to 3 do {player addItemToUniform "rhsusf_mag_17Rnd_9x19_FMJ";};
	player addVest "rhs_vest_pistol_holster";
	player addWeapon "rhsusf_weap_glock17g4";
};

//RIFLEMEN
if(player in [soldier1, soldier2]) then
{
	for "_i" from 1 to 3 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	for "_i" from 1 to 2 do {player addItemToVest "rhs_mag_rgd5";};
	player addHeadgear "rhsgref_ssh68_un";
	player addWeapon "rhs_weap_ak74m_fullplum";
	player addPrimaryWeaponItem "rhs_acc_dtk";
};

//RIFLEMEN LIGHT
if(player in [soldier_l1, soldier_l2]) then
{
	for "_i" from 1 to 2 do {player addItemToVest "rhs_30Rnd_545x39_7N10_AK";};
	player addWeapon "rhs_weap_aks74u";
	player addPrimaryWeaponItem "rhs_acc_pgs64_74u";
};

[] execVM "inventory_briefing.sqf"; // lancement du script qui affiche le loadout lors du briefing.