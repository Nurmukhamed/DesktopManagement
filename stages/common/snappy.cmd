@echo off
net use Y: \\mainrepo\install\SDI_RUS 12345 /USER:nobody /PERSISTENT:no
y:
call sdi_x64_R1806 -autoinstall -autoclose -nogui
