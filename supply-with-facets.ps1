# from folder: 	powershell.exe -file supply-with-facets.ps1 -folder . -facet maxim.visibility
# path: 		powershell.exe supply-with-facets.ps1 -folder . -facet public.visibility


param([string]$folder, [string]$facet)

Write-Host "Destination is: " $dest

$folders = Get-ChildItem -Recurse $folder | Where-Object {$_.PSIsContainer}

foreach($folder in $folders)
{	
	Write-Host "Processing: " $folder
	
	$dir = [io.path]::GetFileName("$folder")
	$facetVar = $("$folder/$dir/$facet")
	$folderid = $("$folder/$dir/$dir.folder-id")
	$nomedia = $("$folder/$dir/.nomedia")
	
	
	if (Test-Path -Path $facetVar) {
		Write-Host "ELement exists: " $facetVar
	} else {
		Write-Host "Creating element: " $facetVar
		New-Item $facetVar -ItemType File
	}
	
	New-Item $folderid -ItemType File
	New-Item $nomedia -ItemType File
}
