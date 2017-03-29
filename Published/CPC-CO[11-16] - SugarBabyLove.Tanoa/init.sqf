// Preprocess de la fonction de random et loadout pour utilisation future
random_fnc = compile preprocessFile "random.sqf";

"mrkCache" setMarkerAlpha 0;

boardFound = 0;
laptopHacked = 0;
hostagesSaved = 0;
vehicleDestroyed = 0;

// GAIA

// Chang the following numbers to your liking
if (isServer ) then 
{
	// From what range away from closest player should units be cached (in meters or what every metric system arma uses)?
	// To test this set it to 20 meters. Then make sure you get that close and move away. 
	// You will notice 2 levels of caching 1 all but leader, 2 completely away
	// Stage 2 is 2 x GAIA_CACHE_STAGE_1. So default 2000, namely 2 x 1000
	GAIA_CACHE_STAGE_1				= $000;
	// The follow 3 influence how close troops should be to known conflict to be used. (so they wont travel all the map to support)
	// How far should footmobiles be called in to support attacks.
	// This is also the range that is used by the transport system. If futher then the below setting from a zone, they can get transport.
	MCC_GAIA_MAX_SLOW_SPEED_RANGE  = 600;
	// How far should vehicles be called in to support attacks. (including boats)
	MCC_GAIA_MAX_MEDIUM_SPEED_RANGE= 4500;
	// How far should air units be called in to support attacks.
	MCC_GAIA_MAX_FAST_SPEED_RANGE  = 80000;
	// How logn should mortars and artillery wait (in seconds) between fire support missions.
	MCC_GAIA_MORTAR_TIMEOUT				 = 300;
	// DANGEROUS SETTING!!!
	// If set to TRUE gaia will even send units that she does NOT control into attacks. Be aware ONLy for attacks.
	// They will not suddenly patrol if set to true. 
	MCC_GAIA_ATTACKS_FOR_NONGAIA	 = false;
	
	// If set to false, ai will not use smoke and flares (during night)
	MCC_GAIA_AMBIANT							 = true;
	
	// Influence how high the chance is (when applicaple) that units do smokes and flare (so not robotic style)
	// Default is 20 that is a chance of 1 out of 20 when they are applicable to use smokes and flares
	MCC_GAIA_AMBIANT_CHANCE				 = 20;
	// The seconds of rest a transporter takes after STARTING his last order
	MCC_GAIA_TRANSPORT_RESTTIME		= 40;

};


// We set the markers invisible (if you use more then 100 markers, then increase). Or delete if you want them visible
for "_x" from 1 to 100 do
{
	format ["%1",_x] setMarkerAlpha 0;
};


//DO NOT CHANGE FROM BELOW (You can, but you will be out of support :P )

//----------------------gaia------------------------------------------------------
if (isserver) then {call compile preprocessfile "gaia\gaia_init.sqf";};


//===============Delete Groups ====================
if (isServer ) then 
{
	[] spawn 
	{
		_gaia_respawn = [];
		while {true} do
		{
			//player globalchat "Deleting started..............";
			
			{
				_gaia_respawn = (missionNamespace getVariable [ "GAIA_RESPAWN_" + str(_x),[] ]);
				//Store ALL original group setups
				if (count(_gaia_respawn)==0) then {[(_x)] call fn_cache_original_group;};
				
				if ((({alive _x} count units _x) == 0) ) then 
				{
					//Before we send him to heaven check if he should be reincarnated
					if (count(_gaia_respawn)==2) then {	[_gaia_respawn,(_x getVariable  ["MCC_GAIA_RESPAWN",-1]),(_x getVariable  ["MCC_GAIA_CACHE",false]),(_x getVariable  ["GAIA_zone_intend",[]])] call fn_uncache_original_group;};					
					
					//Remove the respawn group content before the group is re-used
					missionNamespace setVariable ["GAIA_RESPAWN_" + str(_x), nil];
					
					deleteGroup _x;
				};
				
				sleep .1;
				
			} foreach allGroups;			
			
			sleep 2; 
		};
	};
};

// Code for convoy defend script
_wpArray = [];

for "_i" from 1 to 18 do {
	_wpArray pushBack format["convoy_wp_%1", _i];
};

if (isServer) then {
	//[_wpArray,[c1,c2,c3],true] execVM "convoyDefend\convoyDefend_init.sqf";
};

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Environnement", "Il est 08h00, le temps est clair et la visibilité est très bonne."]];


player createDiaryRecord ["Diary", 
["Insertion et extraction", "Le commandant et l'équipage du Blackfish sont tous les quatre insérés sur la piste de la base de Tuvanaka. Le Blackfish et son équipage y rentreront lors de la fin de mission.<br/>L'équipe de la gendarmerie est insérée à côté de leur bâtiment dans la ville de Georgetown, elle y rentrera une fois la mission terminée.<br/>L'équipe du CTRG est insérée avec ses véhicules près de Lifou et devra se rendre sur la gendarmerie lors de la fin de la mission.<br/><br/>Note de détail : Bien que le commandant démarre la mission avec l'équipage du Blackfish, il peut très bien choisir de se faire déposer ou parachuter à tout moment avec une autre équipe de son choix."]];

player createDiaryRecord ["Diary", 
["A propos du Blackfish", "Le VTOL Blackfish mis à disposition par l'OTAN pour cette opération a été configuré en mode canonnière.<br/>Il peut embarquer quatre personnes dans son poste de pilotage : <br/>- un pilote<br/>- un copilote pouvant manoeuvrer un pod de caméra situé à l'avant de l'appareil<br/>- un canonnier chargé de manoeuvrer une tourelle tirant des projectiles de 50mm explosifs (72) ou pénétrants (48) <br>- un deuxième canonnier chargé de manoeuvrer un howitzer tirant des obus de 105mm (30) ou une tourelle tirant des projectiles explosifs de 20mm (1200).<br/><br/>Utilisation suggérée (mais non obligatoire) : Vol en haute altitude(800 à 1000 mètres), reconnaissance et support aérien lorsque nécessaire ou plus efficace. Transport du commandement.<br/><br/>Tout l'armement est situé sur la gauche de l'appareil.<br/>Deux camions de ravitaillement en fuel sont disponibles à côté de l'appareil, attention aux réservoirs qui diminuent plus rapidement qu'il n'y paraît."]];

player createDiaryRecord ["Diary", 
["Equipement", "Trois équipes distinctes sont engagées sur cette opération : <br/>- Une équipe du CTRG disposant de deux véhicules légers Prowler dont un équipé d'une tourelle calibre .50 et d'une .338 avant<br/>- Une équipe de la gendarmerie locale disposant de deux véhicules de service<br/>- Un V-44 Blackfish (mode canonnière) et son équipage.<br/><br/>Les véhicules des équipes terrestres sont fournies en munitions et divers équipements (un fusil de marksman pour la gendarmerie, et une paire de lunettes de vision nocture pour les CTRG entre autres choses). Le Blackfish contient plusieurs parachutes, toolkits et casques de pilotage.<br/><br/>Les chefs de chaque équipe ainsi que le commandant possèdent chacun une radio 117. Tous les membres de l'équipe de la CTRG possèdent une 343. La gendarmerie possède deux 343, chacune dans un véhicule."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Les hommes du Syndikat vont du simple gangster aux vétérans aguerris. Ils sont pour la plupart équipés de variantes d'AK-47 et parfois de RPG-7.<br/>Ils se déplacent en véhicules légers et possédent quelques technicals.<br/><br/>La zone de l'usine est complétement sous leur contrôle. Attendez vous à une forte présence ennemie.<br/>Nous ne savons rien sur la zone de livraison.<br/><br/>Il n'est pas rare de voir de petites équipes du Syndikat patrouiller leurs zones d'influence sur l'île (marquées par des zones rouges sur carte). Ils ne disposent pas de moyens anti-aériens."]];

player createDiaryRecord ["Diary", 
["Mission", "Vous devez vous rendre sur l'usine de sucre proche de Tanouka, servant actuellement de stockage d'armes pour le Syndikat.<br/>Nous savons qu'un camion partira vers 08h20 de l'usine pour une destination inconnue.<br/><br/>Votre mission se compose de deux objectifs principaux : <br/>1. Sécurisez l'usine de sucre après le départ du camion et y détruire n'importe quel stock d'armement trouvé.<br/>2. Suivre sans vous faire repérer le camion par le moyen de votre choix jusqu'à sa destination<br/>3. Prendre d'assaut cette destination, sécurisez les lieux, et enquêtez.<br/><br/>Nous suspectons le Syndikat d'aider le CSAT à planifier une attaque de l'île. En cas de doute sur la présence de troupes ennemies sur l'île, vous êtes libres d'étendre votre zone d'opération, engager toute menace, et détruire tout matériel ennemi.<br/>Si le CSAT est déjà présent, il ne faut pas patienter pour l'éliminer.<br/><br/>La mission peut être terminée via un trigger radio et sa réussite laissée à l'appréciation du commandant."]];

player createDiaryRecord ["Diary", 
["Situation", "L'île de Tanoa est sous protection de l'OTAN dans une guerre entre l'alliance et le CSAT pour le contrôle du Pacifique. Des enlèvements suspects de fonctionnaires locaux et le passage de plusieurs camions de transport d'armes dans la zone ont alimenté des rumeurs de collaboration entre le cartel local Syndikat et le CSAT, même si aucune présence ennemie dans l'archipel n'a pu être confirmée.<br/><br/>Sugar Baby Love est une opération conjointe sous commandement de l'OTAN, entre les forces de gendarmerie locales et une équipe de la CTRG pour démanteler le réseau de distribution d'armes du Syndikat et enquêter sur de possibles relations avec le CSAT."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";