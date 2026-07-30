@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools

@REM Check whether Ollama service is running
ollama.exe ps > nul 2>&1
if %ERRORLEVEL% equ 0 ( goto :OLLAMA_STARTED )

call %EASY_TOOLS%\Ollama\Ollama_Portable_Start.bat
set "PATH=%EASY_TOOLS%\Ollama\env;%PATH%"

:OLLAMA_STARTED
@REM Ollama service is running, and the path is configured

@REM https://ollama.com/sorc/qwen3.5-instruct-heretic
ollama.exe pull sorc/qwen3.5-instruct-heretic:9b
