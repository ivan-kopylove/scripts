REM Usage example
REM youtube-dl-mp3-attempts "https://www.youtube.com/watch?v=6Qd0kmnKGOI"

@echo off
chcp 65001

echo %~1
echo %1


IF "%~1"=="" GOTO :EOF
IF NOT EXIST %~1 GOTO :EOF



Setlocal enabledelayedexpansion


FOR /L %%G IN (1,1,100) DO (
youtube-dl.exe -v --sleep-interval 10 --max-sleep-interval 15 --output "%%(title)s.%%(ext)s" --playlist-random --extract-audio --audio-format mp3 "%~1"
echo "Attempt %%G fisnished"
timeout /t 5
)


@PAUSE