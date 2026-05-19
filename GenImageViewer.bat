@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools

if not exist %EASY_TOOLS%\GenImageViewer\GenImageViewer\ (
	echo call %EASY_TOOLS%\GenImageViewer\GenImageViewer_Update.bat
	call %EASY_TOOLS%\GenImageViewer\GenImageViewer_Update.bat
)

pushd %EASY_TOOLS%\GenImageViewer\GenImageViewer

if not exist GenImageViewer.json (
	copy %~dp0\EasyForgeNeo\ForgeNeo\src\GenImageViewer.json GenImageViewer.json
)

call GenImageViewer.bat %*
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem %EASY_TOOLS%\GenImageViewer\GenImageViewer
