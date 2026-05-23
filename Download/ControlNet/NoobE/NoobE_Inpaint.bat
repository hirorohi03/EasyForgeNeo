@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/Zuntan/dist
@REM https://huggingface.co/Wenaka/NoobAI_XL_Inpainting_ControlNet_Full
call %HUGGING_FACE% NoobE\ NoobE_Inpaint.safetensors Zuntan/dist
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
