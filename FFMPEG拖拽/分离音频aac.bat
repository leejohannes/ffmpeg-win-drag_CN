@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
%f% -i "%~nx1" -c:a aac -vn "%~n1.aac"
::pause