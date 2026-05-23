@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\Lora

@REM https://huggingface.co/Zuntan/NoobHyperDmd
call %HUGGING_FACE% Noob_Boost\ NoobV065sHyperDmd.safetensors Zuntan/NoobHyperDmd
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\Lora
