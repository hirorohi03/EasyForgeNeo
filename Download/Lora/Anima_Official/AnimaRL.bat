@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/2583128/
call %CIVITAI_MODEL_DOWNLOAD% Anima_Official\ anima-rl-v0.1.safetensors 2583128 2901967
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
