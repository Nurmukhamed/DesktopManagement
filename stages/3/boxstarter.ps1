$secpasswd = ConvertTo-SecureString "vagrant" -AsPlainText -Force
$cred = New-Object System.Management.Automation.PSCredential ("vagrant", $secpasswd)

Install-BoxstarterPackage -PackageName $env:SystemDrive\Install\stages\3\package.ps1 -Credential $cred