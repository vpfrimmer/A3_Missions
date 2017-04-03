/*
	Script d'insertion/extraction héliportée
	Auteur : Sparfell
	Merci à Scarlok, Warzen et Hardballer pour leur aide et à Dranac pour son feedback.
	
	Effet :
	Script de transport héliporté géré par l'IA.
	Pour donner une nouvelle destination à l'hélico :
	- Régler la bonne radio sur le bon channel
	- Utiliser l'action "Communiquer avec hélico" dans le menu molette
	- Ouvrir la map et faire un clic gauche à l'endroit désiré
	Possibilité d'annuler le mouvement en cours en donnant un nouvel ordre.

	Paramètres :
	_this select 0: Type de radio (classname)
	_this select 1: Channel qui doit être sélectionné (number)
	_this select 2: Type de l'hélico (classname)
	_this select 3: Side de l'hélico (side)
	_this select 4: marqueur qui définit la position de départ de l'hélico (marker)
	
	Exemple :
	Ajoutez la ligne suivante dans le fichier "init.sqf" de votre mission et modifiez les paramètres comme désiré
	null = ["ACRE_PRC148",5,independent,"O_Heli_Light_02_unarmed_F","mk_pos_choppa"] execVM "CPC_CHOPPA\call_choppa.sqf";
	
	Note : La direction (azimuth) du marqueur correspond à la direction de spawn de l'hélico.
*/

private ["_radio","_chan","_side","_veh","_pos","_mk","_action","_HasAction","_acre"];

_radio = _this select 0;
_chan = _this select 1;
_side = _this select 2;
_veh = _this select 3;
_pos = _this select 4;

waitUntil {time > 0};

if (isServer) then {
	//création de l'hélico :
	CPC_CHOPPA_Helo = createVehicle [_veh, (markerPos _pos), [], 0, "NONE"];
	CPC_CHOPPA_Helo allowdamage false;
	publicVariable "CPC_CHOPPA_Helo";
	CPC_CHOPPA_Helo setpos (markerPos _pos);
	CPC_CHOPPA_Helo setdir (markerDir _pos);
	createVehicleCrew CPC_CHOPPA_Helo;
	CPC_CHOPPA_Group = createGroup _side;
	publicVariable "CPC_CHOPPA_Group";
	[CPC_CHOPPA_Helo] joinSilent CPC_CHOPPA_Group;
	{[_x] joinSilent CPC_CHOPPA_Group; _x disableAI "AUTOTARGET"; _x disableAI "AUTOCOMBAT"; _x disableAI "SUPPRESSION";} foreach (crew CPC_CHOPPA_Helo);
	CPC_CHOPPA_Helo disableAI "AUTOTARGET"; CPC_CHOPPA_Helo disableAI "AUTOCOMBAT"; CPC_CHOPPA_Helo disableAI "SUPPRESSION";
	//création de l'hélipad
	CPC_CHOPPA_Helipad = "Land_HelipadEmpty_F" createVehicle (markerPos _pos);
	publicvariable "CPC_CHOPPA_Helipad";
	_mk = createMarker ["CPC_CHOPPA_LZ", (markerPos _pos)];
	_mk setMarkerType "mil_Pickup";
	_mk setMarkerColor "ColorIndependent";
	_mk setMarkerAlpha 0;
	CPC_CHOPPA_Helo allowdamage true;
};

if (isClass(configFile >> "CfgPatches" >> "acre_main")) then {_acre = true;} else {_acre = false;};

waitUntil {time > 3};

if (hasInterface) then {
	_HasAction = false;
	if (_acre) then {
		while {alive player} do {
			if (((([] call acre_api_fnc_getCurrentRadioChannelNumber)-1 == _chan) AND (([([] call acre_api_fnc_getCurrentRadio)] call acre_api_fnc_getBaseRadio) == _radio)) OR ((vehicle player) == CPC_CHOPPA_Helo)) then {
				if (!_HasAction) then {
					_action = player addAction ["<t color='#892D97'>Communiquer avec hélico</t>", "CPC_CHOPPA\move_choppa.sqf",0,0,false,true,"",""];
					_HasAction = true;
				};
			} else {
				if (_HasAction) then {
					player removeaction _action; _HasAction = false;
				};
			};
			sleep 4;
		};
	} else {
		while {alive player} do {
			if ((isFormationLeader player) OR ((vehicle player) == CPC_CHOPPA_Helo)) then {
				if (!_HasAction) then {
					_action = player addAction ["<t color='#892D97'>Communiquer avec hélico</t>", "CPC_CHOPPA\move_choppa.sqf",0,0,false,true,"",""];
					_HasAction = true;
				};
			} else {
				if (_HasAction) then {
					player removeaction _action; _HasAction = false;
				};
			};
			sleep 4;
		};
	};
};
