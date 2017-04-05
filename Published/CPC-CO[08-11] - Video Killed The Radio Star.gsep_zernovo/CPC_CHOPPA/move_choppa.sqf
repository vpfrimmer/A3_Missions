/*
Désignation et création de la LZ par clic gauche sur la map.
*/

private ["_wp"];

hint "Ouvrez votre map et cliquez à l'endroit désiré pour désigner la LZ";
// Création de l'action d'annulation
CPC_CHOPPA_Action = player addAction ["<t color='#DF1444'>Annuler</t>", "player onMapSingleClick """";player removeaction (_this select 2); hint """";",0,0,false,true,"",""];

player onMapSingleClick {
	player removeaction CPC_CHOPPA_Action;
	hint "";
	"CPC_CHOPPA_LZ" setMarkerPosLocal _pos;
	"CPC_CHOPPA_LZ" setMarkerAlphaLocal 1;
	CPC_CHOPPA_Helipad setpos _pos;
	
	// Suppression des Waypoints précédement ajoutés
	{
		deleteWaypoint _x;
	} forEach (waypoints CPC_CHOPPA_Group);
	// interruption d'un éventuel atterissage en cours
	CPC_CHOPPA_Helo land "NONE";
	
	// Création des points de passage de l'hélico
	_wp = CPC_CHOPPA_Group addWaypoint [_pos, 0];
	_wp setWaypointType "MOVE";
	_wp setWaypointBehaviour "CARELESS";
	_wp setWaypointCombatMode "BLUE";
	_wp setWaypointStatements ["true","CPC_CHOPPA_Helo land 'LAND';"];
	
	player onMapSingleClick "";
};