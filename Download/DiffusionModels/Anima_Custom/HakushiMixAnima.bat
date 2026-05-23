@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\DiffusionModels

@REM https://civitai.red/models/2515015/
call %CIVITAI_MODEL_DOWNLOAD% Anima_Custom\ hakushiMixAnima_v02.safetensors 2515015 2906068
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\DiffusionModels
