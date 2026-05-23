@echo off
chcp 65001 > NUL
@REM NoobAiCommon_Minimum.bat は呼ばない

call %~dp0..\All\adetailer.bat
call %~dp0..\All\VAE_Sdxl.bat
call %~dp0..\All\wildcards.bat
