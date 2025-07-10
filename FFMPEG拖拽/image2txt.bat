@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
echo 请把图片摆正，二元化，剪切好以提高识别率
title %~nx1
%t% "%~nx1" "%~n1"
echo.
for /f "usebackq tokens=*" %%i in ("%~n1.txt") do (
echo %%i
)
echo.
pause
