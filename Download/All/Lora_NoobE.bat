@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set RECURSIVE_BAT_CALL=%EASY_TOOLS%\Bat\RecursiveBatCall.bat

for /d %%d in ("%~dp0..\Lora\Noob_*") do ( call "%RECURSIVE_BAT_CALL%" %%d )
for /d %%d in ("%~dp0..\Lora\NoobE*") do ( call "%RECURSIVE_BAT_CALL%" %%d )
