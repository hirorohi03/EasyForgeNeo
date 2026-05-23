@echo off
chcp 65001 > NUL
pushd %~dp0..\..\stable-diffusion-webui-reForge
call venv\Scripts\activate.bat

python %~dp0src\reforge_update_ui-config.py %*
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem %~dp0..\..\stable-diffusion-webui-reForge
