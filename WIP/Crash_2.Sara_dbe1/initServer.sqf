call compile preprocessfile "SHK_pos\shk_pos_init.sqf";

_pos = ["mrkCrash"] call SHK_pos;
heli setPos [_pos select 0, _pos select 1, 600];