@echo off
color 0a
rem +==============================================================================================
rem | Batch file I use to Convert .mid files into .c for arduino
rem | Requirement 1: https://github.com/LenShustek/miditones
rem | Requirement 2: https://www.arduino.cc/en/Main/Software
rem |
rem | Please don't distribute, link instead
rem | - ArduinoPlays - 11/14/2015
rem +==============================================================================================

title Midifying...

miditones_new -t16 "%1"
timeout 1 >nul
miditones_new -t16 -b "%1" "%1.bin"
timeout 1 >nul
%1:~0,-3%
miditones_scroll "%1"
pause
