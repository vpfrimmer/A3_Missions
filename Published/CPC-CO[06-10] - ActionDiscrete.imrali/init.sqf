// GAIA ----------------------------------------------------------------------------------
// Chang the following numbers to your liking
if (isServer ) then 
{
	// From what range away from closest player should units be cached (in meters or what every metric system arma uses)?
	// To test this set it to 20 meters. Then make sure you get that close and move away. 
	// You will notice 2 levels of caching 1 all but leader, 2 completely away
	// Stage 2 is 2 x GAIA_CACHE_STAGE_1. So default 2000, namely 2 x 1000
	GAIA_CACHE_STAGE_1				= 800;
	// The follow 3 influence how close troops should be to known conflict to be used. (so they wont travel all the map to support)
	// How far should footmobiles be called in to support attacks.
	// This is also the range that is used by the transport system. If futher then the below setting from a zone, they can get transport.
	MCC_GAIA_MAX_SLOW_SPEED_RANGE  = 1100;
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
["Environnement", "Il est 21h, le soleil est couché. Pas de vent à l'horizon."]];

player createDiaryRecord ["Diary", 
["Equipement et supports", "Tout le monde possède une 343. Le TL et les pilotes disposent d'une 148. Toute l'équipe est équipée de lunettes de vision nocturne et de silencieux.<br/>L'Osprey inclue une tourelle M240 (7.62mm) montée à sa rampe arrière, accessible au pilote et copilote, ainsi qu'un pod de caméra thermique accessible au copilote.<br/><br/>Des parachutes sont disponibles dans l'avion, aucun d'entre vous ne porte de sac."]];

player createDiaryRecord ["Diary", 
["Insertion", "Vous êtes actuellement en vol au large des côtes en VTOL Osprey à 800m d'altitude."]];

player createDiaryRecord ["Diary", 
["Renseignements", "Imrali était auparavant une île prison turque, mais depuis la dernière guerre russe-turque, l'île a été reconvertie en base militaire russe.<br/>De ce fait, vous y trouverez de l'infanterie russe, et possiblement certains de leurs véhicules.<br/><br/>Vous avez l'avantage du terrain : la nuit est sombre (et pleine de terreurs), les russes ne sont pas équipés d'optiques nocturnes, et une équipe sur le continent attend votre signal pour couper l'arrivée électrique de l'île, ce qui plongera la base dans le noir. (trigger radio)"]];

player createDiaryRecord ["Diary", 
["Mission", "Vous êtes membre du MARSOC américain. <br/>Aujourd'hui, votre objectif consiste à infiltrer l'île d'Imrali et sa base militaire pour y récupérer un fichier sensible.<br/>Nos sources nous ont confirmé que l'ordinateur cible était un Pentium 4 se situant dans la caserne centrale de la base.<br/><br/>Une fois l'objectif accompli, repartez par là où vous êtes venu."]];


// ROSTER --------------------------------------------------------------------------------
[0,true,true] execVM "roster.sqf";
