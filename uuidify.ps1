
# from folder: powershell.exe -file uuidify.ps1 -folder .
# from path: powershell.exe uuidify.ps1 -folder .

param([string]$folder)
Get-ChildItem -Recurse $folder | Where-Object {$_.PSIsContainer} | Rename-Item -NewName { "$(New-Guid)" }