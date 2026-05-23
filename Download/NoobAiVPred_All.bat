@echo off
chcp 65001 > NUL

call %~dp0NoobAiVPred_Standard.bat

call %~dp0All\Stable-diffusion_NoobV.bat
