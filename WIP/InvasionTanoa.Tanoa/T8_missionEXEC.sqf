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

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////

_syndikatPatrol = ["I_C_Soldier_Bandit_7_F", "I_C_Soldier_Bandit_3_F", "I_C_Soldier_Bandit_5_F", "I_C_Soldier_Bandit_2_F"];

_syndikatLightVehicle = ["I_C_Offroad_02_unarmed_F"];

_natoPatrol = ["B_T_Soldier_TL_F", "B_T_Soldier_AR_F", "B_T_Soldier_LAT_F", "B_T_Medic_F", "B_T_Soldier_F"];

_natoTransport = ["B_T_Truck_01_covered_F"];
_natoLightVehicle = ["B_T_MRAP_01_hmg_F"];
_natoAPC = ["B_T_APC_Wheeled_01_cannon_F"];
_natoTank = ["B_T_MBT_01_cannon_F"];



// Groups, available for HALO, ... support!  - this means EAST has two groups with 4 man, which are available as HALP Drop
T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [_natoPatrol, _natoPatrol];
T8U_var_SupportUnitsRESISTANCE = [];

initSpawn = 
[
	[ [ _syndikatPatrol, "mrkJungle", true, RESISTANCE ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _syndikatPatrol, "mrkJungle", true, RESISTANCE ], [ "PATROL" ], [ true, false, true ] ],
	[ [ _syndikatPatrol, "mrkJungle", true, RESISTANCE ], [ "PATROL" ], [ true, false, true ] ],
	[ [ _natoPatrol, "mrkZ1", true, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoPatrol, "mrkZ1", true, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoLightVehicle, "mrkZ1", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoLightVehicle, "mrkZ1", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoAPC, "mrkZ1", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoLightVehicle, "mrkZ1", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoAPC, "mrkZ1", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _syndikatPatrol, "mrkJungle2", true, RESISTANCE ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _syndikatPatrol, "mrkJungle2", true, RESISTANCE ], [ "PATROL" ], [ true, false, true ] ],
	
	[ [ _natoPatrol + _natoTransport, "mrkZ2", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoPatrol + _natoTransport, "mrkZ2", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoAPC, "mrkZ2", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoTank, "mrkZ2", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoTank, "mrkZ2", false, WEST ], [ "PATROL" ], [ true, true, true ] ],
	[ [ _natoPatrol, "mrkZ2", true, WEST ], [ "PATROL" ], [ true, true, true ] ]
];

[initSpawn] spawn T8U_fnc_Spawn; 

/*
RESISTANCE_attack_01 = 
[
	[ [ [ "B_Truck_01_transport_F" ] + _groupArrayBluTeam, "BLUFOR_attack_spawn_01", false, RESISTANCE ], [ "ATTACK", "Marker04" ]]
];

BLUFOR_attack_02 = 
[
	[ [ _groupArrayBluTeam, "BLUFOR_attack_spawn_02", true, WEST ], [ "ATTACK", "overwatchTHIS" ]],
	[ [ _groupArrayBluTeam, "BLUFOR_attack_spawn_02", true, WEST ], [ "ATTACK", "overwatchTHIS" ]]
];
*/


// ------------------------------------------------ THE END ---------------------------------------------------
