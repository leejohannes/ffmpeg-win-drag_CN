@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
start "%~nx1+%~nx2" %f% -i "%~nx1" -i "%~nx2" -c:v copy -c:a aac  "%~n1+%~n2.mp4"
::pause