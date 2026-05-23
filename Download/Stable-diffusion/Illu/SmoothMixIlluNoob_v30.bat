@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://civitai.red/models/1695253?modelVersionId=1918601
call %CIVITAI_MODEL_DOWNLOAD% Illu\ SmoothMixIlluNoob_v30.safetensors 1695253 1918601
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
