reinforcements = false;

[] execVM "T8_missionEXEC.sqf";

_null = [] spawn 
{
	while {!reinforcements} do
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
		
		sleep 30;
	};		
};

[str("Shapurville") , str(date select 1) + "." + str(date select 2) + "." + str(date select 0), str("Shapur")] spawn BIS_fnc_infoText;

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Photos du camp", "Vue du dessus<br/><img image='pic1.jpg' width = '400' height = '800'/><br/<br/>Façade Est<br/><img image='pic2.jpg' width='400' height = '800'/>"]];

player createDiaryRecord ["Diary", 
["Environnement", "Il est 10h, le ciel est beau. Rien à signaler."]];

player createDiaryRecord ["Diary", 
["Equipement", "Les chefs d'équipe disposent d'une 148, il n'y a pas de 343.<br/><br/>Au milieu de la base sont garés un BTR-70, un Ural et un UAZ non armé.<br/><br/>A coté de ces véhicules se trouvent deux M2 Browning (tripod bas), un 9K133 Kornet (lance-missile similaire au Metis) et un mortier.<br/>Les deux batiments à l'entrée de la base possèdent chacun un toit qui pourrait accueillir des postes fixes, mais cette décision est à votre discrétion.<br/><br/>Votre UAZ contient une rangetable pour mortier + une dizaine de mines à fil."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Les milices sont équipées d'AK et de RPG-7. Elles circulent parfois en technical.<br/>Elles peuvent venir de partout. Vous avez un peu plus d'une minute avant que les premiers hommes n'arrivent en vue de la base.<br/><br/>Si la situation devient catastrophique, l'officier a la possibilité de déclarer défaite et de se rendre, lui et son équipe (trigger radio accessible à n'importe qui, effet sur tout le monde)."]];

player createDiaryRecord ["Diary", 
["Mission", "Nous avons appris que les habitants de Shapur viennent de s'armer. La seule déduction logique est qu'ils vont tenter de profiter de notre faible nombre pour nous déloger.<br/><br/>Vous devez à tout pris garder le contrôle de la base.<br/><br/>Nous avons envoyé un message radio aux restes des troupes partis en opération, mais n'avons pas reçu de réponse. Il n'y a plus qu'à espérer qu'ils viennent nous renforcer rapidement.<br/>En attendant, vous avez l'autorisation d'engager toute cible hostile présentant une menace pour la base."]];

player createDiaryRecord ["Diary", 
["Situation", "Shapur, 3 Août 2002<br/>La province de Shapur est en guerre civile. Des milices affrontent régulièrement le gouvernement local et demande la sécession du reste du pays.<br/><br/>Vous faites partie d'un groupe serbe de l'ONU envoyé pour prévenir d'éventuels crimes de guerre, mais depuis votre arrivée la population locale n'a montré que de l'hostilité à votre égard.<br/>Hier soir, une grande partie de vos soldats sont partis sur les lieux d'une attaque à quelques dizaines de kilomètres de la ville. Vos effectifs sont drastiquement réduits, alors qu'une mauvaise nouvelle arrive.."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";