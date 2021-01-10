@echo off

set PATH="../Global"
set Input1=
set asarVer=asar
set GAMDID="WAGH"
set ROMVer=
set ROMExt=.sfc
set HackCheck=""
set HackName=""

setlocal EnableDelayedExpansion

echo Enter the ROM version you want to assemble.
echo Valid options: "WAGH_U" "WAGH_E"
echo For custom ROM versions, use "HACK_<HackName>, where <HackName> is the rest of the custom ROM Map file's name before the extension."

:Input
set /p Input1="%Input1%"
set HackCheck=%Input1:~0,5%
if "%Input1%" equ "" goto :Exit
if "%HackCheck%" equ "HACK_" goto :Hack
if "%Input1%" equ "" goto :Exit
if "%Input1%" equ "WAGH_U" goto :USA
if "%Input1%" equ "WAGH_E" goto :PAL

echo. "%Input1%" is not a valid ROM version.
set Input1=
goto :Input

:Hack
set ROMNAME=%Input1:~5,100%
set ROMVer=(Hack)
goto :Assemble

:USA
set ROMNAME=Williams Arcade's Greatest Hits
set ROMVer=(U)
goto :Assemble

:PAL
set ROMNAME=Williams Arcade's Greatest Hits
set ROMVer=(E)

:Assemble

set output="%ROMNAME% %ROMVer%%ROMExt%"

if exist %output% del %output%
echo Assembling "%ROMNAME% %ROMVer%%ROMExt%" ... this may take a minute.
echo.

%asarVer% --fix-checksum=on --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=0 ..\Global\AssembleFile.asm %output%

echo Assembling Defender/Defender II SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/Engine_Defender.asm" ..\Global\AssembleFile.asm SPC700\Engine_Defender.bin

echo Assembling Joust SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/Engine_Joust.asm" ..\Global\AssembleFile.asm SPC700\Engine_Joust.bin

echo Assembling Robotron 2084 SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/Engine_Robotron2084.asm" ..\Global\AssembleFile.asm SPC700\Engine_Robotron2084.bin

echo Assembling Sinistar SPC700 engine...
%asarVer% --no-title-check --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=4 --define PathToFile="SPC700/Engine_Sinistar.asm" ..\Global\AssembleFile.asm SPC700\Engine_Sinistar.bin

echo Assembling ROM...
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=1 ..\Global\AssembleFile.asm %output%

if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt
%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=6 ..\Global\AssembleFile.asm Temp.txt
for /f "delims=" %%x in (Temp.txt) do set Firmware=%%x
if "%Firmware%" equ "NULL" goto :NoFirmware
if exist %Firmware% goto :NoFirmware
if exist ..\Firmware\%Firmware% goto :CopyFirmware
goto :NoFirmware

:CopyFirmware
echo Copied %Firmware% to the disassembly folder
copy ..\Firmware\%Firmware% %Firmware%
:NoFirmware
if exist ..\%GAMDID%\Temp.txt del ..\%GAMDID%\Temp.txt

%asarVer% --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=2 ..\Global\AssembleFile.asm %output%

%asarVer% --fix-checksum=off --define GameID="%GAMDID%" --define ROMID="%Input1%" --define FileType=3 ..\Global\AssembleFile.asm %output%

echo Cleaning up...
if exist ..\%GAMDID%\SPC700\Engine_Defender.bin del ..\%GAMDID%\SPC700\Engine_Defender.bin
if exist ..\%GAMDID%\SPC700\Engine_Joust.bin del ..\%GAMDID%\SPC700\Engine_Joust.bin
if exist ..\%GAMDID%\SPC700\Engine_Robotron2084.bin del ..\%GAMDID%\SPC700\Engine_Robotron2084.bin
if exist ..\%GAMDID%\SPC700\Engine_Sinistar.bin del ..\%GAMDID%\SPC700\Engine_Sinistar.bin

echo.
echo Done!
echo.
echo Press Enter to re-assemble the chosen ROM.
goto :Input

:Exit
exit
