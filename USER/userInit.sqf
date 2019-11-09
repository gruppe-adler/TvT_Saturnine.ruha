/*  Wird zum Missionsstart auf Server und Clients ausgeführt.
*   Funktioniert wie die init.sqf.
*/

[{
    _firstActiveSectorID = selectRandom [2,3];
    _roundLength = 1800;
    _opforDirection = -1;

    _dateAndTimeArray = [
        [1985,3,28,6,30],
        [1985,3,28,7,00],
        [1985,3,28,7,30],
        [1985,3,28,8,00],
        [1985,3,28,9,00],
        [1985,3,28,10,00],
        [1985,3,28,11,30],
        [1985,3,28,13,30],
        [1985,3,28,15,30]
    ];

    _weatherArray = [
        [0,[0,0.014,0]],
        [0,[0.2,0.05,0]],
        [0,[0.1,0.05,0]],
        [0,[0.05,0.01,0]],
        [0.5,[0.07,0.05,0]],
        [1,[0.2,0.05,0]],
        [0.2,[0.1,8,0]],
        [0,[0,0,0]],
        [0,[0.2,0.05,0]]
    ];

    [_firstActiveSectorID, _roundLength, _opforDirection, _dateAndTimeArray, _weatherArray] call grad_linearSD_fnc_startLinearSD;

},[],[10,0] select didJIP] call CBA_fnc_waitAndExecute;


[] exeCVM "USER\scripts\intro.sqf";