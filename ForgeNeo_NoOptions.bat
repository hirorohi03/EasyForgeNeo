@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools
set EMBEDDABLE_PYTHON=%EASY_TOOLS%\Python\env\python313

if not exist %~dp0sd-webui-forge-neo\venv\ (
	echo call %~dp0Update.bat
	call %~dp0Update.bat
)
if not exist %~dp0sd-webui-forge-neo\venv\ (
	echo "[Error] %~dp0sd-webui-forge-neo\venv\ が見つかりません。"
	pause & exit /b 1
)

pushd %~dp0sd-webui-forge-neo

@REM styles.csv の更新が必要になったらstyles.csvをリネームバックアップ
echo call %~dp0EasyForgeNeo\ForgeNeo\ForgeNeoConfig.bat config.json
call %~dp0EasyForgeNeo\ForgeNeo\ForgeNeoConfig.bat config.json
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

echo call %~dp0EasyForgeNeo\ForgeNeo\ForgeNeoUiConfig.bat ui-config.json
call %~dp0EasyForgeNeo\ForgeNeo\ForgeNeoUiConfig.bat ui-config.json
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist styles.csv (
	echo copy %~dp0EasyForgeNeo\ForgeNeo\src\styles.csv styles.csv
	copy %~dp0EasyForgeNeo\ForgeNeo\src\styles.csv styles.csv
)

set PYTHON=%~dp0sd-webui-forge-neo\venv\Scripts\python.exe
set VENV_DIR=%~dp0sd-webui-forge-neo\venv

where /Q git
if %ERRORLEVEL% equ 0 (
	set GIT=
)
if %ERRORLEVEL% neq 0 (
	set GIT=%~dp0EasyTools\Git\env\PortableGit\bin\git.exe
	call %~dp0EasyTools\Git\Git_SetPath.bat
)

if exist %EMBEDDABLE_PYTHON%\ (
	if not exist %~dp0sd-webui-forge-neo\venv\Scripts\Include\Python.h (
		echo xcopy /SQY %EMBEDDABLE_PYTHON%\include\*.* %~dp0sd-webui-forge-neo\venv\Scripts\Include\
		xcopy /SQY %EMBEDDABLE_PYTHON%\include\*.* %~dp0sd-webui-forge-neo\venv\Scripts\Include\

		echo xcopy /SQY %EMBEDDABLE_PYTHON%\libs\*.* %~dp0sd-webui-forge-neo\venv\Scripts\libs\
		xcopy /SQY %EMBEDDABLE_PYTHON%\libs\*.* %~dp0sd-webui-forge-neo\venv\Scripts\libs\
	)
)

if "%COMMANDLINE_ARGS%"=="" (
    set "COMMANDLINE_ARGS=%*"
) else (
    set "COMMANDLINE_ARGS=%COMMANDLINE_ARGS% %*"
)

echo.
echo PYTHON: %PYTHON%
echo VENV_DIR: %VENV_DIR%
echo GIT: %GIT%
echo webui.bat %COMMANDLINE_ARGS%
echo.
echo http://localhost:7860/
echo.
call webui.bat

popd rem %~dp0sd-webui-forge-neo
