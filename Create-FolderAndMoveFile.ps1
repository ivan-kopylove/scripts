param([string]$folder)

Write-Host "folder is" $folder

$files = Get-ChildItem -Path $folder -Filter $filter

foreach($file in $files)
{
	$dir = [io.path]::GetFileNameWithoutExtension("$file")
	$dest = $("$folder\$dir")
	New-Item $dest -ItemType Directory

	Move-Item -Path $file.Fullname -Destination $dest
}

# powershell.exe -file Create-FolderAndMoveFile.ps1 -folder . -filter *.md
# powershell.exe Create-FolderAndMoveFile.ps1 -folder . -filter *.md