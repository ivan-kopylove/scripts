
@echo off
chcp 65001

:loop_label


echo %~1
echo %1

IF "%~1"=="" GOTO :EOF
IF NOT EXIST %~1 GOTO :EOF



Setlocal enabledelayedexpansion

youtube-dl ^
    -v ^
    --output "%%(upload_date)s - %%(id)s - %%(title)s.%%(ext)s" ^
    --sleep-interval 10 ^
    --max-sleep-interval 15 ^
    --ignore-errors ^
    --playlist-random ^
    --write-description ^
    --write-info-json ^
    --prefer-free-formats ^
    -f bestvideo+bestaudio ^
    "%~1"

timeout 180
goto loop_label

@PAUSE