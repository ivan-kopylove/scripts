@ECHO OFF
chcp 65001

IF "%~1"=="" GOTO :EOF
IF NOT EXIST %1 GOTO :EOF
FOR /F "" %%I IN ('FIND /C /V "" ^<%1') DO SET /A lines=%%I
IF %lines%==0 GOTO :EOF
SET /A skip=(%RANDOM%*32768+%RANDOM%)%%lines
<%1 (
  FOR /L %%I IN (1,1,%skip%) DO (
    SET /P line=
  )
  SET line=
  SET /P line=
)
ECHO(%line%