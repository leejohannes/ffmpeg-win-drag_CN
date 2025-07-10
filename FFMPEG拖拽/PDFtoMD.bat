@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
echo 请拖拽需要转换的目录到bat图标上
title %~nx1
::%md% "%~dpn1" --output_format markdown --output_dir "%~dpn1_md"
::%md_s% "%~dpnx1" --output_format markdown --output_dir "%~dpn1_md"
if "%~x1" == ".pdf" (
echo %md_s% "%~dpnx1" --output_format markdown --output_dir "%~dp1"
%md_s% "%~dpnx1" --output_format markdown --output_dir "%~dp1\"
) else  (
echo %md% "%~dpn1" --output_format markdown --output_dir "%~dpn1_md"
%md% "%~dpn1" --output_format markdown --output_dir "%~dpn1_md"
)
pause
