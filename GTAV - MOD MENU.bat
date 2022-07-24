mode con: cols=49 lines=9
title GTAV - MOD MENU
:MENU_START
@echo off
cls
set INPUT=false
set "MENU_OPTION="
set "OPTION1_INPUT="
set "OPTION2_INPUT="
echo +===============================================+
echo . Grand Theft Auto V - MOD MENU                 .
echo +===============================================+
echo .                                               .
echo .  1) MODS OFF                                  .
echo .  2) MODS ON                                   .
echo .  3) EXIT                                      .
echo .                                               .
echo +===============================================+
set /p MENU_OPTION="OPTION: "

IF %MENU_OPTION%==1 GOTO OPTION1
IF %MENU_OPTION%==2 GOTO OPTION2
IF %MENU_OPTION%==3 GOTO OPTION3
IF %INPUT%==false GOTO DEFAULT

:OPTION1
move "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\openCameraV.asi" "G:\SteamLibrary\steamapps\common\GrTA5-mods\"
move "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\OpenIV.asi" "G:\SteamLibrary\steamapps\common\GrTA5-mods\"
move "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\dinput8.dll" "G:\SteamLibrary\steamapps\common\GrTA5-mods\"
timeout 1 > NUL
exit /b

:OPTION2
move "G:\SteamLibrary\steamapps\common\GrTA5-mods\openCameraV.asi" "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\"
move "G:\SteamLibrary\steamapps\common\GrTA5-mods\OpenIV.asi" "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\"
move "G:\SteamLibrary\steamapps\common\GrTA5-mods\dinput8.dll" "G:\SteamLibrary\steamapps\common\Grand Theft Auto V\"
timeout 1 > NUL
exit /b

:OPTION3
set INPUT=true
exit /b

:DEFAULT
echo Option not available
timeout 1 > NUL
GOTO MENU_START