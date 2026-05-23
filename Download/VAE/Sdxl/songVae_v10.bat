@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\VAE

@REM https://huggingface.co/yyy1026/songMix
call %HUGGING_FACE% Sdxl\ songVae_v10.safetensors yyy1026/songMix VAE_songVAE_v1.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\VAE
