. $env:SystemDrive\Install\stages\common\bootstrapper.ps1

Get-Boxstarter -Force

Import-Module $env:ProgramData\boxstarter\boxstarter.chocolatey\boxstarter.chocolatey.psd1

$secpasswd = ConvertTo-SecureString "vagrant" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("vagrant", $secpasswd)

Install-BoxstarterPackage -PackageName $env:SystemDrive\Install\stages\2\package.ps1 -Credential $cred