function InstallBoxstarter {
    iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1'))
    cinst boxstarter -y
}