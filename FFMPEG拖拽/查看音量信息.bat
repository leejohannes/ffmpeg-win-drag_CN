@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
title %~nx1
%f% -i "%~nx1" -af volumedetect -vn -f null nul
pause