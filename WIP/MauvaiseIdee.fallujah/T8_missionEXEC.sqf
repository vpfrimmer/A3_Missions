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
_sniperGroup = ["CUP_O_TK_INS_Sniper", "CUP_O_TK_INS_Soldier_Enfield"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

mainSpawn1 =
[
 [ [ _smallGroup, "zone1" ], [ "OVERWATCH" ] ],
 [ [ _sniperGroup, "zone1" ], [ "OVERWATCH" ] ],
 [ [ _smallGroup, "zone1" ], [ "GARRISON" ] ],
 [ [ _sniperGroup, "zone1" ], [ "GARRISON" ] ], 
 [ [ _patrolGroup, "zone1" ], [ "PATROL_URBAN" ] ],
 [ [ _patrolGroup, "zone1" ], [ "PATROL_GARRISON" ] ]
];

mainSpawn2 =
[
 [ [ _smallGroup, "zone2" ], [ "OVERWATCH" ] ],
 [ [ _sniperGroup, "zone2" ], [ "OVERWATCH" ] ],
 [ [ _smallGroup, "zone2" ], [ "GARRISON" ] ],
 [ [ _sniperGroup, "zone2" ], [ "GARRISON" ] ], 
 [ [ _patrolGroup, "zone2" ], [ "PATROL_URBAN" ] ],
 [ [ _patrolGroup, "zone2" ], [ "PATROL_GARRISON" ] ]
];

mainSpawn3 =
[
 [ [ _smallGroup, "zone3" ], [ "OVERWATCH" ] ],
 [ [ _sniperGroup, "zone3" ], [ "OVERWATCH" ] ],
 [ [ _smallGroup, "zone3" ], [ "GARRISON" ] ],
 [ [ _sniperGroup, "zone3" ], [ "GARRISON" ] ], 
 [ [ _patrolGroup, "zone3" ], [ "PATROL_URBAN" ] ],
 [ [ _patrolGroup, "zone3" ], [ "PATROL_GARRISON" ] ]
];

mainSpawn4 =
[
 [ [ _smallGroup, "zone4" ], [ "OVERWATCH" ] ],
 [ [ _sniperGroup, "zone4" ], [ "OVERWATCH" ] ],
 [ [ _smallGroup, "zone4" ], [ "GARRISON" ] ],
 [ [ _sniperGroup, "zone4" ], [ "GARRISON" ] ], 
 [ [ _patrolGroup, "zone4" ], [ "PATROL_URBAN" ] ],
 [ [ _patrolGroup, "zone4" ], [ "PATROL_GARRISON" ] ]
];

defendSpawn =
[
 [ [ _patrolGroup, "zoneCentre" ], [ "DEFEND" ] ],
 [ [ _smallGroup, "zoneCentre" ], [ "PATROL_GARRISON" ] ],
 [ [ _patrolGroup, "zoneCentre" ], [ "DEFEND" ] ],
 [ [ _smallGroup, "zoneCentre" ], [ "PATROL_GARRISON" ] ]
];

for "_i" from 1 to 3 do {
[ mainSpawn1 ] spawn T8U_fnc_Spawn;
[ mainSpawn2 ] spawn T8U_fnc_Spawn;
};

for "_i" from 1 to 2 do {
[ mainSpawn3 ] spawn T8U_fnc_Spawn;
[ mainSpawn4 ] spawn T8U_fnc_Spawn;
};

[ defendSpawn ] spawn T8U_fnc_Spawn;