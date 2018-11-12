@echo off
net use Y: \\mainrepo\install\Office\2k13\x64 12345 /USER:nobody /PERSISTENT:no
Y:\setup.exe /adminfile Y:\main-se-install.msp
net use Y: /delete /y

