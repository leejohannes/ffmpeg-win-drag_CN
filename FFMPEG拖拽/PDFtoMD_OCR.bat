@echo off
chcp 65001>>nul
setlocal enabledelayedexpansion
for /f "delims=" %%i in ('type "%~dp0config.txt"^| findstr "="') do set %%i
echo 请拖拽需要转换的目录到bat图标上
title %~nx1
if "%~x1" == ".pdf" (
echo %md_s% --output_format markdown --force_ocr "%~dpnx1"  --output_dir "%~dp1"
%md_s% --output_format markdown --force_ocr "%~dpnx1"  --output_dir "%~dp1\"
) else  (
echo %md% --output_format markdown --force_ocr "%~dpn1" --output_dir "%~dpn1_md"
%md% --output_format markdown --force_ocr "%~dpn1" --output_dir "%~dpn1_md"
)
pause
