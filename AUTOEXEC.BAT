@echo off
echo Wybierz opcje:
echo 1 - Instalacja ubios.nsh 
echo 2 - Instalacja wedid.nsh oraz gpio.nsh
set /p opcja=Podaj numer opcji: 

if "%opcja%"=="1" goto BIOS
if "%opcja%"=="2" goto WEDISH
echo Niepoprawny wybor!!!
goto END

:BIOS
echo Rozpoczynam instalację ubios.nsh 
fs0: 
\biosAC30\ubios.nsh 
exit
goto END

:WEDISH
echo Instaluję wedid.nsh
fs0:
\PTN3460\wedid.nsh
echo Wcisnij enter by zainstalowc gpio.nsh
pause
echo Uruchamiam gpio.nsh
\ITE-IT5121\gpio.nsh
goto END

:END
echo Skrypt zakonczony.
pause


