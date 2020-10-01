@echo off
chcp 65001

IF "%~1"=="" GOTO :EOF
IF NOT EXIST %1 GOTO :EOF


Setlocal enabledelayedexpansion


For /R %1 %%a in (*.flv *.mp4 *.mkv) Do (
Set sourcefile="%%a"
echo !sourcefile!

ffmpeg -i !sourcefile! -vf fps=1,select="'not(mod(t,5))'" -vsync 0 -frame_pts 1 !sourcefile!_%%4d.jpg
)
@PAUSE



