@echo off
chcp 65001>nul
echo ！！！请复制到需要删除的目录内！！！
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
for /f "tokens=*" %%i in ('dir /s /b ^| find ".ts"') do (
echo %%i
%f%  -hide_banner -i "%%i" -c copy "%%~dpi%%~ni.mp4"
)
pause