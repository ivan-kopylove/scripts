Get-ChildItem $(get-location) -recurse | 
  Where {-Not $_.PSIsContainer} | 
  Rename-Item -NewName {$_.FullName.ToLower()}