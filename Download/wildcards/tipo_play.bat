@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set ARIA=%EASY_TOOLS%\Download\Aria.bat
pushd %~dp0..\..\Model\wildcards

call %ARIA% .\ tipo_play.txt https://yyy.wpx.jp/EasyReforge/tipo_play.txt
if %ERRORLEVEL% neq 0 ( exit /b 1 )

popd rem %~dp0..\..\..\Model\wildcards
