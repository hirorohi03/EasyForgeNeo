@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
 set CIVITAI_MODEL_DOWNLOAD_UNZIP=%EASY_TOOLS%\Civitai\Civitai_ModelDownloadUnzip.bat
pushd %~dp0..\..\Model\wildcards

@REM https://civitai.red/models/70930?modelVersionId=75621
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ 50s-locations.txt 70930 75621
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/91214?modelVersionId=97211
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ female-artisans.txt 91214 97211
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/75246?modelVersionId=79987
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ female-guerilla-fighters.txt 75246 79987
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/76968?modelVersionId=81762
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ maid-dresses-locations.txt 76968 81762
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/70264?modelVersionId=74962
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ post-apocalyptic-locations.txt 70264 74962
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/70905?modelVersionId=75600
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ science-fiction-locations.txt 70905 75600
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

@REM https://civitai.red/models/69537?modelVersionId=74201
call %CIVITAI_MODEL_DOWNLOAD_UNZIP% Advanced\ WWII-locations.txt 69537 74201
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\wildcards
pushd %~dp0..\..\Model\wildcards\advanced

for %%f in (advanced-*) do (
	setlocal enabledelayedexpansion
	set "ADVANCED_FILENAME=%%f"
	echo ren "%%f" "!ADVANCED_FILENAME:advanced-=!"
	ren "%%f" "!ADVANCED_FILENAME:advanced-=!"
	endlocal
)

popd rem %~dp0..\..\Model\wildcards\advanced
