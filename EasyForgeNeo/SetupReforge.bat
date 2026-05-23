@echo off
chcp 65001 > NUL

call %~dp0Reforge\Reforge.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0Reforge\ReforgeExtension.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0Reforge\ReforgeLink.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )
