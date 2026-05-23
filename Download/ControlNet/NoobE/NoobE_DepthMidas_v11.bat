@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/Eugeoter/noob-sdxl-controlnet-depth_midas-v1-1
call %HUGGING_FACE% NoobE\ NoobE_DepthMidas_v11.safetensors Eugeoter/noob-sdxl-controlnet-depth_midas-v1-1 diffusion_pytorch_model.fp16.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
