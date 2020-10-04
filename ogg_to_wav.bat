@echo off
chcp 65001
IF "%~1"=="" GOTO :EOF
IF NOT EXIST %1 GOTO :EOF



Setlocal enabledelayedexpansion

For /R %1 %%a in (*.ogg) Do (
ffmpeg -i "%%~na.ogg" "%%~na.wav"
)
@PAUSE

