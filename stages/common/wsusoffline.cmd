@echo off
net use Y: \\mainrepo\wsusoffline\client 12345 /USER:nobody /PERSISTENT:no
y:
cd cmd
call DoUpdate.cmd /nobackup /updatecerts /instdotnet35 /instpsh /instdotnet4 /instwmf 
shutdown -r -t 30
