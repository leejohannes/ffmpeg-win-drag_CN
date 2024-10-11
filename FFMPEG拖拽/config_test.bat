@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
echo f=%f%
echo as=%as%
::%temp%\..\..\roaming\python\python312\scripts\
echo %~dp0
echo %~n1
echo %~n2
pause