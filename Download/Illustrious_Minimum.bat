@echo off
chcp 65001 > NUL

call %~dp0Stable-diffusion\Illu\WaiIll_v16.bat
call %~dp0VAE\Sdxl\sdxl_vae.bat
