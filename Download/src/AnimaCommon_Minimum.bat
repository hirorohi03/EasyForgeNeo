@echo off
chcp 65001 > NUL
@REM Minimum は Civitai ログイン不要を維持する必要はない

call %~dp0..\adetailer\bbox\face_yolov9c.bat
call %~dp0..\adetailer\bbox\foot_yolov8x_v2.bat
call %~dp0..\adetailer\bbox\hand_yolov9c.bat

call %~dp0..\adetailer\segm\AnzhcBreasts-v1-1024-seg.bat
call %~dp0..\adetailer\segm\AnzhcEyes-seg.bat
call %~dp0..\adetailer\segm\AnzhcFace-v2-640-seg.bat
call %~dp0..\adetailer\segm\AnzhcFace-v2-768MS-seg.bat
call %~dp0..\adetailer\segm\AnzhcFace-v2-1024-seg.bat
call %~dp0..\adetailer\segm\AnzhcHead-seg.bat
call %~dp0..\adetailer\segm\AnzhcHeadHair-seg.bat
call %~dp0..\adetailer\segm\PitHandDetailer-v1b-seg.bat

call %~dp0..\All\ESRGAN.bat

call %~dp0..\Lora\Anima_Official\AnimaHighres.bat
call %~dp0..\Lora\Anima_Official\AnimaRL.bat
call %~dp0..\Lora\Anima_Official\AnimaTurbo.bat
call %~dp0..\Lora\Anima_Boost\AnimaDMD2.bat

call %~dp0..\wildcards\noob_1girl.bat
call %~dp0..\wildcards\tipo_1girl.bat
call %~dp0..\wildcards\tipo_play.bat
call %~dp0..\wildcards\tipo_location.bat
