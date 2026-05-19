@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set CIVITAI_MODEL_DOWNLOAD=%EASY_TOOLS%\Civitai\Civitai_ModelDownload.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://civitai.red/models/808215?modelVersionId=962629
call %CIVITAI_MODEL_DOWNLOAD% NoobE\ NoobEStylesCollection.safetensors 808215 962629
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
pushd %~dp0..\..\..\Model\wildcards

if exist NoobStylesCollection.txt ( popd & exit /b 0 )
set CURL_CMD=C:\Windows\System32\curl.exe -kL

echo %CURL_CMD% -o NoobStylesCollection.txt https://files.catbox.moe/k8v34v.txt
%CURL_CMD% -o NoobStylesCollection.txt https://files.catbox.moe/k8v34v.txt

popd rem %~dp0..\..\..\Model\wildcards