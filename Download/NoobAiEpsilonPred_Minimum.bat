@echo off
chcp 65001 > NUL
@REM Minimum は Civitai ログイン不要を維持する必要はない

call %~dp0src\NoobAiCommon_Minimum.bat

call %~dp0Stable-diffusion\NoobE\copycatNoob_v11.bat
call %~dp0Stable-diffusion\NoobE\HarmoniqMixSpoE_v11.bat
