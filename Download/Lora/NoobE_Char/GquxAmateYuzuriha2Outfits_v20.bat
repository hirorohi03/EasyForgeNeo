@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/1407126?modelVersionId=1593642
call %CIVITAI_MODEL_DOWNLOAD% NoobE_Char\ GquxAmateYuzuriha2Outfits_v20.safetensors 1407126 1593642
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
