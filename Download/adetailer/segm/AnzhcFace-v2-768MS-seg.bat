@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://huggingface.co/Anzhc/Anzhcs_YOLOs
call %HUGGING_FACE% segm\ AnzhcFace-v2-768MS-seg.pt Anzhc/Anzhcs_YOLOs Anzhc%%%%%%%%20Face%%%%%%%%20seg%%%%%%%%20768MS%%%%%%%%20v2%%%%%%%%20y8n.pt?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
