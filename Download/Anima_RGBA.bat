@echo off
chcp 65001 > NUL

call %~dp0Lora\Anima_RGBA\Anima_RGBA_lora.bat
call %~dp0VAE\\Anima\Anima_RGBA_vae.bat
