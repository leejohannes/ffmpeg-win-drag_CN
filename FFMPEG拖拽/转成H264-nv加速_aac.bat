@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
title %~nx1
%f% -hwaccel cuda -hwaccel_output_format cuda -i "%~nx1" -c:v h264_nvenc -vf "scale_cuda=format=yuv420p,fps=24" -c:a aac "%~n1-h264.mp4"
::pause