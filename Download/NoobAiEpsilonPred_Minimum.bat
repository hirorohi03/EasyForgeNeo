@echo off
chcp 65001 > NUL

call %~dp0src\NoobAiCommon_Minimum.bat

call %~dp0Stable-diffusion\NoobE\copycatNoob_v11.bat
call %~dp0Stable-diffusion\NoobE\HarmoniqMixSpoE_v11.bat
