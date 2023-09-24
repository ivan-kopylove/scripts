# from folder: 	powershell.exe -file lowerNames.ps1 -folder .
# path: 		powershell.exe lowerNames.ps1 -folder .

param([string]$folder, [string]$facet)

Write-Host "Folder is: " $dest

# $items = Get-ChildItem -Recurse $folder | Where-Object { $_.PSIsContainer }
$items = Get-ChildItem            $folder | Where-Object { $_.PSIsContainer }

foreach ($item in $items)
{
    if ($item.name -eq $item.name.ToLower())
    {
        Write-Host "Processing: " $item

        $temp = $item.FullName.ToLower() + "_"
        $name = $item.FullName.ToLower()
        ren $name $temp

        ren $temp $name
    }

}