$ErrorActionPreference = "Stop"

. $env:SystemDrive\Install\stages\common\Test-Command.ps1

Install-WindowsUpdate -AcceptEula

if(Test-PendingReboot){ Invoke-Reboot }

$OSVersion = [Environment]::OSVersion.Version.ToString()

if ($OSVersion -match "^6.1") {
    Write-Host "Skip Windows Apps remove"
} else {
    Write-Host "Remove Windows Apps from 8.1 and 10"
    & $env:SystemDrive\Install\stages\common\RemoveAppx.ps1
    
}

Write-Host 'Installing Archivators'
& $env:SystemDrive\Install\packages\archivator\7zip\Install.ps1
& $env:SystemDrive\Install\packages\archivator\winrar\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Installing Internet Browsers"
& $env:SystemDrive\Install\packages\browser\chrome\Install.ps1
& $env:SystemDrive\Install\packages\browser\firefox\Install.ps1
& $env:SystemDrive\Install\packages\browser\edge\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Installing Graphical Software"
& $env:SystemDrive\Install\packages\graph\paint.net\Install.ps1
& $env:SystemDrive\Install\packages\graph\inkscape\Install.ps1
& $env:SystemDrive\Install\packages\graph\gimp\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Installing Media Software"
& $env:SystemDrive\Install\packages\media\aimp\Install.ps1
& $env:SystemDrive\Install\packages\media\mpc-hc\Install.ps1
& $env:SystemDrive\Install\packages\media\vlc\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Installing Office Software"
& $env:SystemDrive\Install\packages\office\adobereader\Install.ps1
& $env:SystemDrive\Install\packages\office\libreoffice\Install.ps1
& $env:SystemDrive\Install\packages\office\c2k13\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Installing Utility Software"
& $env:SystemDrive\Install\packages\utility\bareos\Install.ps1
& $env:SystemDrive\Install\packages\utility\jre\Install.ps1
& $env:SystemDrive\Install\packages\utility\lightshot\Install.ps1
& $env:SystemDrive\Install\packages\utility\notepadplusplus\Install.ps1
& $env:SystemDrive\Install\packages\utility\vcredist\Install.ps1
& $env:SystemDrive\Install\packages\utility\ncalayer\Install.ps1

if(Test-PendingReboot){ Invoke-Reboot }

Remove-Item "$env:SystemDrive\Users\Public\Desktop\*.lnk"  

Write-Host "Starting Sysprep"
Start-Process -FilePath "$env:SystemDrive\windows\system32\sysprep\sysprep.exe" -ArgumentList "/generalize /oobe /quiet /shutdown"