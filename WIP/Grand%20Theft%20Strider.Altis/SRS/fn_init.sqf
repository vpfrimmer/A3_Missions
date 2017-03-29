/*
To add SRS to your mission, add the following to your description.ext:

	#include "SRS\GUI\SRSdialogs.hpp"
	class RscTitles{
		#include "SRS\GUI\SRSprogressBar.hpp"
	};
	class CfgFunctions {
		#include "SRS\CfgFunctions.hpp"
	};

and finally add this to your init.sqf:

	[] spawn SRS_fnc_init;
*/

//////////////////////////////////////////////////
// Monsoon's Simple Revive Script (SRS) options //
//////////////////////////////////////////////////
SRS_damageThreshold =  0.90;   // damage threshold before being knocked out (0->1)

SRS_reviveTime      =    60;   // time to revive a downed player (randomizes +/- 25% of this val)
SRS_reviveTimer     =   400;   // time to death after being downed

SRS_medicAdvantage  =  0.5;   	// Medic's revive this % faster (0->1)

SRS_medicsOnly      = False;   // only allow players with Medikit to revive
SRS_requireFAK      =  True;   // require FAK on injured/healer to revive
SRS_reviveFatigue   =  True;   // set high fatigue after revive
SRS_muteRadios      =  True;   // mute TFAR/ACRE on knocked out
SRS_downedMarkers   =  False;   // draw markers on the map for downed players (local same side)
SRS_downed3DMarkers =  False;   // draw 3D icons on a downed player

SRS_toggleCam       =  True;   // toggle 3rd person camera on knockedOut
SRS_debug           = False;   // sidechat debug messages

//////////////////////////////////////////////////
//       Try not to edit below this line...     //
//////////////////////////////////////////////////          

srs_unitString   = 0;
srs_unitObject   = 1;
srs_knockedOut   = 2;
srs_beingHealed  = 3;
srs_beingDragged = 4;

srs_damageValue  = 0.245;

SRS_AI_index = 0;
SRS_ACTIONS = [
	"SRS_healAction",
	"SRS_dragAction",
	"SRS_dropAction",
	"SRS_cancelAction"
];

SRS_switchMove = {
	if(isDedicated) exitWith{};
	_unit = _this select 0;
	_move = _this select 1;
	_unit switchMove _move;	
};
if(isDedicated)   exitWith{ diag_log "SRS is not executed on dedicated" };
if(!hasInterface) exitWith{ diag_log "SRS is pointless on headless clients!" };
if(!SRS_debug)  then{
	if(!isMultiplayer) exitWith{
		_txt = "SRS is only configured for MP, exiting...";
		player sidechat _txt;
		diag_log _txt;
	};
};

player setVariable ["SRS_isReviving", []];      //stores who we are reviving
player setVariable ["SRS_isDragging", []];      //stores who we are dragging
player setVariable ["SRS_medSupplies",[]];      //stores med supplies dropped on the ground

player setVariable ["SRS_cancelRevive", False]; //used to interupt the revive procedure
player setVariable ["SRS_canCallForHelp",True]; //bool for if we can call for help

player setVariable ["SRS_RESET",  False];       //used to break out of main loop
player setVariable ["SRS_RUNNING",True];        //determines current SRS run state

[player] call SRS_fnc_unitVarInit;
SRS_handleDamageEH = player addEventHandler ["HandleDamage", SRS_fnc_handleDamage];
SRS_respawnEH      = player addEventHandler ["Respawn", SRS_fnc_respawnEH];
SRS_resetAction    = player addAction ["<t color='#ff0000'>Reset SRS</t>",SRS_fnc_resetSRS,[],0,false,true,"",""];

/* RE-ENABLE when BI fixes some ragdoll issues
SRS_ragDoll        = player addEventHandler ["AnimStateChanged", {
					    if (_this select 1 == "incapacitated") then {
					    	_dir = getDir player;
					        player allowDamage false;
					        player setPosWorld getPosWorld player;
					        player setDir _dir;
					        player playMoveNow "AinjPpneMstpSnonWrflDnon_rolltoback";
					        //player playMoveNow "AinjPpneMstpSnonWnonDnon_rolltoback";
					        //player allowDamage true;
					    };
					}];
*/

if(SRS_downed3DMarkers) then{
	// 3D icons (from AIS)
	SRS_3DICONS = addMissionEventHandler ["Draw3D", {
		{
			//first check if unitVar is defined, then check distance & isKnockedOut
			if(!(isNil {_x getVariable "SRS_unitVariableDefined"})) then{
				_dist = _x distance player;
				if( _dist < 30 && _dist > 2 &&
					((_x getVariable "SRS_unitVariable") select srs_knockedOut) && 
					_x != player) then{
					drawIcon3D ["a3\ui_f\data\map\MapControl\hospital_ca.paa", 
								[0.6,0.15,0,0.8], _x, 0.5, 0.5, 0, 
								format["%1 (%2m)", name _x, ceil _dist], 0, 0.02];
				};
			};
		}forEach playableUnits;
	}];
};

//main loop
SRS_players = [];
while{!(player getVariable "SRS_RESET")} do{

	{
		if( _x != player) then{
			if((side _x) == (player getVariable "SRS_unitSide")) then{
				if(!(_x in SRS_players)) then{
					if([_x] call SRS_fnc_unitVarInit) then{
						SRS_players pushBack _x;
					};
				};
			};
		};
	}forEach playableUnits;

	sleep 1;
};

player setVariable ["SRS_RUNNING",False];
