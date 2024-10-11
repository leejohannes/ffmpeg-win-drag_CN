@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
%f% -i "%~nx1" -c:a mp3 -vn "%~n1.mp3"
::pause