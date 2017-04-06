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

_patrol = ["I_C_Soldier_Bandit_7_F", "I_C_Soldier_Bandit_5_F"];
_smallGroup = ["I_C_Soldier_Bandit_4_F", "I_C_Soldier_Bandit_3_F", "I_C_Soldier_Bandit_6_F"];
_largeGroup = _smallGroup + ["I_C_Soldier_Para_2_F", "I_C_Soldier_Para_3_F", "I_C_Soldier_Para_5_F", "I_C_Soldier_Para_4_F"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

initSpawn = 
[
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	
	[ [_patrol, "mrkB1"], ["OCCUPY"], [true, false, true] ],
	[ [_smallGroup, "mrkB1"], ["PATROL"], [true, true, true] ],
	
	[ [_patrol, "mrkB2"], ["OCCUPY"], [true, false, true] ],
	[ [_patrol, "mrkB2"], ["PATROL"], [true, true, true] ],
	[ [_largeGroup, "mrkB2"], ["DEFEND_BASE"], [false, false, false] ],
	
	[ [_patrol, "mrkB3"], ["OCCUPY"], [true, false, true] ],
	[ [_smallGroup + _smallGroup, "mrkB3"], ["DEFEND_BASE"], [false, false, false] ],
	
	[ [_patrol, "mrkB4"], ["OCCUPY"], [true, false, true] ],
	[ [_patrol, "mrkB4"], ["PATROL"], [true, true, true] ],
	[ [_largeGroup, "mrkB4"], ["DEFEND_BASE"], [false, false, false] ],
	
	[ [_patrol, "mrkB5"], ["OCCUPY"], [true, false, true] ],
	[ [_patrol, "mrkB5"], ["PATROL"], [true, true, true] ],
	[ [_largeGroup, "mrkB5"], ["DEFEND_BASE"], [false, false, false] ],
	
	[ [_largeGroup, "mrkB6"], ["DEFEND_BASE"], [false, false, false] ],
	
	[ [_patrol, "mrkVillage"], ["PATROL"], [true, true, true] ],
	[ [_largeGroup, "mrkVillage"], ["DEFEND_BASE"], [true, true, false] ]
];


waitUntil{time > 0};

[ initSpawn ] spawn T8U_fnc_Spawn;