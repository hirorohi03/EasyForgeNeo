@echo off
chcp 65001 > NUL
echo reForge本体のバージョンを指定します
echo https://github.com/Panchovix/stable-diffusion-webui-reForge/commits/main/
echo を参照して指定対象のコミットハッシュ値を入力してください
set /p INPUT=
<nul set /p =%INPUT%> %~dp0Reforge_Version.txt