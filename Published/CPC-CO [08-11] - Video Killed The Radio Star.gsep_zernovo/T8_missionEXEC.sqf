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

_arrayArmored = ["CUP_I_T34_NAPA"];
_arrayTechnical = ["CUP_I_Datsun_PK_Random"];

_patrol = ["CUP_I_GUE_Woodman", "CUP_I_GUE_Farmer"];
_smallGroup = ["CUP_I_GUE_Soldier_AR", "CUP_I_GUE_Soldier_AKS74", "CUP_I_GUE_Soldier_AT"];
_largeGroup = _smallGroup + ["CUP_I_GUE_Officer", "CUP_I_GUE_Soldier_GL", "CUP_I_GUE_Medic", "CUP_I_GUE_Ammobearer"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

initSpawn = 
[
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_patrol, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_smallGroup, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_smallGroup, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayArmored, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayTechnical, "mrkAllZone"], ["PATROL"], [true, true, true] ],
	[ [_arrayArmored, "mrkOsa"], ["PATROL"], [true, false, true] ],
	[ [_arrayArmored, "mrkOsa"], ["PATROL"], [true, false, true] ],
	[ [_smallGroup, "mrkOsa"], ["PATROL"], [true, false, true] ],
	[ [_smallGroup, "mrkOsa"], ["PATROL"], [true, false, true] ],
	[ [_largeGroup, "mrkOsa"], ["PATROL"], [true, false, true] ],
	[ [_smallGroup, "mrkZernovo"], ["PATROL"], [true, false, true] ],
	[ [_largeGroup, "mrkZernovo"], ["PATROL"], [true, false, true] ],
	[ [_smallGroup, "mrkKatov"], ["PATROL"], [true, false, true] ],
	[ [_largeGroup, "mrkKatov"], ["PATROL"], [true, false, true] ],
	[ [_patrol, "mrkAA"], ["PATROL"], [true, false, true] ],
	[ [_smallGroup, "mrkAA"], ["PATROL"], [true, false, true] ]
];


waitUntil{time > 0};

[ initSpawn ] spawn T8U_fnc_Spawn;