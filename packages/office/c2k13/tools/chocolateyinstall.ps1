
$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = 'c2k13'
  fileType      = 'exe'
  file          = '\\mainrepo\install\Office\2k13\x64\setup.exe'
  silentArgs    = "/adminfile \\mainrepo\install\Office\2k13\x64\main-se-install.msp /config \\mainrepo\install\Office\2k13\x64\config.xml"
  validExitCodes= @(0)
  softwareName  = 'c2k13*'
}

Install-ChocolateyInstallPackage @packageArgs
