@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools

@REM Check whether Ollama service is running
ollama.exe ps > nul 2>&1
if %ERRORLEVEL% equ 0 ( goto :OLLAMA_STARTED )

call %~dp0EasyTools\Ollama\Ollama_Portable_Start.bat
set "PATH=%EASY_TOOLS%\Ollama\env;%PATH%"

:OLLAMA_STARTED
@REM Ollama service is running, and the path is configured
