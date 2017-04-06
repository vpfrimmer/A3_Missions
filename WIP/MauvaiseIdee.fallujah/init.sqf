[] execVM "T8_missionEXEC.sqf";

_null = [] spawn 
{
	while {time < 120} do
	{
		{
			if(side _x == EAST) then {
			
				if(secondaryWeapon _x == "CUP_launch_RPG7V") then 
				{
					removeBackpack _x;
					_x removeWeapon "CUP_launch_RPG7V";
					_x addWeapon "rhs_weap_rpg7";
					_x addBackpack "CUP_B_RPGPack_Khaki";
					for "_i" from 1 to 5 do {_x addItemToBackpack "rhs_rpg7_PG7VL_mag";};
			};
				};	
		} forEach allUnits;
		
		sleep 20;
	};		
};

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 12h, le ciel est beau. Rien à signaler dans les prochaines heures."]];

player createDiaryRecord ["Diary", 
["Equipement", "Vous disposez de 3 véhicules :<br/>- Un M1 Abrams équipé pour le combat urbain. Le tireur dispose d'une coaxiale de 7.62mm ainsi que d'un calibre .50 au dessus du canon, le commandant dispose d'une tourelle de calibre .50, et le loader dispose d'une tourelle de 7.62mm sur le toit (une fois sorti).<br/>- Un Bradley (6 places passagers) équipé pour le combat urbain (canon de 25mm + missiles TOW) et abritant un lance-missile Javelin ainsi que diverses munitions et équipement médical.<br/>- Un Humvee ouvert (6 places)<br/><br/>Chacun des véhicules contient un GPS et une radio 148.<br/>Tout le monde dispose d'une 343."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Fallujah est aux mains de milices locales, armées d'AK et de RPG-7, pas ou peu motorisée. Toute personne armée se trouvant dans la zone d'opération est à considérer comme hostile. Méfiez-vous des toits et des angles de rue. Attention aux embuscades.<br/><br/>Des barricades ont été repérées dans la ville, attendez vous à ce que certaines rues soient obstruées.<br/><br/>Les miliciens sont habitués au combat de rue, un repli ne suffit pas forcément qu'ils abandonnent, mais plus logiquement qu'ils consolident leur force pour une nouvelle attaque."]];

player createDiaryRecord ["Diary", 
["Insertion et groupes", "Vous êtes insérés à hauteur du pont proche de l'hopital et marquant le point d'entrée dans la ville.<br/><br/>Votre groupement est constitué d'une équipe de commandement, d'un équipage de M1 Abrams, d'un équipage de Bradley et d'une équipe de Delta."]];

player createDiaryRecord ["Diary", 
["Mission", "Il y a quelques minutes, un hélicoptère médical s'est écrasé à quelques centaines de mètre de votre position après avoir subi un tir de roquette. Cet hélicoptère transportait deux pilotes et un officier américain. D'après leur dernière communication, ils étaient en vie, bien que blessés.<br/>Vous êtes les seuls éléments disponibles, et nos troupes les plus proches du site du crash, c'est donc à vous que revient la mission d'aller sauver ces hommes.<br/><br/>Une fois récupérés, ramenez-les à l'hopital."]];

player createDiaryRecord ["Diary", 
["Situation", "Irak, 16 Juin 2007<br/>La province d'Al-Anbâr et sa ville Fallujah sont dans la tourmente. Depuis la guerre contre la coalition, le pays ne s'est toujours pas stabilisé politiquement et de nombreuses milices s'affrontent.<br/>Vous faites partie d'un petit groupement américain actuellement affecté à la sécurité d'un hopital aux abords de la ville."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";