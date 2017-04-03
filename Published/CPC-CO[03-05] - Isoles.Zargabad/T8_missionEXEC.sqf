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

//////////////////////////////////////  CUSTOM FUNCTION  //////////////////////////////////////
//
//			This function is called for every unit in a group 
//			where it is defined in the groups definiton below
//

T8U_fnc_rmNVG_TEST = 
{
	_this spawn
	{
		sleep 5;
	
		private ["_i"];
		_i = true;
		switch ( side _this ) do 
		{ 
			case WEST:			{ _this unlinkItem "NVGoggles"; };
			case EAST:			{ _this unlinkItem "NVGoggles_OPFOR"; };
			case RESISTANCE:	{ _this unlinkItem "NVGoggles_INDEP";  };
			default				{ _i = false; };
		};
		
		if ( _i ) then 
		{
			_this removePrimaryWeaponItem "acc_pointer_IR";
			_this addPrimaryWeaponItem "acc_flashlight";
		};
			
		sleep 1;
		group _this enableGunLights "forceon";
	};
};

//////////////////////////////////////  UNIT SETUP  //////////////////////////////////////

// Groups, available for HALO, ... support!  - this means EAST has two groups with 4 man, which are available as HALP Drop
T8U_var_SupportUnitsEAST = [];
T8U_var_SupportUnitsWEST = [];
T8U_var_SupportUnitsRESISTANCE = [];

_duoPatrol = [ "O_MU_islam_R2_F", "O_MU_islam_R3_F" ];
_patrol = _duoPatrol + [ "O_MU_islam_TL_F", "O_MU_islam_medic_F", "O_MU_islam_GL_F", "O_MU_islam_AR_F" ];
_carPatrol = [ "O_MU_IS_Jeep" ];

classicContainer = 
[
	[ [ _duoPatrol, "2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "2" ], [ "PATROL_GARRISON" ], [ true, true, true ]],
	[ [ _carPatrol, "2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "2" ], [ "PATROL_GARRISON" ], [ true, true, true ]],
	[ [ _patrol, "1" ], [ "PATROL_URBAN" ], [ true, true, true ]]
];

borderContainer =
[
	[ [ _patrol, "border" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _patrol, "border_1" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _patrol, "border_2" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _patrol, "border_3" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _patrol, "border_4" ], [ "PATROL" ], [ true, true, true ]]
];

for "_i" from 1 to 3 do {
	classicContainer = classicContainer + classicContainer;	
};

for "_i" from 1 to 1 do {
	borderContainer	= borderContainer + borderContainer;	
};

[classicContainer] spawn T8U_fnc_Spawn;
[borderContainer] spawn T8U_fnc_Spawn;


// ------------------------------------------------ THE END ---------------------------------------------------
