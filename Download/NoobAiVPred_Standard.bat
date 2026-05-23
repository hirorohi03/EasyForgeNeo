@echo off
chcp 65001 > NUL

call %~dp0NoobAiVPred_Minimum.bat
call %~dp0src\NoobAiCommon_Standard.bat

call %~dp0All\Lora_NoobV.bat

call %~dp0adetailer\bbox\Eyes.bat
if %ERRORLEVEL% neq 0 ( pause & exit /b 1 )
