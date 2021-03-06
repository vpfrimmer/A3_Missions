/*

Author 	: TECAK. To script by Sparfell reworked by Mystery.

Version : 1

Description : Ajoute un onglet "inventaire" dans le briefing ingame dans lequel vous pouvez voir votre inventaire avant de lancer la mission.

Use		: [] execVM "inventory_briefing.sqf";

*/
_addExtPAA = 
{
	private["_path", "_array", "_len", "_last4"];
	_path = toLower _this;
	_array = toArray(_path);
	_len = count _array;
	_last4 = toString[_array select _len-4, _array select _len-3, _array select _len-2, _array select _len-1];
	if(_last4 == ".paa")then {_this} else {_this + ".paa"};
};

_addToArray =
{
	private["_value", "_array", "_count", "_found", "_x", "_forEachIndex"];
	_value = _this select 0;
	_array = _this select 1;
	_count = _this select 2;
	_found = false;
	{
		if(_x select 0 == _value)exitWith
		{
			_found = true;
			_array set [_forEachIndex, [_value, (_x select 1) + _count]];
		};
	}forEach _array;
	
	if(!_found)then
	{
		_array set [count _array, [_value, _count]];
	};
};

_text = "";
_addGroupUnitToDiary = 
{
	_unit = _this select 0;
	_number = _this select 1;
	_text = _text + "<font color='#FFFFBB'>" + (str _number) + ". " + (name _unit) + "</font>" + (if(leader _unit == _unit)then{" (Squad Leader)"}else{""});
	if(primaryWeapon _unit != "")then
	{
		_name = getText(configFile >> "CfgWeapons" >> (primaryWeapon _unit) >> "displayName");
		_text = _text + " - " + _name;
	};
	_text = _text + "<br/>";
	
	_weaponsPrimary = [primaryWeapon _unit, secondaryWeapon _unit] - [""];
	_weapons = weapons _unit - _weaponsPrimary - ["Binocular","lerca_1200_black","Rangefinder","Laserdesignator","lerca_1200_tan","BWA3_Vector","AGM_Vector"];
    _assignedItems = assignedItems _unit - [""];
	_items = items _unit - [""];
	_weaponsList = [];
	_magasinesList = [];
    
    // Compile inventory pictures
	{
		_cfg = configFile >> "CfgWeapons" >> _x;
		_pic = getText(_cfg >> "picture") call _addExtPAA;
		if(!(_x in items _unit))then
		{
			[_pic, _weaponsList, 1] call _addToArray;
		};
	} forEach (_weapons)+(handgunItems _unit - [""]);

    {
		_cfg = configFile >> "CfgWeapons" >> _x;
		_pic = getText(_cfg >> "picture") call _addExtPAA;
		[_pic, _magasinesList, 1] call _addToArray;
	} forEach (_assignedItems + _items);
    
    {
		_cfg = configFile >> "CfgMagazines" >> _x;
		_pic = getText(_cfg >> "picture") call _addExtPAA;
		[_pic, _magasinesList, 1] call _addToArray;
	} forEach (magazines _unit);
	
    // Display pictures
	{
		_cfg = configFile >> "CfgWeapons" >> _x;
		_pic = getText(_cfg >> "picture") call _addExtPAA;
		_text = _text + "<img image=""" + _pic + """ height=48 /> ";
	} forEach (_weaponsPrimary)+(primaryWeaponItems _unit - [""]);

	{
		_pic = _x select 0;
		_count = _x select 1;
		for "_i" from 1 to _count do
		{
			_text = _text + "<img image=""" + _pic + """ height=48 /> ";
		};
	} forEach _weaponsList;
	_text = _text + "<br/>";
	
	{
		_pic = _x select 0;
        _count = _x select 1;
        _count = str _count;
        if ((_x select 1) > 1) then {
            _text = _text + "<img image=""" + _pic + """ height=30 />" + "x" + _count + "  ";
        } else {
            _text = _text + "<img image=""" + _pic + """ height=30 />" + "  ";
        };
    } forEach _magasinesList;
	_text = _text + "<br/>";

};

[player, 1] call _addGroupUnitToDiary;
_name = toArray(str (group player));
_shorten = [];
for "_i" from 2 to ((count _name) - 1) do
{
	_shorten set [_i - 2, _name select _i];
};
_name = toString(_shorten);
player createDiarySubject ["inventory","Inventaire"];
player createDiaryRecord ["inventory", ["Mon équipement (" + _name + ")", _text]];