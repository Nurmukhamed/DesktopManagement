$joinCred = New-Object pscredential -ArgumentList ([pscustomobject]@{
    UserName = "dcjoiner"
    Password = (ConvertTo-SecureString -String '3A$BqiHM' -AsPlainText -Force)[0]
})
Add-Computer -Domain "SAMRUK.ENERGY"  -Credential $joinCred -Restart -OUPath "OU=Рабочие станции,OU=Центральный аппарат,DC=Samruk,DC=Energy"