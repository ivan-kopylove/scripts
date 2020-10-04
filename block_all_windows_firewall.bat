@ setlocal enableextensions 
REM @ cd /d "%~dp0"

for /R %%a in (*.exe) do (

netsh advfirewall firewall add rule name="%%~nxa: blocked ins with Batchfile" dir=in program="%%a" action=block
netsh advfirewall firewall add rule name="%%~nxa: blocked outs with Batchfile" dir=out program="%%a" action=block

)

@PAUSE