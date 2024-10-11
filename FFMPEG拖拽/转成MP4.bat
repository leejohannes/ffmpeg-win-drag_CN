@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
start "%~nx1" %f% -i "%~nx1" -c copy "MP4-%~n1.mp4"
::pause