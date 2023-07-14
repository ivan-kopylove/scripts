chcp 65001


kopia repository disconnect

kopia repository connect filesystem --path C:\1\backup\kopia
@PAUSE
kopia snapshot verify --verify-files-percent=1 --file-parallelism=2 --parallel=2
@PAUSE
kopia maintenance run --full --safety=none
kopia policy show --global
@PAUSE

kopia snapshot create C:\1\notes\notes-payload

kopia snapshot list
@PAUSE
kopia maintenance run --full --safety=none
kopia repository disconnect

@PAUSE
rclone sync C:\1\backup\kopia H:\1\backup\kopia --progress --checkers=2 --transfers=2

@PAUSE