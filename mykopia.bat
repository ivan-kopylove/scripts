chcp 65001

echo %~1
echo %1



IF "%~1"=="" GOTO :EOF
IF NOT EXIST %~1 GOTO :EOF


kopia repository disconnect

kopia repository connect filesystem --path C:\1\backup\kopia
kopia policy show --global
@PAUSE
kopia snapshot create "%~1"
kopia snapshot list
@PAUSE
kopia snapshot verify --verify-files-percent=1 --file-parallelism=2 --parallel=2
@PAUSE
kopia maintenance run --full --safety=none
kopia repository disconnect

@PAUSE
rclone sync C:\1\backup\kopia H:\1\backup\kopia --progress --checkers=2 --transfers=2

@PAUSE