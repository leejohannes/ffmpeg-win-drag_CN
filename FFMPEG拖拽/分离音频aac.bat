@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
%f% -i "%~nx1" -c:a aac -vn "%~n1.aac"
::pause