@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| find /i "="') do set %%i
title %~n1
%f% -protocol_whitelist file,http,https,tcp,tls,crypto -allowed_extensions ALL -i "%~nx1" -c copy "%~n1.mp4"
::exit
pause