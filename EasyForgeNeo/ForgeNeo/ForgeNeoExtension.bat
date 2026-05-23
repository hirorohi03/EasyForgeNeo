@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set GITHUB_CLONE_OR_PULL=%EASY_TOOLS%\Git\GitHub_CloneOrPull.bat
set CURL_CMD=C:\Windows\System32\curl.exe -kL

pushd %~dp0..\..\sd-webui-forge-neo\extensions

if not exist ..\extensions-backup\ (
	mkdir ..\extensions-backup
)

@REM https://github.com/eduardoabreu81/sd-webui-tagcomplete-neo
call %GITHUB_CLONE_OR_PULL% eduardoabreu81 sd-webui-tagcomplete-neo
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/abzaloff/aadetailer-neoforge
call %GITHUB_CLONE_OR_PULL% abzaloff aadetailer-neoforge
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/abzaloff/sd-dynamic-prompts
call %GITHUB_CLONE_OR_PULL% abzaloff sd-dynamic-prompts
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/Haoming02/sd-forge-couple
call %GITHUB_CLONE_OR_PULL% Haoming02 sd-forge-couple
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hirorohi03/repeat-generate-4NEO
call %GITHUB_CLONE_OR_PULL% hirorohi03 repeat-generate-4NEO
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/altoiddealer/--sd-webui-ar-plusplus
call %GITHUB_CLONE_OR_PULL% altoiddealer --sd-webui-ar-plusplus
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist --sd-webui-ar-plusplus\resolutions.txt (
	echo copy %~dp0src\--sd-webui-ar-plusplus\resolutions.txt --sd-webui-ar-plusplus\
	copy %~dp0src\--sd-webui-ar-plusplus\resolutions.txt --sd-webui-ar-plusplus\
)

if not exist --sd-webui-ar-plusplus\aspect_ratios.txt (
	echo copy %~dp0src\--sd-webui-ar-plusplus\aspect_ratios.txt --sd-webui-ar-plusplus\
	copy %~dp0src\--sd-webui-ar-plusplus\aspect_ratios.txt --sd-webui-ar-plusplus\
)

@REM https://github.com/Haoming02/sd-forge-negpip
call %GITHUB_CLONE_OR_PULL% Haoming02 sd-forge-negpip
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/bluelovers/sd-webui-pnginfo-beautify
call %GITHUB_CLONE_OR_PULL% bluelovers sd-webui-pnginfo-beautify
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/eduardoabreu81/sd-civitai-browser-neo
call %GITHUB_CLONE_OR_PULL% eduardoabreu81 sd-civitai-browser-neo
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo xcopy /SQY %~dp0src\sd-civitai-browser-neo\*.* sd-civitai-browser-neo\
xcopy /SQY %~dp0src\sd-civitai-browser-neo\*.* sd-civitai-browser-neo\
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/SiliconeShojo/ScribeNEO
call %GITHUB_CLONE_OR_PULL% SiliconeShojo ScribeNEO
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/KohakuBlueleaf/z-tipo-extension
call %GITHUB_CLONE_OR_PULL% KohakuBlueleaf z-tipo-extension
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/eduardoabreu81/sd-webui-prompt-all-in-one-neo
call %GITHUB_CLONE_OR_PULL% eduardoabreu81 sd-webui-prompt-all-in-one-neo
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo xcopy /SQY %~dp0src\sd-webui-prompt-all-in-one-neo\*.* sd-webui-prompt-all-in-one-neo\storage\
xcopy /SQY %~dp0src\sd-webui-prompt-all-in-one-neo\*.* sd-webui-prompt-all-in-one-neo\storage\
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/mix1009/model-keyword
call %GITHUB_CLONE_OR_PULL% mix1009 model-keyword
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://github.com/hirorohi03/sd-webui-forge-spectrum
call %GITHUB_CLONE_OR_PULL% hirorohi03 sd-webui-forge-spectrum
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\sd-webui-forge-neo\extensions
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
