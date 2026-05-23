@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/Laxhar/noob_openpose
call %HUGGING_FACE% NoobE\ NoobE_Openpose_pre.safetensors Laxhar/noob_openpose openpose_pre.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
