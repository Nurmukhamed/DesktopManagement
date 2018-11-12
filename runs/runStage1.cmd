diskpart /s z:\config\diskpart-mbr.txt

robocopy Z:\boxstarter W:\Install\boxstarter /MIR
robocopy Z:\stages W:\Install\stages /MIR

Z:\OS\SW_DVD5_Win_Pro_7_64BIT_Russian_Full_MLF_X15-71236\setup /unattend:Z:\OS\SW_DVD5_Win_Pro_7_64BIT_Russian_Full_MLF_X15-71236\unattend.xml