@echo off
chcp 65001 > NUL

@REM 最大 14項目 100GB 目安

@REM 直近更新有り
call %~dp0Stable-diffusion\NoobV\copycatNoobV_v101.bat
call %~dp0Stable-diffusion\NoobV\HikariNoob_v121.bat
call %~dp0Stable-diffusion\NoobV\ObsessionV_v11.bat
call %~dp0Stable-diffusion\NoobV\susamixV_v40.bat

call %~dp0Stable-diffusion\NoobV_Base\NoobAiVPred_v10.bat

call %~dp0NoobAiVPred_Standard.bat
