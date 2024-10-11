@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
set /p a=输入码率(不带M):
%f% -i "%~nx1" -b:v %a%M "%~n1-%a%k%~x1"
pause