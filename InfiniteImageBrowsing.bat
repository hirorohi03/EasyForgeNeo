@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0EasyTools
set SD_CFG=%EASY_TOOLS%\..\sd-webui-forge-neo\config.json

if not exist %EASY_TOOLS%\InfiniteImageBrowsing\sd-webui-infinite-image-browsing\venv\ (
	echo call %EASY_TOOLS%\InfiniteImageBrowsing\InfiniteImageBrowsing_Update.bat
	call %EASY_TOOLS%\InfiniteImageBrowsing\InfiniteImageBrowsing_Update.bat
)
if not exist %EASY_TOOLS%\InfiniteImageBrowsing\sd-webui-infinite-image-browsing\venv\ (
	echo %EASY_TOOLS%\InfiniteImageBrowsing\sd-webui-infinite-image-browsing\venv\ not found
	pause & exit /b 1
)

pushd %EASY_TOOLS%\InfiniteImageBrowsing\sd-webui-infinite-image-browsing

call %EASY_TOOLS%\Python\Python_Activate.bat
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

start http://localhost:7850

echo python app.py --sd_webui_config="%SD_CFG%" --sd_webui_path_relative_to_config --host=localhost --port=7850 %*
python app.py --sd_webui_config="%SD_CFG%" --sd_webui_path_relative_to_config --host=localhost --port=7850 %*
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

popd rem %EASY_TOOLS%\InfiniteImageBrowsing\sd-webui-infinite-image-browsing
