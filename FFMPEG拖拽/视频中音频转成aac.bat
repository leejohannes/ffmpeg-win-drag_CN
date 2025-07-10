@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
%f% -i "%~nx1" -c:a aac -b:a 64k -c:v copy "aac-%~nx1"
::pause