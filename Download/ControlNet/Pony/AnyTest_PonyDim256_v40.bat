@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\ControlNet

@REM https://huggingface.co/2vXpSwA7/iroiro-lora
call %HUGGING_FACE% Pony\ AnyTest_PonyDim256_v40.safetensors 2vXpSwA7/iroiro-lora test_controlnet2/CN-anytest_v4-marged_pn_dim256.safetensors?
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ControlNet
