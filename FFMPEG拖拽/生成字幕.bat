@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
title %~n1
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
%as% "%~nx1" --srt_only  "True"
::del /f %temp%\%~n1.wav
move %temp%\%~n1.wav %~dp1
::pause