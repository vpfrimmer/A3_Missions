/*
 =======================================================================================================================

	T8 Units Script

	File:		T8_missionEXEC.sqf
	Author:		T-800a
	E-Mail:		t-800a@gmx.net

	This file creates the Units, kind of
	

	This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International License.
	To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/ or send a letter to 
	Creative Commons, 444 Castro Street, Suite 900, Mountain View, California, 94041, USA.

 =======================================================================================================================
*/


// include the few macros we use ...
#include <T8\MACRO.hpp>

// wait until everything is initalized correctly
waitUntil { !isNil "T8U_var_useHC" };
waitUntil { !isNil "T8U_var_InitDONE" };

// cancel execute if not server / hc
__allowEXEC(__FILE__);


sleep 5;

"mrkGravia_1" setMarkerAlpha 0;
"mrkGravia_2" setMarkerAlpha 0;
"mrkLakka_1" setMarkerAlpha 0;
"mrkLakka_2" setMarkerAlpha 0;
"mrkSelakano_1" setMarkerAlpha 0;
"mrkSelakano_2" setMarkerAlpha 0;
"mrkAAC_1" setMarkerAlpha 0;
"mrkAAC_2" setMarkerAlpha 0;
"mrkAbdera_1" setMarkerAlpha 0;
"mrkAbdera_2" setMarkerAlpha 0;
"mrkMolos_1" setMarkerAlpha 0;
"mrkMolos_2" setMarkerAlpha 0;

// Groups, available for HALO, ... support!  - this means EAST has two groups with 4 man, which are available as HALP Drop
T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = [];


_groupArrayFireTeam = [ "I_soldier_TL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F" ];
_groupArrayFullTeam = [ "I_soldier_TL_F", "I_medic_F", "I_soldier_F", "I_soldier_AR_F", "I_soldier_TL_F", "I_soldier_F", "I_soldier_F", "I_soldier_LAT_F" ];
_groupArrayMiniPat = [ "I_soldier_TL_F", "I_medic_F", "I_soldier_F" ];

_groupArmored = [ "I_MRAP_03_hmg_F" ];

// Contre-attaque sur camp
reactionForce = 
[
	[ [ _groupArrayFullTeam, "mrkReactionSpawn" ], [ "ATTACK", "mrkCamp" ], [ true, true, false ]],
	[ [ _groupArrayFullTeam, "mrkReactionSpawn" ], [ "ATTACK", "mrkCamp" ], [ true, true, false ]],
	[ [ _groupArrayFullTeam, "mrkReactionSpawn" ], [ "ATTACK", "mrkCamp" ], [ true, true, false ]],
	[ [ _groupArmored, "mrkReactionSpawn_1" ], [ "ATTACK", "mrkCamp" ], [ true, true, false ]],
	[ [ _groupArmored, "mrkReactionSpawn_2" ], [ "ATTACK", "mrkCamp" ], [ true, true, false ]]
];
["reactionForce", "mrkReactionSpawn", 0, "attack == 1", "ANY", "PRESENT", false, "", ""] call T8U_fnc_TriggerSpawn;

// Zone Molos
zoneMolos = 
[
	[ [ _groupArrayMiniPat, "mrkMolos_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayFireTeam, "mrkMolos_2" ], [ "PATROL_GARRISON" ], [ true, true, false ]],
	[ [ _groupArrayFullTeam, "mrkMolos_1" ], [ "DEFEND_BASE" ], [ true, true, false ]]
];

["zoneMolos", "mrkMolos_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// Zone Abdera
zoneAbdera = 
[
	[ [ _groupArrayMiniPat, "mrkAbdera_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayFireTeam, "mrkAbdera_2" ], [ "PATROL_GARRISON" ], [ true, true, false ]]
];

["zoneAbdera", "mrkAbdera_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// Zone AAC
zoneAAC = 
[
	[ [ _groupArrayMiniPat, "mrkAAC_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayFullTeam, "mrkAAC_1" ], [ "DEFEND_BASE" ], [ true, true, false ]]
];

["zoneAAC", "mrkAAC_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// Zone Selakano
zoneSelakano = 
[
	[ [ _groupArrayFireTeam, "mrkSelakano_2" ], [ "PATROL_GARRISON" ], [ true, true, true ]],
	[ [ _groupArrayFullTeam, "mrkSelakano_1" ], [ "DEFEND_BASE" ], [ true, true, false ]]
];

["zoneSelakano", "mrkSelakano_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// Zone Lakka
zoneLakka = 
[
	[ [ _groupArrayFireTeam, "mrkLakka_2" ], [ "PATROL_GARRISON" ], [ true, true, true ]],
	[ [ _groupArrayFullTeam, "mrkLakka_2" ], [ "DEFEND_BASE" ], [ true, true, false ]],
	[ [ _groupArrayFullTeam, "mrkLakka_1" ], [ "DEFEND_BASE" ], [ true, true, false ]]
];

["zoneLakka", "mrkLakka_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// Zone Gravia
zoneGravia = 
[
	[ [ _groupArrayMiniPat, "mrkGravia_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayMiniPat, "mrkGravia_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayMiniPat, "mrkGravia_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _groupArrayFireTeam, "mrkGravia_2" ], [ "PATROL_GARRISON" ], [ true, true, false ]],
	[ [ _groupArrayFullTeam, "mrkGravia_1" ], [ "DEFEND_BASE" ], [ true, true, false ]]
];

["zoneGravia", "mrkGravia_2", "EAST", "GUER", 4000, "this", "", ""] call T8U_fnc_Zone;

// ------------------------------------------------ THE END ---------------------------------------------------