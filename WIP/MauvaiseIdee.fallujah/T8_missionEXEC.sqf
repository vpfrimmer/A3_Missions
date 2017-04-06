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


_null = [] spawn 
{
	while {time < 10} do
	{
		{
			if(side _x == EAST) then {
			
				if(secondaryWeapon _x == "CUP_launch_RPG7V") then 
				{
					removeBackpack _x;
					_x removeWeapon "CUP_launch_RPG7V";
					_x addWeapon "rhs_weap_rpg7";
					_x addBackpack "CUP_B_RPGPack_Khaki";
					for "_i" from 1 to 5 do {_x addItemToBackpack "rhs_rpg7_PG7VL_mag";};
			};
				};	
		} forEach allUnits;
		
		sleep 20;
	};		
};

sleep 5;

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////

_smallGroup = ["CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AT"];
_patrolGroup = ["CUP_O_TK_INS_Soldier_TL", "CUP_O_TK_INS_Soldier", "CUP_O_TK_INS_Soldier_AT", "CUP_O_TK_INS_Soldier_MG"];
_sniperGroup = ["CUP_O_TK_INS_Sniper", "CUP_O_TK_INS_Soldier_Enfield"];

T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = []; 

