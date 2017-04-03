"mrkB1" setMarkerAlpha 0;
"mrkB2" setMarkerAlpha 0;
"mrkB3" setMarkerAlpha 0;
"mrkB4" setMarkerAlpha 0;
"mrkB5" setMarkerAlpha 0;
"mrkB6" setMarkerAlpha 0;
"mrkAllZone" setMarkerAlpha 0;
"mrkVillage" setMarkerAlpha 0;

waitUntil {time > 2};


_posArray = ["mrkCible_1", "mrkCible_2"];

_pos = markerPos (selectRandom _posArray);
hacker setPos _pos;
group hacker setSpeedMode "LIMITED";

[group hacker, getPos hacker, 20] call bis_fnc_taskPatrol;