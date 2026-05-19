@echo off
chcp 65001 > NUL
if exist "%~dp0ForgeNeo_Version.txt" ( del "%~dp0ForgeNeo_Version.txt" > NUL )
