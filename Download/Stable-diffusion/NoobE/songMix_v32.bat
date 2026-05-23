@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/yyy1026/songMix
call %HUGGING_FACE% NoobE\ songMix_v32.safetensors yyy1026/songMix songMix_v3.2.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
