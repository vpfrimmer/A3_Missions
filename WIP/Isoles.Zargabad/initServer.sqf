waitUntil { time > 0 };

posArray = [p1, p2, p3, p4, p5, p6];

selectedTrig = posArray call BIS_fnc_selectRandom;
selectedPos = getPos selectedTrig;
publicVariable "selectedPos";

_captivesGroup = createGroup west;
if(!isNil "officier") then 
{
	officier setPos selectedPos;
	[officier] joinSilent _captivesGroup;
};

if(!isNil "r1") then 
{
	r1 setPos selectedPos;
	[r1] joinSilent _captivesGroup;
};

if(!isNil "r2") then 
{
	r2 setPos selectedPos;
	[r2] joinSilent _captivesGroup;
};

_pilotsGroup = createGroup west;
if(!isNil "pilot1") then 
{
	[pilot1] joinSilent _pilotsGroup;
};

if(!isNil "pilot2") then 
{
	[pilot2] joinSilent _pilotsGroup;
};