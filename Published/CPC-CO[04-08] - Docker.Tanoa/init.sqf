// Preprocess de la fonction de random et loadout pour utilisation future
random_fnc = compile preprocessFile "random.sqf";

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
	MCC_GAIA_MAX_SLOW_SPEED_RANGE  = 2500;
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

// Juste au cas où..
if ((!isServer) && (player != player)) then
{
  waitUntil {player == player};
};

player createDiaryRecord ["Diary", 
["Changelog", "- Don de 148 au lieu des 343 trop limitées<br/>- Bugfix des drônes"]];

player createDiaryRecord ["Diary", 
["Environnement", "Il est 05h00, il fait encore nuit mais le jour se lèvera dans l'heure."]];

player createDiaryRecord ["Diary", 
["A propos des Falcon", "Les drônes Falcon sont des hélicoptères autonomes équipés de roquettes DAR et de missiles air-sol filoguidés. Efficaces contre l'infanterie, les véhicules légers et même les blindés, ils peuvent opérer de façon complétement automatique ou directement contrôlés par un opérateur.<br/>N'hésitez pas à vous en servir pour votre défense avant leur destruction.<br/><br/>Conseil d'utilisation :<br/>Les drones ne réagiront aux waypoints que vous leur placerez, il est recommandé de les contrôler directement. Pour ce faire, désactiver leur mode 'autonome' (case à cocher). Positionnez le drône et activez son stabilisateur automatique (auto-hover). Switchez ensuite sur la vue tourelle, visez, et tirez !"]];

player createDiaryRecord ["Diary", 
["Equipement", "Vous êtes équipés de combinaisons furtives indétectables par les dispositifs de vision thermique ainsi que de casques équipés de dispositifs de vision nocturne et thermique. Vos fusils disposent de deux chargeurs, un 6.5mm de 30 coups et un .50 de 10 coups, doté d'une bien meilleure puissance mais non silencieux.<br/>Vous êtes tous dotés d'une 148.<br/>Le chef d'équipe possède un terminal drône."]];

player createDiaryRecord ["Diary", 
["Renseignements", "L'aéroport militaire de La Rochelle est une forteresse trop bien défendue pour votre petite équipe, évitez de vous en approcher. Plusieurs équipes d'infanterie ennemie, véhicules blindés et hélicoptères de transport ont été aperçus sur place.<br/><br/>Le port industriel est actuellement patrouillé par quelques membres de la douane locale, en alerte, à la recherche de clandestins. La livraison est supervisée par une équipe de la CTRG, une division de recherche de l'OTAN possiblement équipée d'uniformes furtifs. Attendez vous à ce que des renforts arrivent de la base aérienne si vous vous faites repérer et laissez le temps aux ennemis d'appeler à l'aide.<br/>Prenez garde aux drônes : ils ne décolleront pas mais leur pod de caméra frontal est réglé pour la surveillance et peut signaler votre position."]];

player createDiaryRecord ["Diary", 
["Mission", "Un chargement de trois drônes d'attaque Falcon de l'OTAN vient d'arriver sur le port industriel de Blue Pearl, et est actuellement en attente de transport vers l'aéroport militaire de La Rochelle. Votre mission consiste à :<br/>1. <marker name='marker_6'>Rejoindre les drônes.</marker><br/>2. Utilisez leur console de maintenance pour les reprogrammer et ainsi vous permettre de les contrôler via le terminal que possède le chef d'équipe.<br/>3. Utilisez-les pour détruire deux VTOL Blackfish actuellement stationnés sur l'aéroport de La Rochelle<br/>4. Pour finir, détruisez les Falcon, par crash ou explosifs<br/><br/>Retournez à votre abri une fois les objectifs accomplis et terminer la mission via le trigger radio 0-0-1."]];

player createDiaryRecord ["Diary", 
["Situation", "L'île de Tanoa est sous protection de l'OTAN dans une guerre entre l'alliance et le CSAT pour le contrôle du Pacifique.<br/>Vous faites partie d'une équipe de sabotage du CSAT infiltrée et actuellement en attente dans une planque au nord-est de l'île."]];

// Lance le script du roster
[0,true,true] execVM "roster.sqf";