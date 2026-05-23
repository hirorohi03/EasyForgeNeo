@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.red/models/1045588?modelVersionId=1585993
call %CIVITAI_MODEL_DOWNLOAD% NoobE_Real\ PornMasterPro_v25.safetensors 1045588 1585993
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
