@echo off
chcp 65001 > NUL

@REM The total file size must not exceed 100GB

call %~dp0Stable-diffusion\NoobE\momiziNoob_v31.bat
call %~dp0Stable-diffusion\NoobE\NtrMix_vXIII.bat
call %~dp0Stable-diffusion\NoobE\Obsession_v31.bat
call %~dp0Stable-diffusion\NoobE\WaiShuffleNoob_v20.bat

call %~dp0Stable-diffusion\NoobE_Base\NoobAiEpsilonPred_v11.bat

call %~dp0Stable-diffusion\NoobE_Real\PornMasterPro_v25.bat

call %~dp0Stable-diffusion\NoobE_Unique\PVCStyleModelMovable_v13a.bat

call %~dp0NoobAiEpsilonPred_Standard.bat
