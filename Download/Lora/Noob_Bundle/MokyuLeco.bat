@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
set HUGGING_FACE_HUB=%EASY_TOOLS%\Download\HuggingFaceHub.bat
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat

pushd %~dp0

echo.
echo https://huggingface.co/datasets/mokyu2106/iroiro_data
echo call %HUGGING_FACE_HUB% %~n0\ mokyu2106/iroiro_data dataset LECO/illustriosXL_01/**
call %HUGGING_FACE_HUB% %~n0\ mokyu2106/iroiro_data dataset LECO/illustriosXL_01/**
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_MokyuLeco .\%~n0\LECO\illustriosXL_01
call %JUNCTION% %~dp0..\..\..\Model\Lora\Noob_MokyuLeco .\%~n0\LECO\illustriosXL_01
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0
