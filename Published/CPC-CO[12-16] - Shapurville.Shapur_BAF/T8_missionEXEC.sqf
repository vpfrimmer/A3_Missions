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

_smallGroup = ["CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AT"];
_patrolGroup = ["CUP_O_TK_INS_Soldier_TL", "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier_MG"];
_carGroup = ["CUP_O_UAZ_MG_TKA"];

_reinforcementsFoot = ["rhssaf_un_m10_digital_desert_sq_lead", "rhssaf_un_m10_digital_desert_rifleman_m70", "rhssaf_un_m10_digital_desert_rifleman_m70", "rhssaf_un_m10_digital_desert_rifleman_m70", "rhssaf_un_m10_digital_desert_rifleman_m70", "rhssaf_un_m10_digital_desert_gl", "rhssaf_un_m10_digital_desert_sniper_m76"];
_reinforcementsArmor1 = ["rhsgref_un_m1117"];
_reinforcementsArmor2 = ["rhsgref_un_btr70"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

smallWave =
[
	[ [_patrolGroup, "spawn"], [ "ATTACK", "mrkAttack"] ],
	[ [_patrolGroup, "spawn_1"], [ "ATTACK", "mrkAttack"] ]
];

middleWave =
[
	[ [_patrolGroup, "spawn"], [ "ATTACK", "mrkAttack"] ],
	[ [_patrolGroup, "spawn_1"], [ "ATTACK", "mrkAttack"] ],
	[ [_patrolGroup, "spawn_2"], [ "ATTACK", "mrkAttack"] ],
	[ [_patrolGroup, "spawn_3"], [ "ATTACK", "mrkAttack"] ]
];

reinforcementsAttack =
[
	[ [ _reinforcementsFoot, "mrkReinforcements", true, WEST, "" ], ["ATTACK", "mrkAttack" ], [ true, true, false ] ],
	[ [ _reinforcementsArmor1, "mrkReinforcements_1", false, WEST, "" ], ["ATTACK", "mrkAttack" ], [ true, true, false ] ],
	[ [ _reinforcementsArmor2, "mrkReinforcements_2", false, WEST, "" ], ["ATTACK", "mrkAttack" ], [ true, true, false ] ],
	[ [ _reinforcementsFoot, "mrkReinforcements_3", true, WEST, "" ], ["ATTACK", "mrkAttack" ], [ true, true, false ] ]
];

carWave = [
	[ [_carGroup, "spawn"], [ "ATTACK", "mrkAttack"] ]
];

reinforcements = false;
publicVariable "reinforcements";

waitUntil{time > 0};

_easyFoot = [] spawn {
	sleep 90;
	while{!reinforcements} do {
		[ smallWave ] spawn T8U_fnc_Spawn;
		sleep 180;
		waitUntil{count allUnits < 128};
	};
};

_middleFoot = [] spawn {
	sleep 70;
	while{!reinforcements} do {
		sleep 380;
		[ middleWave ] spawn T8U_fnc_Spawn;
		waitUntil{count allUnits < 129};
	};
};

_cars = [] spawn {
	sleep 90;
	while{!reinforcements} do {
		[ carWave ] spawn T8U_fnc_Spawn;
		sleep 465;		
		waitUntil{count allUnits < 130};
	};
};

_midGame_1 = [] spawn {
	sleep 1320;
	[ middleWave ] spawn T8U_fnc_Spawn;
	[ middleWave ] spawn T8U_fnc_Spawn;
	[ carWave ] spawn T8U_fnc_Spawn;
};

_midGame_2 = [] spawn {
	sleep 2160;
	[ middleWave ] spawn T8U_fnc_Spawn;
	[ middleWave ] spawn T8U_fnc_Spawn;
	[ carWave ] spawn T8U_fnc_Spawn;
};


_reinforcementsWave = [] spawn {
	
	//TODO
	sleep 3100;
	
	reinforcements = true;
	publicVariable "reinforcements";
	
	[ reinforcementsAttack ] spawn T8U_fnc_Spawn;
	sleep 45;
	[ reinforcementsAttack ] spawn T8U_fnc_Spawn;
	sleep 45;
	[ reinforcementsAttack ] spawn T8U_fnc_Spawn;
	sleep 45;
	[ reinforcementsAttack ] spawn T8U_fnc_Spawn;
};
