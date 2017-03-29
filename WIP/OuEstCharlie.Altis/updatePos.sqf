if(isServer) then {
	// On définit les arrays de nouvelles pos + celui des objets à bouger.
	_aRandomMrk = ["mrkRnd_1", "mrkRnd_2", "mrkRnd_3", "mrkRnd_4", "mrkRnd_5", "mrkRnd_6", "mrkRnd_7", "mrkRnd_8", "mrkRnd_9", "mrkRnd"];
	_markerPos = getMarkerPos "crashSite";
	aObjectsToMove = nearestObjects[_markerPos, ["LandVehicle", "Man", "Wreck", "Air"], 2000];
	aObjectsToMove = aObjectsToMove + [Kajman];
	if(!isNil "pSurv1") then {aObjectsToMove = aObjectsToMove + [pSurv1]};
	if(!isNil "pSurv2") then {aObjectsToMove = aObjectsToMove + [pSurv2]};

	aObjectsDistance = [];
	// On retient la différence de position entre les objets et l'ancien marqueur
	{aObjectsDistance = aObjectsDistance + [getPos _x vectorDiff _markerPos]} forEach aObjectsToMove;

	if(!isNil "pSurv1") then {aObjectsDistance = aObjectsDistance + [pSurv1]};
	if(!isNil "pSurv2") then {aObjectsDistance = aObjectsDistance + [pSurv2]};

	// On détermine le nouveau spot
	_pos = floor(random(count _aRandomMrk));
	_newMarker = _aRandomMrk select _pos;
	newPos = getMarkerPos _newMarker;

	if(!isNil "pSurv1") then 
	{
		vSurv1 = newPos vectorAdd (getPos pSurv1 vectorDiff _markerPos);
		publicVariable "vSurv1";
	};
	if(!isNil "pSurv2") then 
	{
		vSurv2 = newPos vectorAdd (getPos pSurv2 vectorDiff _markerPos);
		publicVariable "vSurv2";
	};

	// On bouge tout!	
	"crashSite" setMarkerPos newPos;
	"1" setMarkerPos newPos;
	for "_i" from 0 to (count aObjectsToMove - 1) do
	{
		aObjectsToMove select _i setPos (newPos vectorAdd (aObjectsDistance select _i));
		
	};

	publicVariable "newPos";
	calculDone = "false";
	publicVariable "calculDone";

	(group patrolLeader) move getPos pSurv1;
};

