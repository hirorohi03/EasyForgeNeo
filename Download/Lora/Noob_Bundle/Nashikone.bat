@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE_HUB=%EASY_TOOLS%\Download\HuggingFaceHub.bat
set CURL_CMD=C:\Windows\System32\curl.exe -kL
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat

pushd %~dp0

echo.
echo https://huggingface.co/nashikone/iroiroLoRA
echo call %HUGGING_FACE_HUB% %~n0\ nashikone/iroiroLoRA model Illustrious-XL-v0.1/**
call %HUGGING_FACE_HUB% %~n0\ nashikone/iroiroLoRA model Illustrious-XL-v0.1/**
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo %CURL_CMD% -o Nashikone\Illustrious-XL-v0.1\NashikoneReadme.txt https://huggingface.co/nashikone/iroiroLoRA/resolve/main/Illustrious-XL-v0.1_LoRAReadme.txt
%CURL_CMD% -o Nashikone\Illustrious-XL-v0.1\NashikoneReadme.txt https://huggingface.co/nashikone/iroiroLoRA/resolve/main/Illustrious-XL-v0.1_LoRAReadme.txt

echo call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_Nashikone .\%~n0\Illustrious-XL-v0.1
call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_Nashikone .\%~n0\Illustrious-XL-v0.1
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0
