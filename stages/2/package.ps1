$ErrorActionPreference = "Stop"

. $env:SystemDrive\Install\stages\common\Test-Command.ps1

Enable-RemoteDesktop
netsh advfirewall firewall add rule name="Remote Desktop" dir=in localport=3389 protocol=TCP action=allow

Update-ExecutionPolicy -Policy Unrestricted

if (Test-Command -cmdname 'Uninstall-WindowsFeature') {
    Write-BoxstarterMessage "Removing unused features..."
    Remove-WindowsFeature -Name 'Powershell-ISE'
    Get-WindowsFeature | 
    ? { $_.InstallState -eq 'Available' } | 
    Uninstall-WindowsFeature -Remove
}

Install-WindowsUpdate -AcceptEula

if(Test-PendingReboot){ Invoke-Reboot }

cinst powershell
cinst chef-client

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Starting Sysprep"
Start-Process -FilePath "$env:SystemDrive\windows\system32\sysprep\sysprep.exe" -ArgumentList "/generalize /oobe /quiet /shutdown"