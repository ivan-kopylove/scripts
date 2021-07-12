# https://www.omgubuntu.co.uk/how-to-install-wsl2-on-windows-10
# Regardless of which version of WSL you want to use you first need to enable it. 
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart

# To enable Virtual Machine Platform on Windows 10 (2004) open PowerShell as Administrator and run:
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart

# To enable Virtual Machine Platform on Windows 10 (1903, 1909) open PowerShell as Administrator and run:
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

# Open PowerShell as Administrator and run this command to set WSL 2 as the default version of WSL:
wsl --set-default-version 2