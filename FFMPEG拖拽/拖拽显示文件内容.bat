@echo off
::chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "usebackq tokens=*" %%i in ("%1") do (
echo %%i
)
pause