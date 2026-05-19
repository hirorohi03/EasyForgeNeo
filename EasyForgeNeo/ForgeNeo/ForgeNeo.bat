@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set GITHUB_CLONE_OR_PULL_HASH=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Folder_Hash.bat
set GITHUB_CLONE_OR_PULL_TAG=%EASY_TOOLS%\Git\GitHub_CloneOrPull_Folder_Tag.bat
set IS_AMPERE=%EASY_TOOLS%\Nvidia\IsAmpereOrNewer.bat
set LAUNCH_PY=%~dp0..\..\sd-webui-forge-neo\launch.py

set FORGE_NEO_VERSION=
if not exist "%~dp0..\ForgeNeo_Version.txt" ( goto :SKIP_FORGE_NEO_VERSION_CONTROL )
set /p FORGE_NEO_VERSION=<"%~dp0..\FORGE_NEO_VERSION.txt"
)
:SKIP_FORGE_NEO_VERSION_CONTROL

pushd %~dp0..\..

@REM https://github.com/Haoming02/sd-webui-forge-classic/tree/neo
call %GITHUB_CLONE_OR_PULL_HASH% Haoming02 sd-webui-forge-classic neo sd-webui-forge-neo %FORGE_NEO_VERSION%
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd
pushd %~dp0..\..\sd-webui-forge-neo

echo 3.13.12> %EASY_TOOLS%\Python\Python_DefaultVersion.txt
call %EASY_TOOLS%\Python\Python_Activate.bat
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %IS_AMPERE%
if %ERRORLEVEL% equ 0 (
    set "LAUNCH_ARGS=--exit --sage --flash --nunchaku %*"
) else (
    set "LAUNCH_ARGS=--exit %*"
)

echo python %LAUNCH_PY% %LAUNCH_ARGS%
python %LAUNCH_PY% %LAUNCH_ARGS%
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd
