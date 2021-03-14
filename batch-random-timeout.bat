echo %RANDOM%
set /a RAND=%RANDOM% * 20 / 32768 + 10
timeout /t %RAND%
@PAUSE