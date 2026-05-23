@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE=%EASY_TOOLS%\Download\HuggingFace.bat
pushd %~dp0..\..\..\Model\adetailer

echo https://civitai.red/models/329458?modelVersionId=411421
@REM https://huggingface.co/SDExplains/Adetailer
call %HUGGING_FACE% segm\ PitHandDetailer-v1b-seg.pt SDExplains/Adetailer
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
