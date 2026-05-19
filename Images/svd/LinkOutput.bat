@echo off
chcp 65001 > NUL

setlocal enabledelayedexpansion
set "LINK_DST=%~1"
set "LINK_SRC=%~dp0"
for %%i in ("%LINK_SRC:~0,-1%") do set "LINK_NAME=%%~nxi"

if "%LINK_DST%"=="" (
	set /p LINK_DST="参照先の親フォルダをドラッグ＆ドロップしてください: "
	if not exist "!LINK_DST!" (
		echo "参照先の親フォルダが見つかりません: !LINK_DST!"
		pause & endlocal & exit /b 1
	)
	for %%i in ("!LINK_DST!") do set "LINK_NAME=%%~nxi"

	set /p LINK_NAME_INPUT="数文字の短いリンク名を入力してください（空欄なら !LINK_NAME! ）: "
	if not "!LINK_NAME_INPUT!"=="" set LINK_NAME=!LINK_NAME_INPUT!
)

call :JUNCTION "%LINK_DST%\%LINK_NAME%" "%LINK_SRC%"
if %ERRORLEVEL% neq 0 ( endlocal & exit /b 1 )
endlocal
exit /b 0

:JUNCTION
set PS_CMD=PowerShell -Version 5.1 -NoProfile -ExecutionPolicy Bypass
set LINK_DST=%~1
set LINK_DST_DIR=%~dp1
set LINK_DST_NAME=%~nx1
set LINK_SRC=%~2

@REM DST がリンク済みなら別パスへのリンクかもしれないので再リンク
for /f "delims=" %%i in ('dir /aL /b "%LINK_DST_DIR%" 2^>NUL') do (
	if /i "%%~i"=="%LINK_DST_NAME%" ( rmdir "%LINK_DST%" )
)

@REM リンク済みでない DST があればリネームで保護
for /f %%i in ('%PS_CMD% -c "Get-Date -Format yyyyMMdd_HHmm_ssff"') do (
	set NEW_NAME=%LINK_DST_NAME%-%%i
)

if exist "%LINK_DST%" (
	setlocal enabledelayedexpansion
	echo ren "%LINK_DST%" "%NEW_NAME%"
	ren "%LINK_DST%" "%NEW_NAME%"
	if !ERRORLEVEL! neq 0 ( pause & endlocal & exit /b 1 )
	endlocal
)

echo mklink /j "%LINK_DST%" "%LINK_SRC%"
mklink /j "%LINK_DST%" "%LINK_SRC%"
if %ERRORLEVEL% neq 0 ( pause & exit /b 1 )
exit /b 0
