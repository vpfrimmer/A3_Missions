
_playerVar = player getVariable "SRS_unitVariable";
_playerVar set [srs_beingHealed,False];
_playerVar set [srs_beingDragged,False];
[player,_playerVar,True] call SRS_fnc_unitVarSetter;

if(SRS_toggleCam) then{player switchCamera "EXTERNAL";};
player setDamage 1;
[[player],"SRS_fnc_removeDownedMarker"] call BIS_fnc_MP;
titleFadeOut 5;
