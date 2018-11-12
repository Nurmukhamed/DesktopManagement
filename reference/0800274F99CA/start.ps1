$OSVersion = "Win7_Pro_SP1_Russian_COEM_x64"
$MacAddress=((Get-WmiObject Win32_NetworkAdapter -Filter "AdapterType Like 'Ethernet 802.3'") | select -expand macaddress).Replace(":","")

Start-Process -FilePath "diskpart" -ArgumentList "/s z:\diskpart\diskpart-mbr.txt" -NoNewWindow -Wait

Write-Host "Creating folder W:\Install"
New-Item -ItemType Directory -Path W:\Install

Write-Host "Copying OS Installer to W:\Install\OS"
Start-Process -FilePath "robocopy" -ArgumentList "Z:\OS\$OSVersion", "W:\Install\OS", "/MIR" -NoNewWindow -Wait

Write-Host "Copying unattended file to W:\Install\OS\"
Copy-Item  "Z:\machines\$MacAddress\Autounattend.xml" -Destination "W:\Install\OS\Autounattend.xml"
Copy-Item  "Z:\machines\$MacAddress\postunattend.xml" -Destination "W:\Install\OS\postunattend.xml"

Write-Host "Copying Zabbix agent to W:\Install"

Write-Host "Copying FusionInventory agent to W:\Install"

Write-Host "Copying Security agent to W:\Install"

Write-Host "Creating stages script folder at W:\Install\"
New-Item -ItemType Directory -Path "W:\Install\stages"
New-Item -ItemType Directory -Path "W:\Install\stages\common"
New-Item -ItemType Directory -Path "W:\Install\stages\1"
New-Item -ItemType Directory -Path "W:\Install\stages\2"
New-Item -ItemType Directory -Path "W:\Install\stages\3"
New-Item -ItemType Directory -Path "W:\Install\stages\4"

Write-Host "Copying stage common files"
Copy-Item "Z:\stages\common\after-reboot.ps1" -Destination "W:\Install\stages\common\after-reboot.ps1"
Copy-Item "Z:\stages\common\cleanup.ps1" -Destination "W:\Install\stages\common\cleanup.ps1"
Copy-Item "Z:\stages\common\Test-Command.ps1" -Destination "W:\Install\stages\common\Test-Command.ps1"
Copy-Item "Z:\stages\common\windows-updates.ps1" -Destination "W:\Install\stages\common\windows-updates.ps1"
Copy-Item "Z:\stages\common\winrm.ps1" -Destination "W:\Install\stages\common\winrm.ps1"
Copy-Item "Z:\stages\common\bootstrapper.ps1" -Destination "W:\Install\stages\common\bootstrapper.ps1"

Write-Host "Copying stage 1 files"
Copy-Item "Z:\stages\1\boxstarter.ps1" -Destination "W:\Install\stages\1\boxstarter.ps1"
Copy-Item "Z:\stages\1\package.ps1" -Destination "W:\Install\stages\1\package.ps1"

Write-Host "Copying stage 2 files"
Copy-Item "Z:\stages\2\boxstarter.ps1" -Destination "W:\Install\stages\2\boxstarter.ps1"
Copy-Item "Z:\stages\2\package.ps1" -Destination "W:\Install\stages\2\package.ps1"
Copy-Item "Z:\stages\2\boxstarter.cmd" -Destination "W:\Install\stages\2\boxstarter.cmd"

Write-Host "Installing OS to Computer"
Start-Process -FilePath "W:\Install\OS\setup.exe" -ArgumentList "/unattend:W:\Install\OS\Autounattend.xml"