@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
%f% -i "%~nx1" -ac 1 "%~n1-mono%~x1"
::pause