@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
title %~nx1
%f% -i "%~nx1" -af volumedetect -vn -f null nul
pause