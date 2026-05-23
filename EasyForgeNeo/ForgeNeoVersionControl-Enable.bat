@echo off
chcp 65001 > NUL
echo Forge Neo本体のバージョンを指定します
echo https://github.com/Haoming02/sd-webui-forge-classic/commits/neo/
echo を参照して指定対象のコミットハッシュ値を入力してください
set /p INPUT=
<nul set /p =%INPUT%> %~dp0ForgeNeo_Version.txt