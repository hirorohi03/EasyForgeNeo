@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/deadman44/SDXL_Photoreal_Merged_Models
call %HUGGING_FACE% NoobV_Real\ ZipanoobDmd_v11.safetensors deadman44/SDXL_Photoreal_Merged_Models Zipanoob_XL_Vpred_v1.1.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
