@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
set JUNCTION=%EASY_TOOLS%\Link\Junction.bat
set OUTPUT_DIR=outputs

pushd %~dp0..\..\stable-diffusion-webui-reForge

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

call %JUNCTION% models\Stable-diffusion ..\Model\Stable-diffusion
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% models\VAE ..\Model\VAE
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% extensions\sd-dynamic-prompts\wildcards ..\Model\wildcards 
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist %OUTPUT_DIR%\ ( mkdir %OUTPUT_DIR% )

call %JUNCTION% %OUTPUT_DIR%\extras-images ..\Images\extras-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\img2img-grids ..\Images\img2img-grids
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\img2img-images ..\Images\img2img-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\svd ..\Images\svd
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\txt2img-grids ..\Images\txt2img-grids
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

call %JUNCTION% %OUTPUT_DIR%\txt2img-images ..\Images\txt2img-images
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

if not exist log\ ( mkdir log )
call %JUNCTION% log\images ..\Images\Saved
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\stable-diffusion-webui-reForge
