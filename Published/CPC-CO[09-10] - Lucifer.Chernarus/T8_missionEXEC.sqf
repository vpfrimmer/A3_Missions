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

_sniperPatrol = [ "rhs_vdv_recon_marksman", "rhs_vdv_recon_rifleman_l" ];
_duoPatrol = [ "rhs_msv_rifleman", "rhs_msv_efreitor" ];
_patrol = _duoPatrol + [ "rhs_msv_sergeant", "rhs_msv_at", "rhs_msv_machinegunner", "rhs_msv_grenadier", "rhs_msv_medic" ];
_carPatrol = [ "rhs_tigr_m_msv" ];
_airPatrol = [ "RHS_Mi8MTV3_UPK23_vdv" ];

classicContainer = 
[
	[ [ _sniperPatrol, "mrkEst" ], [ "OVERWATCH", "mrkEstO", 100, 300 ], [ false, false, true ] ],
	[ [ _sniperPatrol, "mrkNord" ], [ "OVERWATCH", "mrkNordO", 100, 300 ] ],
	[ [ _sniperPatrol, "mrkOuest" ], [ "OVERWATCH", "mrkOuestO", 100, 300 ] ],	

	[ [ _duoPatrol, "mrkCache" ], [ "PATROL" ], [ false, false, true ]],

	[ [ _duoPatrol, "mrkNord" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "mrkNord" ], [ "PATROL" ], [ true, true, true ]],
	
	[ [ _duoPatrol, "mrkEst" ], [ "PATROL" ], [ false, true, true ]],
	[ [ _duoPatrol, "mrkEst" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _carPatrol, "mrkEst", false ], [ "PATROL_URBAN" ], [ false, true, true ]],
	[ [ _carPatrol, "mrkEst", false ], [ "PATROL_URBAN" ], [ true, true, true ]],
	
	[ [ _duoPatrol, "mrkOuest" ], [ "PATROL" ], [ false, true, true ]],
	[ [ _duoPatrol, "mrkOuest" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _carPatrol, "mrkOuest", false ], [ "PATROL_URBAN" ], [ false, true, true ]],
	[ [ _carPatrol, "mrkOuest", false ], [ "PATROL_URBAN" ], [ true, true, true ]],

	[ [ _patrol + _patrol, "mrkCastle" ], [ "DEFEND_BASE" ], [ true, false, false ]],
	[ [ _patrol, "mrkSmallZone" ], [ "PATROL" ], [ true, false, false ]],
	[ [ _duoPatrol, "mrkAllZone" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "mrkAllZone" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "mrkAllZone" ], [ "PATROL" ], [ true, true, true ]],
	[ [ _duoPatrol, "mrkAllZone" ], [ "PATROL" ], [ true, true, true ]]
];

reinfContainer = 
[
	[ [ _airPatrol, "mrkReinforcements4" ], [ "ATTACK", "mrkSmallZone" ] ],
	[ [ _patrol, "mrkReinforcements" ], [ "ATTACK", "mrkSmallZone" ] ],
	[ [ _patrol, "mrkReinforcements" ], [ "ATTACK", "mrkSmallZone" ] ],
	[ [ _carPatrol, "mrkReinforcements2", false ], [ "ATTACK", "mrkSmallZone" ] ],
	[ [ _patrol, "mrkReinforcements3" ], [ "ATTACK", "mrkSmallZone" ] ],
	[ [ _patrol, "mrkReinforcements3" ], [ "ATTACK", "mrkSmallZone" ] ]
];


[classicContainer] spawn T8U_fnc_Spawn;

_reinf = [] spawn 
{
	isTaken = 0;
	waitUntil{ isTaken == 1; };
	[reinfContainer] spawn T8U_fnc_Spawn;
};


// ------------------------------------------------ THE END ---------------------------------------------------
