@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://huggingface.co/ByteDance/Hyper-SD
call %HUGGING_FACE% Sdxl_Boost\ Hyper_sdxl_8step.safetensors ByteDance/Hyper-SD Hyper-SDXL-8steps-lora.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
