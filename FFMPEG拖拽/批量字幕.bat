@echo off
setlocal enabledelayedexpansion
chcp 65001>>nul
echo ！！！请复制到需要转换的目录内！！！
set as="I:\UX\unsloth\Scripts\auto_subtitle.exe"
echo %as%
for /f "tokens=*" %%i in ('dir /s /b ^| find "mp4"') do (
echo %%i 
title %%~nxi
%as% "%%i"
del %%~ni.wav
move "%%~ni.srt" "%%~dpi"
)
pause