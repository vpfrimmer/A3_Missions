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

_arrayArmored = ["O_T_MBT_02_cannon_ghex_F"];
_arrayTechnical = ["O_T_LSV_02_armed_F"];

_patrol = ["O_T_Soldier_F", "O_T_Soldier_F"];
_smallGroup = ["O_T_Soldier_TL_F", "O_T_Soldier_AR_F", "O_T_Soldier_F"];
_largeGroup = _smallGroup + ["O_T_Soldier_M_F", "O_T_Soldier_GL_F", "O_T_Medic_F", "O_T_Soldier_AT_F"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

initSpawn = 
[
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	
	[ [_largeGroup, "mrkVehicleRange"], ["DEFEND_BASE"], [true, false, false] ],
	
	[ [_smallGroup, "mrkWhiskey"], ["DEFEND_BASE"], [true, false, false] ],
	[ [_patrol, "mrkWhiskey"], ["PATROL"], [true, true, true] ],
	
	[ [_smallGroup, "mrkAero"], ["PATROL"], [true, true, true] ],
	[ [_largeGroup, "mrkAero"], ["DEFEND_BASE"], [true, false, false] ],
	[ [_largeGroup, "mrkAero"], ["PATROL"], [true, false, true] ],
	
	[ [_largeGroup, "mrkFiringRange"], ["DEFEND_BASE"], [true, false, true] ],
	
	[ [_largeGroup + _patrol, "mrkGSM"], ["DEFEND_BASE"], [true, false, false] ]
];


waitUntil{time > 0};

[ initSpawn ] spawn T8U_fnc_Spawn;