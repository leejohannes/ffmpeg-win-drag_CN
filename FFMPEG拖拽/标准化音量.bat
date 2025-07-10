@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
::start "%~nx1" %f% -i "%~nx1" -c:v copy -c:a aac "%~n1-normL%~x1"
start "%~nx1" %f% -i "%~nx1" -c:v copy -af loudnorm=i=-14 -c:a mp3 "%~n1-normL%~x1"
::start "%~nx1" %f% -i "%~nx1" -c:v copy -b:a 128k "%~n1-normL%~x1"
::pause