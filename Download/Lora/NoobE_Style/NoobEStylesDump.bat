@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/723360?modelVersionId=1031052
call %CIVITAI_MODEL_DOWNLOAD% NoobE\ NoobEStylesDump.safetensors 723360 1031052
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
pushd %~dp0..\..\..\Model\wildcards

if exist NoobEStylesDump.txt ( popd & exit /b 0 )
set CURL_CMD=C:\Windows\System32\curl.exe -kL

echo %CURL_CMD% -o NoobEStylesDump.txt https://files.catbox.moe/tsddmz.txt
%CURL_CMD% -o NoobEStylesDump.txt https://files.catbox.moe/tsddmz.txt

popd rem %~dp0..\..\..\Model\wildcards
