@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE_HUB=%EASY_TOOLS%\Download\HuggingFaceHub.bat
pushd %~dp0..\..\..\Model\Lora

call %HUGGING_FACE_HUB% Noob_%~n0\ Emanon14/LoRA model *
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
