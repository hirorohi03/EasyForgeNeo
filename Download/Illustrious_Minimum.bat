@echo off
chcp 65001 > NUL
@REM Minimum は Civitai ログイン不要を維持する必要はない

call %~dp0Stable-diffusion\Illu\WaiIll_v16.bat
call %~dp0VAE\Sdxl\sdxl_vae.bat
