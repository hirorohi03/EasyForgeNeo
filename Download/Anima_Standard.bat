@echo off
chcp 65001 > NUL
@REM Minimum は Civitai ログイン不要を維持する必要はない

call %~dp0src\AnimaCommon_Minimum.bat

call %~dp0DiffusionModels\Official\anima-base-v1.0.bat
call %~dp0TextEncoders\qwen_3_06b_base.bat
call %~dp0VAE\qwen_image_vae.bat
