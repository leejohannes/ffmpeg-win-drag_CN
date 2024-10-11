@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
%f% -hide_banner -hwaccel cuda -hwaccel_output_format cuda -i "%1" -c:v h264_nvenc -b:v 0.8M -c:a aac -ac 1 -b:a 64k "%~dpn1-0.8.mp4"
::pause