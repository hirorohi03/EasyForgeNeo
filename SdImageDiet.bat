@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools
call %EASY_TOOLS%\SdImageDiet.bat %*
