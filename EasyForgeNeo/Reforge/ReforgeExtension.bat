@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set GITHUB_CLONE_OR_PULL=%EASY_TOOLS%\Git\GitHub_CloneOrPull.bat
set CURL_CMD=C:\Windows\System32\curl.exe -kL

pushd %~dp0..\..\stable-diffusion-webui-reForge\extensions

if not exist ..\extensions-backup\ (
	mkdir ..\extensions-backup
)

@REM https://github.com/DominikDoom/a1111-sd-webui-tagcomplete
call %GITHUB_CLONE_OR_PULL% DominikDoom a1111-sd-webui-tagcomplete
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Bing-su/adetailer
call %GITHUB_CLONE_OR_PULL% Bing-su adetailer
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Panchovix/reForge-Sigmas_merge
call %GITHUB_CLONE_OR_PULL% Panchovix reForge-Sigmas_merge
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/adieyal/sd-dynamic-prompts
call %GITHUB_CLONE_OR_PULL% adieyal sd-dynamic-prompts
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Haoming02/sd-forge-couple
call %GITHUB_CLONE_OR_PULL% Haoming02 sd-forge-couple
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/blue-pen5805/sdweb-easy-generate-forever
call %GITHUB_CLONE_OR_PULL% blue-pen5805 sdweb-easy-generate-forever
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/altoiddealer/--sd-webui-ar-plusplus
call %GITHUB_CLONE_OR_PULL% altoiddealer --sd-webui-ar-plusplus
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist --sd-webui-ar-plusplus\resolutions.txt (
	echo copy %~dp0src\resolutions.txt --sd-webui-ar-plusplus\
	copy %~dp0src\resolutions.txt --sd-webui-ar-plusplus\
)

if not exist --sd-webui-ar-plusplus\aspect_ratios.txt (
	echo copy %~dp0src\aspect_ratios.txt --sd-webui-ar-plusplus\
	copy %~dp0src\aspect_ratios.txt --sd-webui-ar-plusplus\
)

@REM https://github.com/hako-mikan/sd-webui-cd-tuner
call %GITHUB_CLONE_OR_PULL% hako-mikan sd-webui-cd-tuner
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hako-mikan/sd-webui-lora-block-weight
call %GITHUB_CLONE_OR_PULL% hako-mikan sd-webui-lora-block-weight
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hako-mikan/sd-webui-negpip
@REM b054b92b0fec3b6a65c172aeae3adf45ce87949c
call %GITHUB_CLONE_OR_PULL% hako-mikan sd-webui-negpip
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/bluelovers/sd-webui-pnginfo-beautify
call %GITHUB_CLONE_OR_PULL% bluelovers sd-webui-pnginfo-beautify
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/nihedon/sd-webui-weight-helper
call %GITHUB_CLONE_OR_PULL% nihedon sd-webui-weight-helper
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/zixaphir/Stable-Diffusion-Webui-Civitai-Helper
call %GITHUB_CLONE_OR_PULL% zixaphir Stable-Diffusion-Webui-Civitai-Helper
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/67372a/stable-diffusion-webui-wd14-tagger
@REM call %GITHUB_CLONE_OR_PULL% 67372a stable-diffusion-webui-wd14-tagger
@REM if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hirorohi03/stable-diffusion-webui-wd14-tagger
call %GITHUB_CLONE_OR_PULL% hirorohi03 stable-diffusion-webui-wd14-tagger
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/KohakuBlueleaf/z-tipo-extension
call %GITHUB_CLONE_OR_PULL% KohakuBlueleaf z-tipo-extension
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/L4Ph/stable-diffusion-webui-localization-ja_JP
call %GITHUB_CLONE_OR_PULL% L4Ph stable-diffusion-webui-localization-ja_JP
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Physton/sd-webui-prompt-all-in-one
call %GITHUB_CLONE_OR_PULL% Physton sd-webui-prompt-all-in-one
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/mix1009/model-keyword
call %GITHUB_CLONE_OR_PULL% mix1009 model-keyword
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hnmr293/sd-webui-cutoff
call %GITHUB_CLONE_OR_PULL% hnmr293 sd-webui-cutoff
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/shirayu/sd-webui-enable-checker
call %GITHUB_CLONE_OR_PULL% shirayu sd-webui-enable-checker
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hirorohi03/sd-webui-forge-spectrum
call %GITHUB_CLONE_OR_PULL% hirorohi03 sd-webui-forge-spectrum
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\stable-diffusion-webui-reForge\extensions
exit /b 0

:MOVE_TO_BACKUP
set "SRC_DIR=%1"
if not exist %SRC_DIR% ( exit /b 0 )

if not exist ..\extensions-backup\ (
	echo mkdir ..\extensions-backup
	mkdir ..\extensions-backup
)

set "DST_DIR=..\extensions-backup\%~nx1"
if exist %DST_DIR%\ (
	echo rmdir /S /Q %DST_DIR%
    rmdir /S /Q %DST_DIR%
)

echo move /Y %SRC_DIR% %DST_DIR%
move /Y %SRC_DIR% %DST_DIR%

exit /b 0
