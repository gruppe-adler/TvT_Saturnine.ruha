sleep 30;
playSound "intro";

private _introPicBlack = findDisplay 46 ctrlCreate ["RscPicture", -1];
_introPicBlack ctrlSetPosition [
    safeZoneX,  
    safezoneY,
    safeZoneW,
    safezoneH
];
_introPicBlack ctrlsetText "USER\data\intro.paa";
_introPicBlack ctrlsetFade 1;
_introPicBlack ctrlCommit 0;
_introPicBlack ctrlsetFade 0;
_introPicBlack ctrlCommit 3;
sleep 3;


sleep 10;

_introPicBlack ctrlsetFade 1;
_introPicBlack ctrlCommit 6;