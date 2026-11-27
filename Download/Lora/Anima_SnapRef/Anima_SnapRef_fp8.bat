@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://huggingface.co/0ppxnhximxr/snapref-v2s
call %HUGGING_FACE% Anima_SnapRef\ snapref_v2s_pre1_fp8.safetensors 0ppxnhximxr/snapref-v2s snapref_v2s_pre1_fp8.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
