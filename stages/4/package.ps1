$ErrorActionPreference = "Stop"

. $env:SystemDrive\Install\stages\common\Test-Command.ps1

Write-Host "Starting Snappy Driver, first step"
Start-Process -FilePath "$env:SystemDrive\Install\stages\common\snappy.cmd" -NoNewWindow -Wait
if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Starting Snappy Driver, second step"
Start-Process -FilePath "$env:SystemDrive\Install\stages\common\snappy.cmd" -NoNewWindow -Wait
if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Starting Snappy Driver, third step"
Start-Process -FilePath "$env:SystemDrive\Install\stages\common\snappy.cmd" -NoNewWindow -Wait
if(Test-PendingReboot){ Invoke-Reboot }

Write-Host "Adding Computer to Domain"
& C:\Install\stages\4\domainjoin.ps1

