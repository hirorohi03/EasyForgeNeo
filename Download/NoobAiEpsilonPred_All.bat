@echo off
chcp 65001 > NUL

call %~dp0NoobAiEpsilonPred_Standard.bat

call %~dp0All\Stable-diffusion_NoobE.bat
