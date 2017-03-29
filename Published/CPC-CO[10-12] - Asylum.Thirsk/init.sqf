// GAIA ----------------------------------------------------------------------------------
// We set the markers invisible (if you use more then 100 markers, then increase). Or delete if you want them visible
for "_x" from 1 to 100 do
{
	format ["%1",_x] setMarkerAlpha 0;
};

// Chang the following numbers to your liking
if (isServer ) then 
{
	// From what range away from closest player should units be cached (in meters or what every metric system arma uses)?
	// To test this set it to 20 meters. Then make sure you get that close and move away. 
	// You will notice 2 levels of caching 1 all but leader, 2 completely away
	// Stage 2 is 2 x GAIA_CACHE_STAGE_1. So default 2000, namely 2 x 1000
	GAIA_CACHE_STAGE_1				= 1000;
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

if(!isServer) then
{
	waitUntil {!isnull player};
	
	//=================== BABEL
	["en", "Anglais"] call acre_api_fnc_babelAddLanguageType;
	["ru", "Russe"] call acre_api_fnc_babelAddLanguageType;
};

//=================== BRIEFING
if(side player == west) then 
{	
	for "_i" from 0 to 6 step 1 do {Format ["mrk_Intel_%1", _i] setMarkerAlphaLocal 0;};

	["en"] call acre_api_fnc_babelSetSpokenLanguages;
	
	player createDiaryRecord ["Diary", 
	["A propos de Babel", "Cette mission utilise la feature Babel d'ACRE2, qui permet de définir plusieurs langues et de vous les attribuer. Ainsi, vous ne pouvez parler que les langues que vous connaissez et de même, vous ne comprendrez que les langues que vous connaissez.<br/>Pour changer la langue parlée, vous pouvez binder une touche de toggle dans l'écran de configuration des touches d'ACRE.<br/><br/>Vous, soldats américains, ne parlez malheureusement que l'anglais. Le contact russe parle anglais."]];

	player createDiaryRecord ["Diary", 
	["Environnement", "Il est 06h40, le jour va bientôt se lever. La météo est mauvaise."]];

	player createDiaryRecord ["Diary", 
	["Exécution", "0. Vous venez de vous insérer <marker name='mrkInsertion'>sur la côte de l'île en canot.</marker><br/>1. Rendez vous au point Echo pour rencontrer notre contact russe et recueillir ses informations.<br/>(2.) Si la situation l'impose, planifiez une action directe conjointement avec l'équipe russe et exécutez la.<br/>3. Ligotez les soldats russes et escortez les à bord de l'USS Colorado."]];

	player createDiaryRecord ["Diary", 
	["Renseignements", "- Les insurgés tiennent fermement la capitale de l'île et ses alentours. Cependant, ils ne vous considéreront pas comme des alliés, l'implication des Etats-Unis dans leur succès étant encore secret.<br/>- Les forces russes présentes disposent de plusieurs blindés de type BTR."]];

	player createDiaryRecord ["Diary", 
	["Détail de mission", "Bien que nous ayons accepté la demande d'asile de l'équipe russe pour les motiver à partager leurs informations, il est bien entendu hors de question de la mettre en application et de voir un jour ces traîtres débarquer lavés de toutes fautes sur le sol américain.<br/>Nous avons promis au russe un hélicoptère d'extraction pour les emmener hors de l'île. En réalité il n'y a pas d'hélicoptère, et une fois votre mission terminée, vous avez pour ordre de les faire prisonniers et de les escorter à bord de l'USS Colorado où ils seront plus tard interrogés avant d'être déportés en prison militaire. Ils doivent arriver vivants sur le sous-marin, vous n'avez en aucun cas autorisation de les éliminer ou de les blesser."]];

	player createDiaryRecord ["Diary", 
	["Mission", "Il y a un mois, après de longs efforts, un agent de la CIA a réussi à recruter un team leader de la MSV, stationné à Thirsk. Jusqu'à présent sans nouvelles, ce TL russe nous a contacté cette nuit, affirmant posséder des informations capitales et urgentes pour la survie de l'insurrection finlandaise.<br/>Il est disposé à nous révéler ces informations en échange d'un asile sur le sol américain pour lui et son équipe.<br/><br/>Un rendez-vous est prévu avec le russe et ses hommes à 07h00 sur <marker name='mrkEcho'>le point Echo</marker>.<br/>Votre mission consiste à aller à sa rencontre, lui demander de révéler ses informations, puis de l'escorter ainsi que son équipe vers l'USS Colorado.<br/><br/>Tant que vous serez sur Thirsk, un silence radio sera imposé entre vous et le commandement à bord du sous-marin. De ce fait, si les informations du russe l'imposent, vous êtes libres de planifier et d'entreprendre une action directe, et encouragés à l'utiliser lui et son équipe pour la réaliser."]];

	player createDiaryRecord ["Diary", 
	["Situation", "Il y a maintenant deux mois qu'une guerre civile fait rage sur l'île de Thirsk, entre la Russie propriétaire des lieux et des insurgés locaux d'origine finlandaise.<br/>Bien que cela n'ait jamais été révélé, l'insurection est financée par plusieurs fonds américains et européens, dans le but de renverser le pouvoir russe en place et permettre à l'OTAN de s'offrir un pied à terre dans la Baltique.<br/><br/>Vous faites partie d'une équipe de reconnaissance de l'USMC à bord du sous-marin USS Colorado, qui vient fraichement d'émerger aux abords de Thirsk."]];
}
else 
{
	"mrkSubmarine" setMarkerAlphaLocal 0;
	"mrkInsertion" setMarkerAlphaLocal 0;

	if(player == tlRusse) then 
	{
		["ru", "en"] call acre_api_fnc_babelSetSpokenLanguages;
	}
	else
	{
		["ru"] call acre_api_fnc_babelSetSpokenLanguages;
	};
	
	player createDiaryRecord ["Diary", 
	["A propos de Babel", "Cette mission utilise la feature Babel d'ACRE2, qui permet de définir plusieurs langues et de vous les attribuer. Ainsi, vous ne pouvez parler que les langues que vous connaissez et de même, vous ne comprendrez que les langues que vous connaissez.<br/>Pour changer la langue parlée, vous pouvez binder une touche de toggle dans l'écran de configuration des touches d'ACRE.<br/><br/>Vous, soldats russes, ne parlez que le russe, alors que votre Team Leader parle aussi l'anglais et servira donc de traducteur avec l'équipe américaine."]];

	player createDiaryRecord ["Diary", 
	["Environnement", "Il est 06h40, le jour va bientôt se lever. La météo est mauvaise."]];

	player createDiaryRecord ["Diary", 
	["Exécution", "Vous êtes insérés à l'entrée du QG russe. Votre fireteam dispose d'un MRAP et malheureusement, vous n'avez pas pu trouver de radios avant de quitter votre baraquement.<br/><br/>1. Prendre contact avec l'équipe de reconnaissance américaine sur le point Echo<br/>2. Faites ce qu'il faut pour vous faire extraire de l'île et amenés en lieu sûr."]];

	player createDiaryRecord ["Diary", 
	["Renseignements", "- Votre carte répertorie les différents points de contrôle russes, des renseignements qui pourraient profiter aux américains. Chaque point est défendu.<br/>- Toute la zone sous contrôle russe est constamment patrouillée.<br/>- Vos réticences et réactions à certains ordres ont déjà été remarquées par vos paires, et votre absence sur la base sera très certainement la goutte d'eau qui fait déborder le vase. Attendez vous à être recherchés au bout d'un certain temps.<br/>- Il y a un Mi-24 en activité sur l'aéroport du Sud, chargé de fournir un support rapide lors d'attaques. Deux autres sont remisés."]];

	player createDiaryRecord ["Diary", 
	["L'information", "Il y a quelques heures, vous avez appris par des canaux internes le déploiement d'un engin nucléaire tactique sur <marker name='mrk_Intel_3'>la base de Ykspihlaja</marker>. L'état-major, ayant dernièrement subi de lourdes pertes par l'insurrection finlandaise, souhaite dans un élan de folie jouer le tout pour le tout et rayer de la carte la ville de Thirsk, la capitale de l'île, siège du commandement rebel depuis le début des affrontements.<br/>Le lancement est prévu à 09h00."]];

	player createDiaryRecord ["Diary", 
	["Le rendez-vous", "Vous avez rendez-vous à 07h00 sur <marker name='mrkEcho'>le point Echo</marker> avec une équipe de reconnaissance américaine, qui sera chargée de recueillir l'information promise et de vous escorter jusqu'à un hélicoptère d'extraction qui vous déposera en Finlande. Vous devrez porter une chemlight bleue pour vous annoncer.<br/>Une fois le contact établi, à vous de faire ce qu'il faut pour les convaincre de vous extraire."]];
	
	player createDiaryRecord ["Diary", 
	["Votre objectif", "Votre seul et unique objectif est de quitter l'île, par tous les moyens. Les américains sont la voie la plus facile mais s'ils devaient périr ou vous perdre, tout autre moyen de fuite par le ciel ou la mer est à envisager."]];

	player createDiaryRecord ["Diary", 
	["Situation", "Il y a maintenant deux mois qu'une guerre civile fait rage sur l'île de Thirsk, entre la Russie propriétaire des lieux et des insurgés locaux d'origine finlandaise.<br/>Vous faites partie d'une équipe des forces armées russes stationnée sur l'île depuis le début de l'insurrection, et vous avez vu votre part d'horreurs et de populations civiles massacrées par vos paires.<br/><br/>Il y a un mois, votre team leader a été contacté par un agent de la CIA désireux de récolter toute information utile sur les effectifs russes présents sur l'île et les plans de l'état-major, vous proposant en échange un droit d'asile sur le sol américain pour toute votre équipe. <br/>Aujourd'hui, fatigués de l'horreur des combats et des méthodes radicales et inhumaines de votre commandement, votre équipe est résolue à s'enfuir et votre chef d'équipe a contacté l'agent américain pour demander une extraction, en échange d'une information nouvellement acquise."]];
};