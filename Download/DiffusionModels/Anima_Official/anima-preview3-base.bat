@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\DiffusionModels

@REM https://huggingface.co/circlestone-labs/Anima
call %HUGGING_FACE% Anima_Official\ anima-preview3-base.safetensors circlestone-labs/Anima split_files/diffusion_models/anima-preview3-base.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\DiffusionModels
