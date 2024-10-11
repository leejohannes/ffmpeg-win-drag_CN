@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
start "" "%~dpnx1"
set /p ss=起始时间HH:MM:SS.xxx: 
set /p t=结束时间HH:MM:SS.xxx: 
start "" %f% -i "%~nx1" -ss %ss% -to %t% -c copy "cut-%~nx1"
::pause