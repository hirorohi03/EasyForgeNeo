@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools
 set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\..\Model\adetailer

@REM https://civitai.red/models/158108?modelVersionId=177662
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% segm\ breasts_seg.pt 158108 177662
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\adetailer
