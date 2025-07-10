@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
title %~nx1
set /p a=输入变快速度: 
%f% -i "%~nx1" -af "atempo=%a%" "Speed-%~n1.mp4"
pause
