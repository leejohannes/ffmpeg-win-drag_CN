@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
title %~nx1
set /p a=输入变慢速度:
%f% -hwaccel cuda -hwaccel_output_format cuda -i "%~nx1" -c:v h264_nvenc -vf "setpts=%a%*PTS" "Speed-%~n1.mp4"
::%f% -i "%~nx1" -vf "setpts=%a%*PTS" -af "atempo=%a%" "Speed-%~n1.mp4"
pause
