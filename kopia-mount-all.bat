chcp 65001

kopia repository disconnect
kopia repository connect filesystem --path C:\1\backup\kopia

kopia snapshot verify --verify-files-percent=1 --file-parallelism=2 --parallel=2
kopia maintenance run --full --safety=none

kopia mount all K:
@PAUSE

kopia repository disconnect
@PAUSE