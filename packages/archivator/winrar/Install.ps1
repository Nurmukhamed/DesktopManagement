Write-Host "Installing winrar"
cinst winrar -y

Write-Host "Copying registration key"
Copy-Item "C:\Install\packages\archivator\winrar\rarreg.key" -Destination "$Env:ProgramFiles\winrar\rarreg.key"