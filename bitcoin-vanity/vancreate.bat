@echo off
TITLE Bitcoin Vanity Address Generator - IamRaviTejaG

CALL :GETINPUT

:GETINPUT
cls
echo NOTE : All the prefix letters have been added for your convenience.
echo.
echo ==============================================================
echo Press 1 to create vanity BTC Address.
echo Press 2 to create vanity LTC Address.
echo Press 3 to create vanity DOGE Address.
echo Press 4 to exit.
echo ==============================================================
echo.
set /p Entry=Enter your choice : 
if "%Entry%"=="1" (GOTO BTC)
if "%Entry%"=="2" (GOTO LTC)
if "%Entry%"=="3" (GOTO DOGE)
if "%Entry%"=="4" (GOTO GATE)
if "%Entry%"=="" (GOTO GETINPUT)

:BTC
echo.
set /p Patt=Enter your vanity pattern : 1
echo.
vanitygen.exe 1%Patt%
GOTO SAFETY

:LTC
echo.
set /p Patt=Enter your vanity pattern : L
echo.
vanitygen.exe -X 48 L%Patt%
GOTO SAFETY

:DOGE
echo.
set /p Patt=Enter your vanity pattern : D
vanitygen.exe -X 30 D%Patt%
GOTO SAFETY

:SAFETY
echo.
echo.
echo ==============================================================
echo Please save your Private Key and Address safely.
echo.
echo Getting the Priv Key and Address printed is recommended.
echo ==============================================================
echo.
echo.

set /p a=Do you want to exit ? (y/n) : 
echo.
if "%a%"=="y" (GOTO GATE)
if "%a%"=="n" (GOTO GETINPUT)

:GATE
echo Created by: IamRaviTejaG
echo Date: 15/6/2014
echo.
pause
EXIT