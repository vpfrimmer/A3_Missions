EOS_Spawn = compile preprocessfilelinenumbers "eos\core\eos_launch.sqf";Bastion_Spawn=compile preprocessfilelinenumbers "eos\core\b_launch.sqf";null=[] execVM "eos\core\spawn_fnc.sqf";onplayerConnected {[] execVM "eos\Functions\EOS_Markers.sqf";};
/* EOS 1.98 by BangaBob 
GROUP SIZES
 0 = 1
 1 = 2,4
 2 = 4,8
 3 = 8,12
 4 = 12,16
 5 = 16,20

EXAMPLE CALL - EOS
 null = [["MARKERNAME","MARKERNAME2"],[2,1,70],[0,1],[1,2,30],[2,60],[2],[1,0,10],[1,0,250,WEST]] call EOS_Spawn;
 null=[["M1","M2","M3"],[HOUSE GROUPS,SIZE OF GROUPS,PROBABILITY],[PATROL GROUPS,SIZE OF GROUPS,PROBABILITY],[LIGHT VEHICLES,SIZE OF CARGO,PROBABILITY],[ARMOURED VEHICLES,PROBABILITY], [STATIC VEHICLES,PROBABILITY],[HELICOPTERS,SIZE OF HELICOPTER CARGO,PROBABILITY],[FACTION,MARKERTYPE,DISTANCE,SIDE,HEIGHTLIMIT,DEBUG]] call EOS_Spawn;

EXAMPLE CALL - BASTION
 null = [["BAS_zone_1"],[3,1],[2,1],[2],[0,0],[0,0,EAST,false,false],[10,2,120,TRUE,TRUE]] call Bastion_Spawn;
 null=[["M1","M2","M3"],[PATROL GROUPS,SIZE OF GROUPS],[LIGHT VEHICLES,SIZE OF CARGO],[ARMOURED VEHICLES],[HELICOPTERS,SIZE OF HELICOPTER CARGO],[FACTION,MARKERTYPE,SIDE,HEIGHTLIMIT,DEBUG],[INITIAL PAUSE, NUMBER OF WAVES, DELAY BETWEEN WAVES, INTEGRATE EOS, SHOW HINTS]] call Bastion_Spawn;
*/
VictoryColor="colorGreen";	// Colour of marker after completion
hostileColor="colorRed";	// Default colour when enemies active
bastionColor="colorOrange";	// Colour for bastion marker
EOS_DAMAGE_MULTIPLIER=1;	// 1 is default
EOS_KILLCOUNTER=false;		// Counts killed units

//_difficulty = paramsArray select 2;
_difficulty = 3;
//_faction = paramsArray select 0;
_faction = 5;

if(_difficulty == 0) then 
{
	null = [["att1","att2","att3"],[0,0],[1,0],[0,0],[1],[1],[0,0],[_faction,1,20000,EAST,FALSE,FALSE]] call EOS_Spawn;
};

if(_difficulty == 1) then 
{
	null = [["att1","att2","att3"],[1,1],[2,1],[2,0],[2],[2],[0,0],[_faction,1,20000,EAST,FALSE,FALSE]] call EOS_Spawn;
};

if(_difficulty == 2) then 
{
	null = [["att1","att2","att3"],[4,1],[4,3],[4,0],[4],[4],[1,0],[_faction,1,20000,EAST,FALSE,FALSE]] call EOS_Spawn;
};

if(_difficulty == 3) then 
{
	null = [["att1","att2","att3"],[6,2],[6,3],[6,0],[6],[6],[2,0],[_faction,1,20000,EAST,FALSE,FALSE]] call EOS_Spawn;
};

if(_difficulty == 4) then 
{
	null = [["att1","att2","att3"],[6,3],[6,3],[8,0],[7],[7],[3,0],[_faction,1,20000,EAST,FALSE,FALSE]] call EOS_Spawn;
};