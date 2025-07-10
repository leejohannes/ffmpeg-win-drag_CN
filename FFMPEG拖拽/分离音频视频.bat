@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
start "Audio" %f% -i "%~nx1" -c:a copy -vn "%~n1.m4a"
start "Video" %f% -i "%~nx1" -c:v copy -an "%~n1.m4v"
::pause