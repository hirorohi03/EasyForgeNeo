@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat
set OUTPUT_DIR=output

pushd %~dp0..\..\sd-webui-forge-neo

call %JUNCTION% models\adetailer ..\Model\adetailer
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\ControlNet ..\Model\ControlNet
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\embeddings ..\Model\Embeddings
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\ESRGAN ..\Model\ESRGAN
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\Lora ..\Model\Lora
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\Stable-diffusion\unet ..\Model\DiffusionModels
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\Stable-diffusion\sd ..\Model\Stable-diffusion
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\text_encoder ..\Model\TextEncoders
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\VAE ..\Model\VAE
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% extensions\sd-dynamic-prompts\wildcards ..\Model\wildcards 
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist ..\Model\wildcards\1girl.txt ( copy /Y %~dp0src\1girl.txt ..\Model\wildcards\ )
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )
if not exist ..\Model\wildcards\play.txt ( copy /Y %~dp0src\play.txt ..\Model\wildcards\ )
if %ERRORLEVEL% neq 0 ( pause & popd & exit /b 1 )

if not exist %OUTPUT_DIR%\ ( mkdir %OUTPUT_DIR% )

call %JUNCTION% %OUTPUT_DIR%\extras-images ..\Images\extras-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\images ..\Images\Saved
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\img2img-grids ..\Images\img2img-grids
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\img2img-images ..\Images\img2img-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\txt2img-grids ..\Images\txt2img-grids
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\txt2img-images ..\Images\txt2img-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\videos ..\Images\svd
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\sd-webui-forge-neo
