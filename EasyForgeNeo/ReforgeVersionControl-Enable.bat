@echo off
chcp 65001 > NUL
echo [reForgeのバージョンを固定]
echo 以下のURLを参照して固定対象のコミットハッシュ値を入力してください
echo.
echo [Lock the version of reForge]
echo Please refer to the URL below and enter the commit hash for the target commit.
echo.
echo https://github.com/Panchovix/stable-diffusion-webui-reForge/commits/main/
set /p INPUT=
<nul set /p =%INPUT%> %~dp0Reforge_Version.txt