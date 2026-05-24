@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\..\EasyTools

@REM Ollamaサービスチェック
ollama.exe ps > nul 2>&1
if %ERRORLEVEL% equ 0 ( goto :OLLAMA_STARTED )

call %EASY_TOOLS%\Ollama\Ollama_Portable_Start.bat
set "PATH=%EASY_TOOLS%\Ollama\env;%PATH%"

:OLLAMA_STARTED
@REM Ollamaサービスが起動済み、Path設定済み

@REM https://ollama.com/huihui_ai/qwen3-vl-abliterated:8b
ollama.exe pull huihui_ai/qwen3-vl-abliterated:8b
