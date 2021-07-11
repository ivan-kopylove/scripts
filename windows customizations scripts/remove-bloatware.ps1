# https://github.com/Sycnex/Windows10Debloater



Get-AppxPackage *windowscommunicationsapps* | Remove-AppxPackage
Get-AppxPackage *zunemusic* | Remove-AppxPackage
Get-AppxPackage *solitairecollection* | Remove-AppxPackage
Get-AppxPackage *onenote* | Remove-AppxPackage
Get-AppxPackage *windowsphone* | Remove-AppxPackage
Get-AppxPackage *bingweather* | Remove-AppxPackage
Get-AppxPackage *xboxapp* | Remove-AppxPackage
Get-appxpackage -allusers *Todos* | Remove-AppxPackage -allusers
Get-appxpackage -allusers *Microsoft.Whiteboard* | Remove-AppxPackage -allusers
Get-appxpackage -allusers *Microsoft.MixedReality.Portal* | Remove-AppxPackage -allusers
Get-appxpackage -allusers *Microsoft.ZuneVideo* | Remove-AppxPackage -allusers
Get-appxpackage -allusers *Netflix* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Netflix*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Microsoft.MicrosoftOfficeHub* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.MicrosoftOfficeHub*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Microsoft.BingNews* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.BingNews*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Microsoft.MicrosoftSolitaireCollection* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.MicrosoftSolitaireCollection*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *CommsPhone* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*CommsPhone*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Microsoft.MSPaint* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.MSPaint*'} | remove-appxprovisionedpackage –online
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.ScreenSketch*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Microsoft.ScreenSketch* | Remove-AppxPackage -allusers
Get-appxpackage -allusers *Microsoft.Getstarted* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Microsoft.Getstarted*'} | remove-appxprovisionedpackage –online
Get-appxpackage -allusers *Twitter* | Remove-AppxPackage -allusers
Get-appxprovisionedpackage –online | where-object {$_.packagename –like '*Twitter*'} | remove-appxprovisionedpackage –online


# Create this registry key with PowerShell code below which should stop the suggested apps on the start menu:
If ('HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager')
{
    $Suggestions = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager'
    Set-ItemProperty $Suggestions -Name SystemPaneSuggestionsEnabled -Value 0 Verbose
}
            

[Console]::ReadKey()