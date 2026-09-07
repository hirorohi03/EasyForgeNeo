@echo off
chcp 65001 > NUL

call %~dp0src\AnimaCommon_Minimum.bat

call %~dp0DiffusionModels\Official\anima-base-v1.0.bat
call %~dp0DiffusionModels\Official\anima-turbo.bat
call %~dp0DiffusionModels\Official\anima-aesthetic.bat
call %~dp0TextEncoders\qwen_3_06b_base.bat
call %~dp0VAE\qwen_image_vae.bat
