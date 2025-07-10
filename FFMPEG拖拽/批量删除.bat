@echo off
chcp 65001>nul
title %~n0
:start
echo ！！！请复制到需要删除的目录内！！！
set /p a=输入要删除文件所含名字:
dir /s /b | findstr "%a%"
set /p b=是否删除(y/n):
if %b%==y (
for /f "tokens=*" %%i in ('dir /s /b ^| findstr "%a%"') do (
echo %%i
del "%%i"
))
goto :start 
pause