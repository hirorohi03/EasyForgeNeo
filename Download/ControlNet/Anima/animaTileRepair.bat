@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://civitai.red/models/2708551/
call %CIVITAI_MODEL_DOWNLOAD% Anima\ animaTileRepair_v10.safetensors 2708551 3042408
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\DiffusionModels
