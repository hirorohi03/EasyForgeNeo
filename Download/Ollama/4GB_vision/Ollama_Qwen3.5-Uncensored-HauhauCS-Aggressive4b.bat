@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools

@REM Ollamaサービスチェック
ollama.exe ps > nul 2>&1
if %ERRORLEVEL% equ 0 ( goto :OLLAMA_STARTED )

call %EASY_TOOLS%\Ollama\Ollama_Portable_Start.bat
set "PATH=%EASY_TOOLS%\Ollama\env;%PATH%"

:OLLAMA_STARTED
@REM Ollamaサービスが起動済み、Path設定済み

@REM https://ollama.com/fredrezones55/Qwen3.5-Uncensored-HauhauCS-Aggressive
ollama.exe pull fredrezones55/Qwen3.5-Uncensored-HauhauCS-Aggressive:4b
