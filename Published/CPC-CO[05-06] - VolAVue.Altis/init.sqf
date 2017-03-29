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
	MCC_GAIA_MAX_SLOW_SPEED_RANGE  = 1000;
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
["Environnement", "Il est 06h50, le jour se lève. D'après les rapports météo, la matinée sera très brumeuse et froide."]];

player createDiaryRecord ["Diary", 
["Equipement et supports", "Vous ne disposez pas d'équipement spécial pour cette mission."]];

player createDiaryRecord ["Diary", 
["Exécution", "1. Rendez-vous sur la piste<br/><br/>2a. Enfuyez-vous avec le C-130.<br/>3a. Atterissez sur l'aéroport central et amenez le à l'endroit désigné.<br/>ou<br/>2b. Trouvez un moyen de détruire le C-130.<br/>3b. Retournez sur votre point d'insertion. Une équipe en canot viendra vous chercher dans la soirée.<br/><br/>N'importe qui peut stopper la mission via un trigger radio (0-0-8). Victoire ou défaite seront définies à ce moment en fonction de l'état des tâches."]];

player createDiaryRecord ["Diary", 
["Renseignements", "- Nous n'avons pas de détails concernant les forces ennemies sur place. Attendez vous à ce que des patrouilles soient présentes.<br/>- Il y a bien longtemps que l'OTAN ne dispose plus de MRAP dans cette région de l'île. Attendez vous cependant à ce que des technical de la FIA patrouillent les routes.<br/>- D'après nos observations, la piste de décollage est très courte pour un tel engin. Dans le cas d'un vol de l'appareil, mettez aux commandes une personne qui sait ce qu'elle fait."]];

player createDiaryRecord ["Diary", 
["Mission", "Vous êtes insérés près de <marker name='mrkInsertion'>la chapelle située sur la pointe sud-est d'Altis</marker>.<br/>Cachés par le brouillard, votre mission consiste à vous infiltrer sur <marker name='mrkObjectif'>la piste de Selakano</marker>, récupérer le C-130 et le ramener à <marker name='mrkArrivee'>notre base</marker>, ou a minima de le détruire."]];

player createDiaryRecord ["Diary", 
["Situation", "La guerre civile traîne en longueur sur Altis entre le CSAT occupant l'ouest de l'île, et la FIA composée de locaux et de restes des forces de l'OTAN à l'est.<br/><br/>Vous faites partie d'une équipe d'infiltration du CSAT chargée de voler un C-130 américain qui partira bientôt ravitailler une base rebelle au nord de l'île."]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";

initDone = 1;

sleep 2;
player addItemToVest "ACE_Flashlight_MX991";