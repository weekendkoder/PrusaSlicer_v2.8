:: defining a "window"-title
TITLE prusa-slicer_window

call "=MKlink_PrusaSlicer=.bat"
timeout 1

@echo off

echo  #####################################
echo  #   Starting the Application and    #
echo  #   makes it "one-click" portable   #
echo  #####################################
echo.
echo.
echo.
timeout 1

if not DEFINED IS_MINIMIZED set IS_MINIMIZED=1 && start "" /min "%~dpnx0" %* && exit
".\prusa-slicer.exe"
:: timeout 1         
:: call "_SHUTdown_Script.bat"
exit




:: ///////////////////////////////////////////////////////////////////////////////////////////////

:: %USERNAME% = gets "current user name"
:: %USERDOMAIN% = gets "current domain name"
:: %cd%"   <-- current path
:: echo %cd%
::  %d  <-- for CMD
::  %%d <-- for *.bat

:: RMDIR "%__pycache__%" /S /Q
:: RD /S /Q "2.82\__pycache__"
:: FOR /d /r . %%d IN ("2.82\scripts\addons\__pycache__") DO @IF EXIST "%%d" rd /s /q "%%d"

:: cd 2.82\scripts\
:: FOR /d /r . %%d IN ("__pycache__") DO @IF EXIST "%%d" rd /s /q "%%d"
