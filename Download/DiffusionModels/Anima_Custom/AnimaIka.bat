@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\DiffusionModels

@REM https://civitai.red/models/2426265/
call %CIVITAI_MODEL_DOWNLOAD% Anima_Custom\ animaika_v42.safetensors 2426265 3008221
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\DiffusionModels
