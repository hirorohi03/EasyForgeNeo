@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\DiffusionModels

@REM https://civitai.red/models/2518069/
call %CIVITAI_MODEL_DOWNLOAD% Anima_Custom\ botanAnima_base10V14.safetensors 2518069 2989952
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\DiffusionModels
