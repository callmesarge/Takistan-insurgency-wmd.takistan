//EOS SYSTEM
[]execVM "eos\OpenMe.sqf";
call compile preprocessFile "=BTC=_revive\=BTC=_revive_init.sqf";
[] call compile preProcessFile "scripts\vehInitFunctions.sqf";
[] execVM "scripts\zlt_fastrope.sqf";
[] spawn {call compile preprocessFileLineNumbers "EPD\Ied_Init.sqf";};
[] execVM "scripts\transport\init.sqf";
[] execVM "scripts\player\init.sqf";
call compile preProcessFileLineNumbers "Objectives\fhqtt2.sqf";
call compile preProcessFileLineNumbers "Objectives\briefing.sqf";
[player] execVM "scripts\groupsMenu\initGroups.sqf";



skiptime (((paramsArray select 0) - daytime + 24) % 24);

switch (paramsArray select 1) do {
  case 0: { 0 setOvercast 0; 0 setRain 0; };
  case 1: { 0 setOvercast 0.8; 0 setRain 0.3; };
  case 2: { 0 setOvercast 0.9; 0 setRain 0.6; };
  case 3: { 0 setOvercast 1; 0 setRain 1; };
};

switch (paramsArray select 2) do {
  case 0: { 0 setFog 0; };
  case 1: { 0 setFog 0.3; };
  case 2: { 0 setFog 0.6; };
  case 3: { 0 setFog 1; };
}; 

viewparam = (paramsArray select 3);
if (viewparam == 0) then {setViewDistance 100};
if (viewparam == 1) then {setViewDistance 500};
if (viewparam == 2) then {setViewDistance 1000};
if (viewparam == 3) then {setViewDistance 2000};
if (viewparam == 4) then {setViewDistance 5000};

enableSaving [false, false];
