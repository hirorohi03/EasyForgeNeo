@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.red/models/1432671?modelVersionId=1723424
call %CIVITAI_MODEL_DOWNLOAD% NoobE\ CottonIllustrious_v20.safetensors 1432671 1723424
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
