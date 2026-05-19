@echo off
chcp 65001 > NUL

call %~dp0ForgeNeo\ForgeNeo.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0ForgeNeo\ForgeNeoExtension.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

call %~dp0ForgeNeo\ForgeNeoLink.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )

if exist %~dp0vc_redist.x64.exe ( goto :EXIST_VC_REDIST_X64 )
echo.
echo %CURL_CMD% -o %~dp0vc_redist.x64.exe https://aka.ms/vs/17/release/vc_redist.x64.exe
%CURL_CMD% -o %~dp0vc_redist.x64.exe https://aka.ms/vs/17/release/vc_redist.x64.exe
if %ERRORLEVEL% neq 0 ( pause & exit /b 1 )
:EXIST_VC_REDIST_X64

if not exist %~dp0..\stable-diffusion-webui-reForge\ ( goto :SKIP_REFORGE_UPDATE )
call %~dp0SetupReforge.bat
if %ERRORLEVEL% neq 0 ( exit /b 1 )
:SKIP_REFORGE_UPDATE

if exist %~dp0ForgeNeo\Update_DisableMinimumDownload.txt ( exit /b 0 )

if exist %~dp0..\Models\DiffusionModels\ (
	call %~dp0..\Download\src\AnimaCommon_Minimum.bat
	@REM リンク切れ対策としてダウンロードの結果は確認しない
)
