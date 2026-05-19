@echo off
chcp 65001 > NUL
pushd %~dp0..\..\sd-webui-forge-neo
call venv\Scripts\activate.bat

python %~dp0src\forgeneo_update_ui-config.py %*
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem %~dp0..\..\sd-webui-forge-neo
