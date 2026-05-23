@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Stable-diffusion

@REM https://huggingface.co/deadman44/SDXL_Anime_Merged_Models
call %HUGGING_FACE% NoobV\ ElMichael_v10.safetensors deadman44/SDXL_Anime_Merged_Models El_Michael_XL_Vpred_v1_no_dmd2.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Stable-diffusion
