@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/1034405?modelVersionId=1160176
call %CIVITAI_MODEL_DOWNLOAD% Illu_Nsfw\ OneFingerSelfieChallenge_Illu.safetensors 1034405 1160176
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
