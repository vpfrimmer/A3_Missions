// GAIA ----------------------------------------------------------------------------------
// Chang the following numbers to your liking
if (isServer ) then 
{
	// From what range away from closest player should units be cached (in meters or what every metric system arma uses)?
	// To test this set it to 20 meters. Then make sure you get that close and move away. 
	// You will notice 2 levels of caching 1 all but leader, 2 completely away
	// Stage 2 is 2 x GAIA_CACHE_STAGE_1. So default 2000, namely 2 x 1000
	GAIA_CACHE_STAGE_1				= 2000;
	// The follow 3 influence how close troops should be to known conflict to be used. (so they wont travel all the map to support)
	// How far should footmobiles be called in to support attacks.
	// This is also the range that is used by the transport system. If futher then the below setting from a zone, they can get transport.
	MCC_GAIA_MAX_SLOW_SPEED_RANGE  = 300;
	// How far should vehicles be called in to support attacks. (including boats)
	MCC_GAIA_MAX_MEDIUM_SPEED_RANGE= 5000;
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

//=================== BRIEFING

player createDiaryRecord ["Diary", 
["Environnement", "Il est 14h00 et ça aurait été un sacré bon temps pour chasser le sanglier s'il n'y avait pas eu cette foutue guerre."]];

player createDiaryRecord ["Diary", 
["Equipement", "Vous ne disposez que de peu d'équipement sur vous : Le FN FAL de Salvadore, le vieux lance-grenades de Papi Micheli, deux fusils de chasse, deux sacs à dos..</br>Petru a planqué quelques pistolets et deux petites radios dans sa voiture de location, pensez à les récupérer.</br>Le quad de Pasquale est en état de marche, mais la voiture est en panne."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Battistu a beau avoir un oeil qui fait les chaussons aux oignons et l'autre qui les porte au four, il a quand même pu repérer que les rebelles ont établi <marker name='marker_5'>un petit stock de matériel dans une usine désaffectée au sud</marker>, à l'écart des combats. Il y a peut être là bas du matériel qui pourrait nous permettre de mieux nous défendre.</br></br>Des bruits de tir et d'explosion peuvent être entendus venant de la ville de Agios Konstantinos.</br></br>Il est peu probable que les soldats d'en face, quelque soit leur faction, prennent le temps d'identifier leur cible. Considérez-les tous comme hostiles."]];

player createDiaryRecord ["Diary", 
["Mission", "Votre objectif est de retrouver <marker name='marker_2'>le bateau de Papi Micheli</marker>, ancré au port de Agios Konstantinos, et de l'utiliser pour partir à l'Ouest, vers la Corse.</br>NB : C'est Papi Micheli qui possède les clés du bateau. Attention de ne pas les perdre.</br></br>Une fois de retour en Corse, une bise à Madame puis l'apéro !"]];

player createDiaryRecord ["Diary", 
["Situation", "Les premiers rayons de soleil du mois d'Avril.</br>La famille Castelli décide de profiter du bateau de Papi Micheli pour quitter la Corse le temps d'un week end et passer une semaine à chasser sur <marker name='marker_4'>leur terrain de l'île d'Altis</marker>. L'occasion aussi de faire le point sur l'affaire familiale.</br></br>Après le repas de midi, l'oncle Salvadore, bien connu pour son côté dépensier, sort de son sac sa dernière trouvaille du marché noir belge : un FN FAL beau comme un faisan. C'est à ce moment que Lurenzu, le jeune étudiant en médecine de la famille, entre avec fracas dans la maison accompagné de Battistu, son fusil de chasse sur l'épaule, et annonce la nouvelle : L'île est attaquée par des rebelles, et l'armée en place, désorganisée, se fait repousser.</br></br>L'oncle Salvadore, pas déstabilisé pour un sou, se lève d'un seul coup et s'écrie : 'Ché ! On va pas se monter la sègue, c'est le moment de partir !'"]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";