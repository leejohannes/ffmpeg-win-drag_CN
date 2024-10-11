@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
title %~nx1
%f% -i "%~nx1" -vn -an -f null nul -hide_banner
echo.
pause