@echo off
chcp 65001 > NUL
@REM Minimum は Civitai ログイン不要を維持する必要はない
call %~dp0src\NoobAiCommon_Minimum.bat

call %~dp0Stable-diffusion\NoobV\HarmoniqMixSpo_v30.bat
call %~dp0Stable-diffusion\NoobV\CatTowerV_v17.bat
