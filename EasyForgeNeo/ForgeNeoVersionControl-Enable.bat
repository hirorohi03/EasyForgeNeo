@echo off
chcp 65001 > NUL
echo [Forge Neoのバージョンを固定]
echo 以下のURLを参照して固定対象のコミットハッシュ値を入力してください
echo.
echo [Lock the version of Forge Neo]
echo Please refer to the URL below and enter the commit hash for the target commit.
echo.
echo https://github.com/Haoming02/sd-webui-forge-classic/commits/neo/
set /p INPUT=
<nul set /p =%INPUT%> %~dp0ForgeNeo_Version.txt