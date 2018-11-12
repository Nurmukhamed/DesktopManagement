diskpart /s z:\config\diskpart-mbr.txt

dism /apply-image /imagefile:z:\w7prc_stage3.wim /index:1 /applydir:W:\

copy Z:\ComputerNameProductKeyOOBELocaleAutoLogonSkipOOBEFirstLogon.xml W:\windows\panther\unattend.xml

robocopy Z:\stages W:\Install\stages /MIR

bcdboot W:\windows /l ru-RU