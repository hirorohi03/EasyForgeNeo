@echo off
chcp 65001 > NUL
call %~dp0src\NoobAiCommon_Minimum.bat

call %~dp0Stable-diffusion\NoobV\HarmoniqMixSpo_v30.bat
call %~dp0Stable-diffusion\NoobV\CatTowerV_v17.bat
