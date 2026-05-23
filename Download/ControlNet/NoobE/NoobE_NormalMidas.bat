@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/Eugeoter/noob-sdxl-controlnet-normal
call %HUGGING_FACE% NoobE\ NoobE_NormalMidas.safetensors Eugeoter/noob-sdxl-controlnet-normal diffusion_pytorch_model.fp16.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
