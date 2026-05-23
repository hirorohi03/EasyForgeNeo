@echo off
chcp 65001 > NUL
call %~dp0EasyTools\Git\Git_SetPath.bat
cd /d %~dp0sd-webui-forge-neo
call venv\Scripts\activate.bat
cmd /k
