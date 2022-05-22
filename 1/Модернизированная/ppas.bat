@echo off
SET THEFILE=C:\Distr\1\Модернизированная\Последня ярабочая.exe
echo Linking %THEFILE%
ld.exe  -s --subsystem windows   -o "C:\Distr\1\Модернизированная\Последня ярабочая.exe" "C:\Distr\1\Модернизированная\link.res"
if errorlevel 1 goto linkend
goto end
:asmend
echo An error occured while assembling %THEFILE%
goto end
:linkend
echo An error occured while linking %THEFILE%
:end
