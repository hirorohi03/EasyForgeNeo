@echo off
chcp 65001 > NUL

call %~dp0Anima_Standard.bat

call %~dp0All\DiffusionModels_Anima.bat
