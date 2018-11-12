$MacAddress=((Get-WmiObject Win32_NetworkAdapter -Filter "AdapterType Like 'Ethernet 802.3'") | select -expand macaddress).Replace(":","")

& Z:\machines\$MacAddress\start.ps1

