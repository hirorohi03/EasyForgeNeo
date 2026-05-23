@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\VAE

@REM https://huggingface.co/madebyollin/sdxl-vae-fp16-fix/
call %HUGGING_FACE% Sdxl\ sdxl_vae.safetensors madebyollin/sdxl-vae-fp16-fix
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\VAE
