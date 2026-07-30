@echo off
chcp 65001 > NUL
@REM Do not call NoobAiCommon_Minimum.bat

call %~dp0..\All\adetailer.bat
call %~dp0..\All\VAE_Sdxl.bat
call %~dp0..\All\wildcards.bat
