@echo off
call %~dp0ForgeNeo.bat --pin-shared-memory --cuda-malloc --cuda-stream %*
