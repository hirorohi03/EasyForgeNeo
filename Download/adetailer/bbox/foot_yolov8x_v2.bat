@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://huggingface.co/MonetEinsley/ADetailer_CM
call %HUGGING_FACE% bbox\ foot_yolov8x_v2.pt MonetEinsley/ADetailer_CM
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
