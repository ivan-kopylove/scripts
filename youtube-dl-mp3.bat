REM Usage example
REM youtube-dl-mp3 "https://www.youtube.com/watch?v=6Qd0kmnKGOI"

@echo off
chcp 65001

echo %~1
echo %1

IF "%~1"=="" GOTO :EOF
IF NOT EXIST %~1 GOTO :EOF



Setlocal enabledelayedexpansion

youtube-dl.exe -v --output "%%(title)s.%%(ext)s" --playlist-random --extract-audio --audio-format mp3 "%~1"

@PAUSE