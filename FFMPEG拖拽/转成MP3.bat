@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
%f% -i "%~nx1" -c:a mp3 "MP3-%~n1.mp3"
::pause