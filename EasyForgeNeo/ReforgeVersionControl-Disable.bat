@echo off
chcp 65001 > NUL
if exist "%~dp0Reforge_Version.txt" ( del "%~dp0Reforge_Version.txt" > NUL )
