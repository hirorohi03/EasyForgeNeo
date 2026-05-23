@echo off
chcp 65001 > NUL
call %~dp0EasyTools\Git\Git_SetPath.bat
cd /d %~dp0stable-diffusion-webui-reForge
call venv\Scripts\activate.bat
cmd /k
