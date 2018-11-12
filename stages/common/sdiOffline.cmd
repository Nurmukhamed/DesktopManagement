@echo off
net use X: \\mainrepo\sdi_rus 12345 /USER:nobody /PERSISTENT:no
X:\sdi_x64_R1806 -autoinstall -autoclose
X:\sdi_x64_R1806 -autoinstall -autoclose
X:\sdi_x64_R1806 -autoinstall -autoclose
net use X: /delete
