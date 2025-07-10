@echo off
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
%f% -i "%~nx1" -c:a pcm_s16le -vn "%~n1.wav"
::pause