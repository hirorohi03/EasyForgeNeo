@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/hybskgks28275/HarmoniqMix_ePred_v1.x
call %HUGGING_FACE% NoobE\ HarmoniqMixSpoE_v11.safetensors hybskgks28275/HarmoniqMix_ePred_v1.x HarmoniqMix_ePred_v11_SPO/HarmoniqMix_ePred_v11_SPO.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
