@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
title %~nx1
set /p a=输入FPS:
%f% -hwaccel cuda -hwaccel_output_format cuda -i "%~nx1" -vf "fps=fps=%a%" -c:v h264_nvenc "fps-%~n1.mp4"
pause