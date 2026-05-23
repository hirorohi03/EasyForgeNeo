@echo off
if not exist %~dp0ForgeNeo\Update_DisableMinimumDownload.txt ( copy NUL %~dp0ForgeNeo\Update_DisableMinimumDownload.txt > NUL )
