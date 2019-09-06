/*  Displays Gruppe Adler logo and mission name at start of game
*
*   executed on players via init.sqf
*/

#include "component.hpp"

if (!hasInterface) exitWith {};
[{!isNull player}, {
    [{
        [] execVM "USER\scripts\intro.sqf";
    }, [], 3] call CBA_fnc_waitAndExecute;
}, []] call CBA_fnc_waitUntilAndExecute;
