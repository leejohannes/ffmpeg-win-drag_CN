@echo off
::chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "tokens=*" %%i in (%1) do (
echo %%i
)
pause