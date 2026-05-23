@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.red/models/1259226?modelVersionId=1640470
call %CIVITAI_MODEL_DOWNLOAD% NoobE\ CottonNoob_v30.safetensors 1259226 1640470
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
