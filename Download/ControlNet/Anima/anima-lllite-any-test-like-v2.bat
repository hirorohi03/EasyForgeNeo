@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/kohya-ss/Anima-LLLite
call %HUGGING_FACE% Anima\ anima-lllite-any-test-like-v2-beta-epoch-03.safetensors kohya-ss/Anima-LLLite
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
