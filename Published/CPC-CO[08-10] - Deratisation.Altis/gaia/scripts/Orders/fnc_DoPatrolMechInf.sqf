//==================================================================fnc_DoInfPatrol===============================================================================================
// Generate some stuff to do for our awesome patrol
// Example: [_group,_zone] call fnc_DoInfPatrol
// spirit 14-1-2014
//===========================================================================================================================================================================	
private ["_group","_NrOfBuildingWp","_zone","_pos"];

_group 			= _this select 0; 
_zone				=	_this select 1;



[_group] call fnc_RemoveWayPoints;


//Go somewhere
_pos= [_group,_zone,"VEH_HILLS_ROAD_FLAT"] call fnc_CreateWP;



if (count (waypoints _group) != (currentWaypoint _group)) then 
	{
			//_dummy 	=  [_group,(position leader _group),"GETIN NEAREST"] call fnc_addWaypoint;
			_dummy 	=  [_group,_pos,"MOVE"] call fnc_addWaypoint;

	};

//Our result is waypoints
((count (waypoints _group)) - currentWaypoint _group)