@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/177451?modelVersionId=1391141
call %CIVITAI_MODEL_DOWNLOAD% NoobE_Nsfw\ XRayGlasses_v11.safetensors 177451 1391141
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
