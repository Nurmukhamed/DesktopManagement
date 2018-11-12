
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://pki.gov.kz/images/NCALayer/NCALayer_Windows.zip'

$packageZipArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  url           = $url
  softwareName  = "NCALayer" 
  checksum      = 'f2d9d5d8eb31edcd4c315fd883d113586dd02fea172944fffb205de1f58cca5a'
  checksumType  = 'sha256'
  validExitCodes= @(0, 3010, 1641)
}

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE' #only one of these: exe, msi, msu
  softwareName  = 'ncalayer' #part or all of the Display Name as you see it in Programs and Features. It should be enough to be unique

  file          = $toolsDir + '\NCALayer_Windows\NCALayerInstall.exe'
  silentArgs    = " /VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP- `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyZipPackage @packageZipArgs
Install-ChocolateyInstallPackage @packageArgs
