uniformCrate removeAction 0;

bUniformChanged = "true";
titleText ["Changement d'uniforme ...", "BLACK FADED"];	// Black Screen

_uniformContentMags = getMagazineCargo uniformContainer player;
_uniformContentItems = getItemCargo uniformContainer player;
_vestContentMags = getMagazineCargo vestContainer player;
_vestContentItems = getitemCargo vestContainer player;

player forceAddUniform "U_B_CombatUniform_mcam";
player addVest "V_PlateCarrier1_rgr";
removeHeadgear player;
player addWeapon "H_HelmetB";

// On redonne ses items et ammo à l'uniform
for "_i" from 0 to (count (_uniformContentMags select 0) - 1) do
{
	(uniformContainer player) addMagazineCargoGlobal [(_uniformContentMags select 0) select _i, (_uniformContentMags select 1) select _i];
};

for "_i" from 0 to (count (_uniformContentItems select 0) - 1) do
{
	(uniformContainer player) addItemCargoGlobal [(_uniformContentItems select 0) select _i, (_uniformContentItems select 1) select _i];
};
// Et on fait la même chose avec la veste
for "_i" from 0 to (count (_vestContentMags select 0) - 1) do
{
	(vestContainer player) addMagazineCargoGlobal [(_vestContentMags select 0) select _i, (_vestContentMags select 1) select _i];
};

for "_i" from 0 to (count (_vestContentItems select 0) - 1) do
{
	(vestContainer player) addItemCargoGlobal [(_vestContentItems select 0) select _i, (_vestContentItems select 1) select _i];
};

_group = createGroup west;
[player] joinSilent _group;
player addEventHandler ["fired",{if(WEST knowsAbout (_this select 0) > 0) then {_groupInd = createGroup east;[(_this select 0)] joinSilent _groupInd; hint "Repéré!";};}];

sleep 0.5;
titleText [" ", "BLACK IN"];	// delete Black Screen