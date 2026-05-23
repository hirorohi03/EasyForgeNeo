@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/hybskgks28275/HarmoniqMix_vPred_v3.x
call %HUGGING_FACE% NoobV\ HarmoniqMixSpo_v30.safetensors hybskgks28275/HarmoniqMix_vPred_v3.x HarmoniqMix_vPred_v3_SPO/HarmoniqMix_vPred_v3_SPO.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
