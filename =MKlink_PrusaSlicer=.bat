@ECHO ----------------------------------------------------------
@ECHO Alias Folder will be generated  !!!
@ECHO ----------------------------------------------------------


RD /S /Q "C:\Users\%USERNAME%\AppData\Roaming\PrusaSlicer"
Mklink /d "C:\Users\%USERNAME%\AppData\Roaming\PrusaSlicer" "%cd%\_PrusaSlicer_ROAMING"


@ECHO ----------------------------------------------------------
@ECHO Alias Directories are created ...
@ECHO ----------------------------------------------------------
timeout 1



:: %USERNAME% = gets "current user name"
:: %USERDOMAIN% = gets "current domain name"

:: %cd%"   <-- current path
:: echo %cd%