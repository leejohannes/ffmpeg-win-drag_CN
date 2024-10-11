@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
set /p a=输入码率(不带M):
%f% -hwaccel cuda -hwaccel_output_format cuda -i "%~nx1" -c:v h264_nvenc -b:v %a%M "%~n1-%a%k%~x1"
pause