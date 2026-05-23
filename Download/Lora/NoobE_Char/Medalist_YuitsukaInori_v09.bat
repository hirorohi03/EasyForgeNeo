@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/1128520?modelVersionId=1268547
call %CIVITAI_MODEL_DOWNLOAD% NoobE_Char\ Medalist_YuitsukaInori_v09.safetensors 1128520 1268547
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
