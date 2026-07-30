@echo off
chcp 65001 > NUL

setlocal enabledelayedexpansion
set "LINK_SRC=%~1"
set "LINK_NAME=%~nx1"

if "%LINK_SRC%"=="" (
	set /p LINK_SRC="Please drag and drop the parent folder of the source folder here: "
	if not exist "!LINK_SRC!" (
		echo "The source folder cannot be found: !LINK_SRC!"
		pause & endlocal & exit /b 1
	)
	for %%i in ("!LINK_SRC!") do set "LINK_NAME=%%~nxi"

	set /p LINK_NAME_INPUT="Please enter a short link name consisting of a few characters (if left blank, it will be !LINK_NAME!): "
	if not "!LINK_NAME_INPUT!"=="" set LINK_NAME=!LINK_NAME_INPUT!
)

call :JUNCTION "%~dp0%LINK_NAME%" "%LINK_SRC%"
if %ERRORLEVEL% neq 0 ( endlocal & exit /b 1 )
endlocal
exit /b 0

:JUNCTION
set PS_CMD=PowerShell -Version 5.1 -NoProfile -ExecutionPolicy Bypass
set LINK_DST=%~1
set LINK_DST_DIR=%~dp1
set LINK_DST_NAME=%~nx1
set LINK_SRC=%~2

@REM If DST is already linked, it may be linked to a different path, so relink it.
for /f "delims=" %%i in ('dir /aL /b "%LINK_DST_DIR%" 2^>NUL') do (
	if /i "%%~i"=="%LINK_DST_NAME%" ( rmdir "%LINK_DST%" )
)

@REM If there are any unlinked DSTs, rename and protect them
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
