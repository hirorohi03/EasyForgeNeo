@echo off
chcp 65001 > NUL
set EASY_TOOLS=%~dp0..\..\EasyTools
pushd %~dp0..\..\Model\ESRGAN

@REM https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth
call %EASY_TOOLS%\Download\Aria.bat .\ RealESRGAN_x4plus_anime_6B.pth https://github.com/xinntao/Real-ESRGAN/releases/download/v0.2.2.4/RealESRGAN_x4plus_anime_6B.pth
if %ERRORLEVEL% neq 0 ( popd & exit /b 1 )

popd rem %~dp0..\..\..\Model\ESRGAN
